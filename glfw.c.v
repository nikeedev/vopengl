module vopengl

#flag -Llib/libglfw3.a
#include "glfw/glfw3.h"

pub const (
	glfw_true = 1

	glfw_false = 0

	glfw_release = 0

	glfw_press = 1

	glfw_repeat = 2

	glfw_hat_centered = 0

	glfw_hat_up = 1

	glfw_hat_right = 2

	glfw_hat_down = 4

	glfw_hat_left = 8

	glfw_hat_right_up = (glfw_hat_right | glfw_hat_up)

	glfw_hat_right_down = (glfw_hat_right | glfw_hat_down)

	glfw_hat_left_up = (glfw_hat_left | glfw_hat_up)

	glfw_hat_left_down = (glfw_hat_left | glfw_hat_down)

	glfw_key_unknown = -1

	// printable keys
	glfw_key_space = 32

	glfw_key_apostrophe = 39

	glfw_key_comma = 44

	glfw_key_minus = 45

	glfw_key_period = 46

	glfw_key_slash = 47

	glfw_key_0 = 48

	glfw_key_1 = 49

	glfw_key_2 = 50

	glfw_key_3 = 51

	glfw_key_4 = 52

	glfw_key_5 = 53

	glfw_key_6 = 54

	glfw_key_7 = 55

	glfw_key_8 = 56

	glfw_key_9 = 57

	glfw_key_semicolon = 59

	glfw_key_equal = 61

	glfw_key_a = 65

	glfw_key_b = 66

	glfw_key_c = 67

	glfw_key_d = 68

	glfw_key_e = 69

	glfw_key_f = 70

	glfw_key_g = 71

	glfw_key_h = 72

	glfw_key_i = 73

	glfw_key_j = 74

	glfw_key_k = 75

	glfw_key_l = 76

	glfw_key_m = 77

	glfw_key_n = 78

	glfw_key_o = 79

	glfw_key_p = 80

	glfw_key_q = 81

	glfw_key_r = 82

	glfw_key_s = 83

	glfw_key_t = 84

	glfw_key_u = 85

	glfw_key_v = 86

	glfw_key_w = 87

	glfw_key_x = 88

	glfw_key_y = 89

	glfw_key_z = 90

	glfw_key_left_bracket = 91 // [

	glfw_key_backslash = 92 // \

	glfw_key_right_bracket = 93 // ]

	glfw_key_grave_accent = 96 // `

	glfw_key_world_1 = 161 // non-us #1

	glfw_key_world_2 = 162 // non-us #2

	// function keys
	glfw_key_escape = 256

	glfw_key_enter = 257

	glfw_key_tab = 258

	glfw_key_backspace = 259

	glfw_key_insert = 260

	glfw_key_delete = 261

	glfw_key_right = 262

	glfw_key_left = 263

	glfw_key_down = 264

	glfw_key_up = 265

	glfw_key_page_up = 266

	glfw_key_page_down = 267

	glfw_key_home = 268

	glfw_key_end = 269

	glfw_key_caps_lock = 280

	glfw_key_scroll_lock = 281

	glfw_key_num_lock = 282

	glfw_key_print_screen = 283

	glfw_key_pause = 284

	glfw_key_f1 = 290

	glfw_key_f2 = 291

	glfw_key_f3 = 292

	glfw_key_f4 = 293

	glfw_key_f5 = 294

	glfw_key_f6 = 295

	glfw_key_f7 = 296

	glfw_key_f8 = 297

	glfw_key_f9 = 298

	glfw_key_f10 = 299

	glfw_key_f11 = 300

	glfw_key_f12 = 301

	glfw_key_f13 = 302

	glfw_key_f14 = 303

	glfw_key_f15 = 304

	glfw_key_f16 = 305

	glfw_key_f17 = 306

	glfw_key_f18 = 307

	glfw_key_f19 = 308

	glfw_key_f20 = 309

	glfw_key_f21 = 310

	glfw_key_f22 = 311

	glfw_key_f23 = 312

	glfw_key_f24 = 313

	glfw_key_f25 = 314

	glfw_key_kp_0 = 320

	glfw_key_kp_1 = 321

	glfw_key_kp_2 = 322

	glfw_key_kp_3 = 323

	glfw_key_kp_4 = 324

	glfw_key_kp_5 = 325

	glfw_key_kp_6 = 326

	glfw_key_kp_7 = 327

	glfw_key_kp_8 = 328

	glfw_key_kp_9 = 329

	glfw_key_kp_decimal = 330

	glfw_key_kp_divide = 331

	glfw_key_kp_multiply = 332

	glfw_key_kp_subtract = 333

	glfw_key_kp_add = 334

	glfw_key_kp_enter = 335

	glfw_key_kp_equal = 336

	glfw_key_left_shift = 340

	glfw_key_left_control = 341

	glfw_key_left_alt = 342

	glfw_key_left_super = 343

	glfw_key_right_shift = 344

	glfw_key_right_control = 345

	glfw_key_right_alt = 346

	glfw_key_right_super = 347

	glfw_key_menu = 348

	glfw_key_last = glfw_key_menu

	glfw_mouse_button_1 = 0

	glfw_mouse_button_2 = 1

	glfw_mouse_button_3 = 2

	glfw_mouse_button_4 = 3

	glfw_mouse_button_5 = 4

	glfw_mouse_button_6 = 5

	glfw_mouse_button_7 = 6

	glfw_mouse_button_8 = 7

	glfw_mouse_button_last = glfw_mouse_button_8

	glfw_mouse_button_left = glfw_mouse_button_1

	glfw_mouse_button_right = glfw_mouse_button_2

	glfw_mouse_button_middle = glfw_mouse_button_3

	glfw_joystick_1 = 0

	glfw_joystick_2 = 1

	glfw_joystick_3 = 2

	glfw_joystick_4 = 3

	glfw_joystick_5 = 4

	glfw_joystick_6 = 5

	glfw_joystick_7 = 6

	glfw_joystick_8 = 7

	glfw_joystick_9 = 8

	glfw_joystick_10 = 9

	glfw_joystick_11 = 10

	glfw_joystick_12 = 11

	glfw_joystick_13 = 12

	glfw_joystick_14 = 13

	glfw_joystick_15 = 14

	glfw_joystick_16 = 15

	glfw_joystick_last = glfw_joystick_16

	glfw_gamepad_button_a = 0

	glfw_gamepad_button_b = 1

	glfw_gamepad_button_x = 2

	glfw_gamepad_button_y = 3

	glfw_gamepad_button_left_bumper = 4

	glfw_gamepad_button_right_bumper = 5

	glfw_gamepad_button_back = 6

	glfw_gamepad_button_start = 7

	glfw_gamepad_button_guide = 8

	glfw_gamepad_button_left_thumb = 9

	glfw_gamepad_button_right_thumb = 10

	glfw_gamepad_button_dpad_up = 11

	glfw_gamepad_button_dpad_right = 12

	glfw_gamepad_button_dpad_down = 13

	glfw_gamepad_button_dpad_left = 14

	glfw_gamepad_button_last = glfw_gamepad_button_dpad_left

	glfw_gamepad_button_cross = glfw_gamepad_button_a

	glfw_gamepad_button_circle = glfw_gamepad_button_b

	glfw_gamepad_button_square = glfw_gamepad_button_x

	glfw_gamepad_button_triangle = glfw_gamepad_button_y

	glfw_gamepad_axis_left_x = 0

	glfw_gamepad_axis_left_y = 1

	glfw_gamepad_axis_right_x = 2

	glfw_gamepad_axis_right_y = 3

	glfw_gamepad_axis_left_trigger = 4

	glfw_gamepad_axis_right_trigger = 5

	glfw_gamepad_axis_last = glfw_gamepad_axis_right_trigger

	glfw_focused = 0x00020001

	glfw_iconified = 0x00020002

	glfw_resizable = 0x00020003

	glfw_visible = 0x00020004

	glfw_decorated = 0x00020005

	glfw_auto_iconify = 0x00020006

	glfw_floating = 0x00020007

	glfw_maximized = 0x00020008

	glfw_center_cursor = 0x00020009

	glfw_transparent_framebuffer = 0x0002000a

	glfw_hovered = 0x0002000b

	glfw_focus_on_show = 0x0002000c

	glfw_samples = 0x0002100d

	glfw_srgb_capable = 0x0002100e

	glfw_refresh_rate = 0x0002100f

	glfw_doublebuffer = 0x00021010

	glfw_client_api = 0x00022001

	glfw_context_version_major = 0x00022002

	glfw_context_version_minor = 0x00022003

	glfw_context_revision = 0x00022004

	glfw_context_robustness = 0x00022005

	glfw_opengl_forward_compat = 0x00022006

	glfw_opengl_debug_context = 0x00022007

	glfw_opengl_profile = 0x00022008

	glfw_context_release_behavior = 0x00022009

	glfw_context_no_error = 0x0002200a

	glfw_context_creation_api = 0x0002200b

	glfw_scale_to_monitor = 0x0002200c

	glfw_cocoa_retina_framebuffer = 0x00023001

	glfw_cocoa_frame_name = 0x00023002

	glfw_cocoa_graphics_switching = 0x00023003

	glfw_x11_class_name = 0x00024001

	glfw_x11_instance_name = 0x00024002

	glfw_no_api = 0

	glfw_opengl_api = 0x00030001

	glfw_opengl_es_api = 0x00030002

	glfw_no_robustness = 0

	glfw_no_reset_notification = 0x00031001

	glfw_lose_context_on_reset = 0x00031002

	glfw_opengl_any_profile = 0

	glfw_opengl_core_profile = 0x00032001

	glfw_opengl_compat_profile = 0x00032002

	glfw_cursor = 0x00033001

	glfw_sticky_keys = 0x00033002

	glfw_sticky_mouse_buttons = 0x00033003

	glfw_lock_key_mods = 0x00033004

	glfw_raw_mouse_motion = 0x00033005

	glfw_cursor_normal = 0x00034001

	glfw_cursor_hidden = 0x00034002

	glfw_cursor_disabled = 0x00034003

	glfw_any_release_behavior = 0

	glfw_release_behavior_flush = 0x00035001

	glfw_release_behavior_none = 0x00035002

	glfw_native_context_api = 0x00036001

	glfw_egl_context_api = 0x00036002

	glfw_osmesa_context_api = 0x00036003

	glfw_arrow_cursor = 0x00036001

	glfw_ibeam_cursor = 0x00036002

	glfw_crosshair_cursor = 0x00036003

	glfw_hand_cursor = 0x00036004

	glfw_hresize_cursor = 0x00036005

	glfw_vresize_cursor = 0x00036006

	glfw_connected = 0x00040001

	glfw_disconnected = 0x00040002

	glfw_joystick_hat_buttons = 0x00050001

	glfw_cocoa_chdir_resources = 0x00051001

	glfw_cocoa_menubar = 0x00051002

	glfw_dont_care = -1
)
// api types

