module main
import vopengl

// settings
const screen_width = 800
const screen_height = 600

// methods

fn framebuffer_size_callback(window &vopengl.GLFWwindow, width int, height int)
{
	vopengl.glViewport(0, 0, width, height)
}

fn process_input(window &vopengl.C.GLFWwindow)
{
	if vopengl.C.glfwGetKey(window, vopengl.glfw_key_escape) == vopengl.glfw_press {
		vopengl.C.glfwSetWindowShouldClose(window, true)
	}
}

fn read_file(file string) {
	mut f := os.read_lines(file) or { panic(err) }

	mut src_raw := ""
	for line in f {
		src_raw += line.str().trim_space()
	}
	return src_raw
}

fn main() {
	vopengl.C.glfwInit()
	vopengl.C.glfwWindowHint(vopengl.glfw_context_version_major, 3)
	vopengl.C.glfwWindowHint(vopengl.glfw_context_version_minor, 3)
	vopengl.C.glfwWindowHint(vopengl.glfw_opengl_profile, vopengl.glfw_opengl_core_profile)

	$if mac {
		vopengl.C.glfwWindowHint(vopengl.glfw_opengl_forward_compat, vopengl.gl_true)
	}

	mut window := vopengl.C.glfwCreateWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "LearnOpenGL", 0, 0)

	if window == unsafe { nil }
	{
		eprintln("Failed to create GLFW window")
		vopengl.C.glfwTerminate()
		exit(-1)
	}

	vopengl.C.glfwMakeContextCurrent(window)
	vopengl.C.glfwSetFramebufferSizeCallback(window, framebuffer_size_callback)


	if !vopengl.C.gladLoadGLLoader(vopengl.GLADloadproc(vopengl.C.glfwGetProcAddress))
	{
		eprintln("Failed to init GLAD")
		exit(-1)
	}

	// Rendering variables
	vertices := [
		-0.5, -0.5, 0.0,
        0.5, -0.5, 0.0,
		0.0,  0.5, 0.0
	]

	// triangle stuff

	mut VAO := u32(0)
	vopengl.C.glGenVertexArrays(1, &VAO)

	vopengl.C.glBindVertexArray(VAO)


	mut VBO := u32(0)

	vopengl.C.glGenBuffers(1, &VBO)
	vopengl.C.glBindBuffer(vopengl.gl_array_buffer, VBO)
	vopengl.C.glBufferData(vopengl.gl_array_buffer, sizeof(vertices), vertices, vopengl.gl_static_draw)

	// Vertex
	vertexShaderSource := readFile("shader.vs")

	mut vertexShader := u32(0)
	vertexShader = vopengl.C.glCreateShader(vopengl.gl_vertex_shader)

	vopengl.C.glShaderSource(vertexShader, 1, &vertexShaderSource, 0)
	vopengl.C.glCompileShader(vertexShader)

	///////////////////////////

	mut success := u32(0)
	mut infoLog := []char{len:512}
	vopengl.C.glGetShaderiv(vertexShader, vopengl.gl_compile_status, &success)

	if !success == 1
	{
		vopengl.C.glGetShaderInfoLog(vertexShader, 512, 0, infoLog)
		eprintln("ERROR::SHADER::VERTEX::COMPILATION_FAILED\n${unsafe { cstring_to_vstring(infoLog)}}")
		exit(1)
	}

	///////////////////////////

	// Fragment


	fragmentShaderSource := readFile("shader.fs")

	mut fragmentShader := u32(0)
	fragmentShader = vopengl.C.glCreateShader(gl_fragment_shader)
	vopengl.C.glShaderSource(fragmentShader, 1, &fragmentShaderSource, 0)
	vopengl.C.glCompileShader(fragmentShader)

	mut shaderProgram := u32(0)
	shaderProgram = vopengl.C.glCreateProgram()

	vopengl.C.glAttachShader(shaderProgram, vertexShader)
	vopengl.C.glAttachShader(shaderProgram, fragmentShader)
	vopengl.C.glLinkProgram(shaderProgram)


	vopengl.C.glGetProgramiv(shaderProgram, GL_LINK_STATUS, &success)
	if !success {
		vopengl.C.glGetProgramInfoLog(shaderProgram, 512, 0, infoLog)
		eprintln("ERROR::SHADER::PROGRAM::LINKING::FAILED\n${unsafe { cstring_to_vstring(infoLog)}}")
		exit(1)
	}

	// Linking shaders to vertexes, pasting them with glue

	vopengl.C.glVertexAttribPointer(0, 3, vopengl.gl_float, vopengl.gl_false, 3 * sizeof(f32), voidptr)
	vopengl.C.glEnableVertexAttribArray(0)

	vopengl.C.glDeleteShader(vertexShader)
	vopengl.C.glDeleteShader(fragmentShader)

	vopengl.C.glBindVertexArray(0)

	for !vopengl.C.glfwWindowShouldClose(window)
	{
		// Input stuff here:
		processInput(window)


		// Rendering stuff here:
		vopengl.C.glClearColor(0.39, 0.58, 0.92, 1.0)
		vopengl.C.glClear(gl_color_buffer_bit)

		// THE TRIANGLE!!!

		vopengl.C.glUseProgram(shaderProgram)
		vopengl.C.glBindVertexArray(VAO)

		vopengl.C.glDrawArrays(GL_TRIANGLES, 0, 3)

		vopengl.C.glBindVertexArray(0)

		// Update stuff here:
		vopengl.C.glfwSwapBuffers(window)
		vopengl.C.glfwPollEvents()
	}

	vopengl.C.glDeleteVertexArrays(1, &VAO)
    vopengl.C.glDeleteBuffers(1, &VBO)
    vopengl.C.glDeleteProgram(shaderProgram)

	vopengl.C.glfwTerminate()

}