[typedef]
struct C.GLFWmonitor {
}
pub type Monitor = C.GLFWmonitor

[typedef]
struct C.GLFWwindow {
}
pub type Window = C.GLFWwindow

[typedef]
struct C.GLFWcursor {
}
pub type Cursor = C.GLFWcursor


pub type GLFWerrorfun = fn (error_code int, description &char)
pub type GLFWcursorposfun = fn (window &C.GLFWwindow, xpos f64, ypos f64)
pub type GLFWframebuffersizefun = fn (window &C.GLFWwindow, width int, height int) voidptr
pub type GLFWglproc = fn (voidptr) voidptr

pub struct GLFWvidmode {
	// The width, in screen coordinates, of the video mode.
	//
	width int
	// The height, in screen coordinates, of the video mode.
	//
	height int
	// The bit depth of the red channel of the video mode.
	//
	redBits int
	// The bit depth of the green channel of the video mode.
	//
	greenBits int
	// The bit depth of the blue channel of the video mode.
	//
	blueBits int
	// The refresh rate, in Hz, of the video mode.
	//
	refreshRate int
}

pub struct GLFWgammaramp {
	// An array of value describing the response of the red channel.
	//
	red &u16
	// An array of value describing the response of the green channel.
	//
	green &u16
	// An array of value describing the response of the blue channel.
	//
	blue &u16
	// The number of elements in each array.
	//
	size u8
}

pub struct GLFWimage {
	//* The width, in pixels, of this image.
	//
	width int
	//* The height, in pixels, of this image.
	//
	height int
	//* The pixel data of this image, arranged left-to-right, top-to-bottom.
	//
	pixels &u8
}

struct GLFWgamepadstate {
	// * The states of each [gamepad button](@ref gamepad_buttons), `GLFW_PRESS`
	// *  or `GLFW_RELEASE`.
	//
	buttons [15]u8
	// * The states of each [gamepad axis](@ref gamepad_axes), in the range -1.0
	// * to 1.0 inclusive.
	//
	axes [6]f32
}

// GLFW API functions

fn C.glfwInit() int
pub fn glfwInit() int {
	return C.glfwInit()
}

fn C.glfwTerminate() voidptr
pub fn glfwTerminate() {
	C.glfwTerminate()
}

fn C.glfwInitHint(hint int, value int)
pub fn glfwInitHint(hint int, value int) {
	C.glfwInitHint(hint, value)
}

fn C.glfwGetVersion(major &int, minor &int, rev &int) &char
pub fn glfwGetVersion(major &int, minor &int, rev &int) string {
	return cstring_to_vstring(C.glfwGetVersion(major, minor, rev))
}

fn C.glfwGetError(description &&char) int
pub fn glfwGetError(description string) int {
	return C.glfwGetError(&description.bytes())
}

fn C.glfwSetErrorCallback(callback GLFWerrorfun) GLFWerrorfun
pub fn glfwSetErrorCallback(callback GLFWerrorfun) GLFWerrorfun {
	return callback
}

fn C.glfwGetMonitors(count &int) &&Monitor
pub fn glfwGetMonitors(count &int) []&Monitor {
	return &C.gfwGetMonitors(&count)
}

fn C.glfwGetPrimaryMonitor(voidptr) &Monitor
pub fn glfwGetPrimaryMonitor() &Monitor {
	return &C.glfwGetPrimaryMonitor()
}

fn C.glfwGetMonitorPos(monitor &Monitor, xpos &int, ypos &int)
pub fn glfwGetMonitorPos(monitor &Monitor, xpos &int, ypos &int) {
	C.glfwGetMonitorPos(monitor, &xpos, &ypos)
}

fn C.glfwGetMonitorName(monitor &Monitor) &char
pub fn glfwGetMonitorName(monitor &Monitor) string {
	return cstring_to_vstring(C.glfwGetMonitorName(&monitor))
}

fn C.glfwGetVideoModes(monitor &Monitor, count int) GLFWvidmode
pub fn glfwGetVideoModes(monitor &Monitor, count int) GLFWvidmode {
	return C.glfwGetVideoModes(&monitor, count)
}

fn C.glfwWindowHint(hint int, value int)
pub fn glfwWindowHint(hint int, value int) {
	C.glfwWindowHint(hint, value)
}

fn C.glfwCreateWindow(width int, height int, title &char, monitor &C.GLFWmonitor, share &C.GLFWwindow) &C.GLFWwindow
pub fn glfwCreateWindow(width int, height int, title &char, monitor Monitor, share Window) Window{
	return C.glfwCreateWindow(width, height, )
}

fn C.glfwDestroyWindow(window &C.GLFWwindow) voidptr

fn C.glfwWindowShouldClose(window &C.GLFWwindow) int

fn C.glfwSetWindowShouldClose(window &C.GLFWwindow, value int) int

fn C.glfwSetWindowTitle(window &C.GLFWwindow, title &char) voidptr

fn C.glfwSetWindowIcon(window &C.GLFWwindow, count int, images &C.GLFWimage) voidptr

fn C.glfwGetWindowPos(window &C.GLFWwindow, xpos &int, ypos &int) voidptr

fn C.glfwSetWindowPos(window &C.GLFWwindow, xpos int, ypos int) voidptr

fn C.glfwGetWindowSize(window &C.GLFWwindow, width &int, height &int) voidptr

fn C.glfwSetWindowSizeLimits(window &C.GLFWwindow, minwidth int, minheight int, maxwidth int, maxheight int) voidptr

fn C.glfwSetWindowAspectRatio(window &C.GLFWwindow, numer int, denom int) voidptr

fn C.glfwSetWindowSize(window &C.GLFWwindow, width int, height int) voidptr

fn C.glfwGetFramebufferSize(window &C.GLFWwindow, width &int, height &int) voidptr

fn C.glfwGetWindowFrameSize(window &C.GLFWwindow, left &int, top &int, right &int, bottom &int) voidptr

fn C.glfwGetWindowContentScale(window &C.GLFWwindow, xscale &f64, yscale &32) voidptr

fn C.glfwGetWindowOpacity(window &C.GLFWwindow) f32

fn C.glfwSetWindowOpacity(window &C.GLFWwindow, opacity f64) voidptr

fn C.glfwIconifyWindow(window &C.GLFWwindow) voidptr

fn C.glfwRestoreWindow(window &C.GLFWwindow) voidptr

fn C.glfwMaximizeWindow(window &C.GLFWwindow) voidptr

fn C.glfwShowWindow(window &C.GLFWwindow) voidptr

fn C.glfwHideWindow(window &C.GLFWwindow) voidptr

fn C.glfwFocusWindow(window &C.GLFWwindow) voidptr

fn C.glfwRequestWindowAttention(window &C.GLFWwindow) voidptr

fn C.glfwGetWindowMonitor(window &C.GLFWwindow) &C.GLFWmonitor

fn C.glfwSetWindowMonitor(window &C.GLFWwindow, monitor &C.GLFWmonitor, xpos int, ypos int, width int, height int, refreshRate int) voidptr

fn C.glfwGetWindowAttrib(window &C.GLFWwindow, attrib int) int

fn C.glfwSetWindowAttrib(window &C.GLFWwindow, attrib int, value int) voidptr

fn C.glfwPollEvents(voidptr) voidptr

fn C.glfwWaitEvents(voidptr) voidptr

fn C.glfwWaitEventsTimeout(timeout f64) voidptr

fn C.glfwPostEmptyEvent(voidptr) voidptr

fn C.glfwGetInputMode(window &C.GLFWwindow, mode int) int

fn C.glfwSetInputMode(window &C.GLFWwindow, mode int, value int) voidptr

fn C.glfwRawMouseMotionSupported(voidptr) int

fn C.glfwGetKeyName(key int, scancode int) &char

fn C.glfwGetKeyScancode(key int) int

fn C.glfwGetKey(window &C.GLFWwindow, key int) int

fn C.glfwGetMouseButton(window &C.GLFWwindow, button int) int

fn C.glfwGetCursorPos(window &C.GLFWwindow, xpos &f64, ypos &f64) voidptr

fn C.glfwMakeContextCurrent(window &C.GLFWwindow) voidptr

fn C.glfwGetCurrentContext(voidptr) &C.GLFWwindow

fn C.glfwSwapBuffers(window &C.GLFWwindow) voidptr

fn C.glfwSetFramebufferSizeCallback(window &C.GLFWwindow, callback GLFWframebuffersizefun) GLFWframebuffersizefun

fn C.glfwGetProcAddress(procname &char) GLFWglproc
