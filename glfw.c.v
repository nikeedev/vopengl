module vopengl

#flag -Lvendor/lib/libglfw3.a
#include "glfw/glfw3.h"

pub const glfw_true = 1

pub const glfw_false = 0

pub const glfw_release = 0

pub const glfw_press = 1

pub const glfw_repeat = 2

pub const glfw_hat_centered = 0

pub const glfw_hat_up = 1

pub const glfw_hat_right = 2

pub const glfw_hat_down = 4

pub const glfw_hat_left = 8

pub const glfw_hat_right_up = (glfw_hat_right | glfw_hat_up)

pub const glfw_hat_right_down = (glfw_hat_right | glfw_hat_down)

pub const glfw_hat_left_up = (glfw_hat_left | glfw_hat_up)

pub const glfw_hat_left_down = (glfw_hat_left | glfw_hat_down)

pub const glfw_key_unknown = -1

// printable keys
pub const glfw_key_space = 32

pub const glfw_key_apostrophe = 39

pub const glfw_key_comma = 44

pub const glfw_key_minus = 45

pub const glfw_key_period = 46

pub const glfw_key_slash = 47

pub const glfw_key_0 = 48

pub const glfw_key_1 = 49

pub const glfw_key_2 = 50

pub const glfw_key_3 = 51

pub const glfw_key_4 = 52

pub const glfw_key_5 = 53

pub const glfw_key_6 = 54

pub const glfw_key_7 = 55

pub const glfw_key_8 = 56

pub const glfw_key_9 = 57

pub const glfw_key_semicolon = 59

pub const glfw_key_equal = 61

pub const glfw_key_a = 65

pub const glfw_key_b = 66

pub const glfw_key_c = 67

pub const glfw_key_d = 68

pub const glfw_key_e = 69

pub const glfw_key_f = 70

pub const glfw_key_g = 71

pub const glfw_key_h = 72

pub const glfw_key_i = 73

pub const glfw_key_j = 74

pub const glfw_key_k = 75

pub const glfw_key_l = 76

pub const glfw_key_m = 77

pub const glfw_key_n = 78

pub const glfw_key_o = 79

pub const glfw_key_p = 80

pub const glfw_key_q = 81

pub const glfw_key_r = 82

pub const glfw_key_s = 83

pub const glfw_key_t = 84

pub const glfw_key_u = 85

pub const glfw_key_v = 86

pub const glfw_key_w = 87

pub const glfw_key_x = 88

pub const glfw_key_y = 89

pub const glfw_key_z = 90

pub const glfw_key_left_bracket = 91 // [

pub const glfw_key_backslash = 92 // \

pub const glfw_key_right_bracket = 93 // ]

pub const glfw_key_grave_accent = 96 // `

pub const glfw_key_world_1 = 161 // non-us #1

pub const glfw_key_world_2 = 162 // non-us #2

// function keys
pub const glfw_key_escape = 256

pub const glfw_key_enter = 257

pub const glfw_key_tab = 258

pub const glfw_key_backspace = 259

pub const glfw_key_insert = 260

pub const glfw_key_delete = 261

pub const glfw_key_right = 262

pub const glfw_key_left = 263

pub const glfw_key_down = 264

pub const glfw_key_up = 265

pub const glfw_key_page_up = 266

pub const glfw_key_page_down = 267

pub const glfw_key_home = 268

pub const glfw_key_end = 269

pub const glfw_key_caps_lock = 280

pub const glfw_key_scroll_lock = 281

pub const glfw_key_num_lock = 282

pub const glfw_key_print_screen = 283

pub const glfw_key_pause = 284

pub const glfw_key_f1 = 290

pub const glfw_key_f2 = 291

pub const glfw_key_f3 = 292

pub const glfw_key_f4 = 293

pub const glfw_key_f5 = 294

pub const glfw_key_f6 = 295

pub const glfw_key_f7 = 296

pub const glfw_key_f8 = 297

pub const glfw_key_f9 = 298

pub const glfw_key_f10 = 299

pub const glfw_key_f11 = 300

pub const glfw_key_f12 = 301

pub const glfw_key_f13 = 302

pub const glfw_key_f14 = 303

pub const glfw_key_f15 = 304

pub const glfw_key_f16 = 305

pub const glfw_key_f17 = 306

pub const glfw_key_f18 = 307

pub const glfw_key_f19 = 308

pub const glfw_key_f20 = 309

pub const glfw_key_f21 = 310

pub const glfw_key_f22 = 311

pub const glfw_key_f23 = 312

pub const glfw_key_f24 = 313

pub const glfw_key_f25 = 314

pub const glfw_key_kp_0 = 320

pub const glfw_key_kp_1 = 321

pub const glfw_key_kp_2 = 322

pub const glfw_key_kp_3 = 323

pub const glfw_key_kp_4 = 324

pub const glfw_key_kp_5 = 325

pub const glfw_key_kp_6 = 326

pub const glfw_key_kp_7 = 327

pub const glfw_key_kp_8 = 328

pub const glfw_key_kp_9 = 329

pub const glfw_key_kp_decimal = 330

pub const glfw_key_kp_divide = 331

pub const glfw_key_kp_multiply = 332

pub const glfw_key_kp_subtract = 333

pub const glfw_key_kp_add = 334

pub const glfw_key_kp_enter = 335

pub const glfw_key_kp_equal = 336

pub const glfw_key_left_shift = 340

pub const glfw_key_left_control = 341

pub const glfw_key_left_alt = 342

pub const glfw_key_left_super = 343

pub const glfw_key_right_shift = 344

pub const glfw_key_right_control = 345

pub const glfw_key_right_alt = 346

pub const glfw_key_right_super = 347

pub const glfw_key_menu = 348

pub const glfw_key_last = glfw_key_menu

pub const glfw_mouse_button_1 = 0

pub const glfw_mouse_button_2 = 1

pub const glfw_mouse_button_3 = 2

pub const glfw_mouse_button_4 = 3

pub const glfw_mouse_button_5 = 4

pub const glfw_mouse_button_6 = 5

pub const glfw_mouse_button_7 = 6

pub const glfw_mouse_button_8 = 7

pub const glfw_mouse_button_last = glfw_mouse_button_8

pub const glfw_mouse_button_left = glfw_mouse_button_1

pub const glfw_mouse_button_right = glfw_mouse_button_2

pub const glfw_mouse_button_middle = glfw_mouse_button_3

pub const glfw_joystick_1 = 0

pub const glfw_joystick_2 = 1

pub const glfw_joystick_3 = 2

pub const glfw_joystick_4 = 3

pub const glfw_joystick_5 = 4

pub const glfw_joystick_6 = 5

pub const glfw_joystick_7 = 6

pub const glfw_joystick_8 = 7

pub const glfw_joystick_9 = 8

pub const glfw_joystick_10 = 9

pub const glfw_joystick_11 = 10

pub const glfw_joystick_12 = 11

pub const glfw_joystick_13 = 12

pub const glfw_joystick_14 = 13

pub const glfw_joystick_15 = 14

pub const glfw_joystick_16 = 15

pub const glfw_joystick_last = glfw_joystick_16

pub const glfw_gamepad_button_a = 0

pub const glfw_gamepad_button_b = 1

pub const glfw_gamepad_button_x = 2

pub const glfw_gamepad_button_y = 3

pub const glfw_gamepad_button_left_bumper = 4

pub const glfw_gamepad_button_right_bumper = 5

pub const glfw_gamepad_button_back = 6

pub const glfw_gamepad_button_start = 7

pub const glfw_gamepad_button_guide = 8

pub const glfw_gamepad_button_left_thumb = 9

pub const glfw_gamepad_button_right_thumb = 10

pub const glfw_gamepad_button_dpad_up = 11

pub const glfw_gamepad_button_dpad_right = 12

pub const glfw_gamepad_button_dpad_down = 13

pub const glfw_gamepad_button_dpad_left = 14

pub const glfw_gamepad_button_last = glfw_gamepad_button_dpad_left

pub const glfw_gamepad_button_cross = glfw_gamepad_button_a

pub const glfw_gamepad_button_circle = glfw_gamepad_button_b

pub const glfw_gamepad_button_square = glfw_gamepad_button_x

pub const glfw_gamepad_button_triangle = glfw_gamepad_button_y

pub const glfw_gamepad_axis_left_x = 0

pub const glfw_gamepad_axis_left_y = 1

pub const glfw_gamepad_axis_right_x = 2

pub const glfw_gamepad_axis_right_y = 3

pub const glfw_gamepad_axis_left_trigger = 4

pub const glfw_gamepad_axis_right_trigger = 5

pub const glfw_gamepad_axis_last = glfw_gamepad_axis_right_trigger

pub const glfw_focused = 0x00020001

pub const glfw_iconified = 0x00020002

pub const glfw_resizable = 0x00020003

pub const glfw_visible = 0x00020004

pub const glfw_decorated = 0x00020005

pub const glfw_auto_iconify = 0x00020006

pub const glfw_floating = 0x00020007

pub const glfw_maximized = 0x00020008

pub const glfw_center_cursor = 0x00020009

pub const glfw_transparent_framebuffer = 0x0002000a

pub const glfw_hovered = 0x0002000b

pub const glfw_focus_on_show = 0x0002000c

pub const glfw_samples = 0x0002100d

pub const glfw_srgb_capable = 0x0002100e

pub const glfw_refresh_rate = 0x0002100f

pub const glfw_doublebuffer = 0x00021010

pub const glfw_client_api = 0x00022001

pub const glfw_context_version_major = 0x00022002

pub const glfw_context_version_minor = 0x00022003

pub const glfw_context_revision = 0x00022004

pub const glfw_context_robustness = 0x00022005

pub const glfw_opengl_forward_compat = 0x00022006

pub const glfw_opengl_debug_context = 0x00022007

pub const glfw_opengl_profile = 0x00022008

pub const glfw_context_release_behavior = 0x00022009

pub const glfw_context_no_error = 0x0002200a

pub const glfw_context_creation_api = 0x0002200b

pub const glfw_scale_to_monitor = 0x0002200c

pub const glfw_cocoa_retina_framebuffer = 0x00023001

pub const glfw_cocoa_frame_name = 0x00023002

pub const glfw_cocoa_graphics_switching = 0x00023003

pub const glfw_x11_class_name = 0x00024001

pub const glfw_x11_instance_name = 0x00024002

pub const glfw_no_api = 0

pub const glfw_opengl_api = 0x00030001

pub const glfw_opengl_es_api = 0x00030002

pub const glfw_no_robustness = 0

pub const glfw_no_reset_notification = 0x00031001

pub const glfw_lose_context_on_reset = 0x00031002

pub const glfw_opengl_any_profile = 0

pub const glfw_opengl_core_profile = 0x00032001

pub const glfw_opengl_compat_profile = 0x00032002

pub const glfw_cursor = 0x00033001

pub const glfw_sticky_keys = 0x00033002

pub const glfw_sticky_mouse_buttons = 0x00033003

pub const glfw_lock_key_mods = 0x00033004

pub const glfw_raw_mouse_motion = 0x00033005

pub const glfw_cursor_normal = 0x00034001

pub const glfw_cursor_hidden = 0x00034002

pub const glfw_cursor_disabled = 0x00034003

pub const glfw_any_release_behavior = 0

pub const glfw_release_behavior_flush = 0x00035001

pub const glfw_release_behavior_none = 0x00035002

pub const glfw_native_context_api = 0x00036001

pub const glfw_egl_context_api = 0x00036002

pub const glfw_osmesa_context_api = 0x00036003

pub const glfw_arrow_cursor = 0x00036001

pub const glfw_ibeam_cursor = 0x00036002

pub const glfw_crosshair_cursor = 0x00036003

pub const glfw_hand_cursor = 0x00036004

pub const glfw_hresize_cursor = 0x00036005

pub const glfw_vresize_cursor = 0x00036006

pub const glfw_connected = 0x00040001

pub const glfw_disconnected = 0x00040002

pub const glfw_joystick_hat_buttons = 0x00050001

pub const glfw_cocoa_chdir_resources = 0x00051001

pub const glfw_cocoa_menubar = 0x00051002

pub const glfw_dont_care = -1

// api types

[typedef]
pub struct C.GLFWmonitor {
}

[typedef]
pub struct C.GLFWwindow {
}

[typedef]
pub struct C.GLFWcursor {
}

pub type GLFWerrorfun = fn (error_code int, description &char)

pub type GLFWcursorposfun = fn (window &C.GLFWwindow, xpos f64, ypos f64)

pub type GLFWframebuffersizefun = fn (window &C.GLFWwindow, width int, height int) voidptr

pub type GLFWglproc = fn (voidptr) voidptr

[typedef]
pub struct C.GLFWvidmode {
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

[typedef]
pub struct C.GLFWgammaramp {
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

[typedef]
pub struct C.GLFWimage {
	//* The width, in pixels, of this image.
	//
	width int
	//* The height, in pixels, of this image.
	//
	height int
	//* The pixel data of this image, arranged left-to-right, top-to-bottom.
	//
	pixels &char
}

[typedef]
pub struct C.GLFWgamepadstate {
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

pub fn C.glfwInit(voidptr) int

pub fn C.glfwTerminate(voidptr) voidptr

pub fn C.glfwInitHint(hint int, value int)

pub fn C.glfwGetVersion(major &int, minor &int, rev &int)

pub fn C.glfwGetError(description &&char)

pub fn C.glfwSetErrorCallback(callback C.GLFWerrorfun)

pub fn C.glfwGetMonitors(count &int) &&C.GLFWmonitor

pub fn C.glfwGetPrimaryMonitor(voidptr) &C.GLFWmonitor

pub fn C.glfwGetMonitorPos(monitor &C.GLFWmonitor, xpos &int, ypos &int)

pub fn C.glfwGetMonitorName(monitor C., GLFWmonitor)

pub fn C.glfwGetVideoModes(monitor &C.GLFWmonitor, count int) &C.GLFWvidmode

pub fn C.glfwWindowHint(hint int, value int) voidptr

pub fn C.glfwCreateWindow(width int, height int, title &char, monitor &C.GLFWmonitor, share &C.GLFWwindow) &C.GLFWwindow

pub fn C.glfwDestroyWindow(window &C.GLFWwindow) voidptr

pub fn C.glfwWindowShouldClose(window &C.GLFWwindow) int

pub fn C.glfwSetWindowShouldClose(window &C.GLFWwindow, value int) int

pub fn C.glfwSetWindowTitle(window &C.GLFWwindow, title &char) voidptr

pub fn C.glfwSetWindowIcon(window &C.GLFWwindow, count int, images &C.GLFWimage) voidptr

pub fn C.glfwGetWindowPos(window &C.GLFWwindow, xpos &int, ypos &int) voidptr

pub fn C.glfwSetWindowPos(window &C.GLFWwindow, xpos int, ypos int) voidptr

pub fn C.glfwGetWindowSize(window &C.GLFWwindow, width &int, height &int) voidptr

pub fn C.glfwSetWindowSizeLimits(window &C.GLFWwindow, minwidth int, minheight int, maxwidth int, maxheight int) voidptr


pub fn C.glfwSetWindowAspectRatio(window &C.GLFWwindow, numer int, denom int) voidptr

pub fn C.glfwSetWindowSize(window &C.GLFWwindow, width int, height int) voidptr

pub fn C.glfwGetFramebufferSize(window &C.GLFWwindow, width &int, height &int) voidptr

pub fn C.glfwGetWindowFrameSize(window &C.GLFWwindow, left &int, top &int, right &int, bottom &int) voidptr

pub fn C.glfwGetWindowContentScale(window &C.GLFWwindow, xscale &f64, yscale &32) voidptr

pub fn C.glfwGetWindowOpacity(window &C.GLFWwindow) f32

pub fn C.glfwSetWindowOpacity(window &C.GLFWwindow, opacity f64) voidptr

pub fn C.glfwIconifyWindow(window &C.GLFWwindow) voidptr

pub fn C.glfwRestoreWindow(window &C.GLFWwindow) voidptr

pub fn C.glfwMaximizeWindow(window &C.GLFWwindow) voidptr

pub fn C.glfwShowWindow(window &C.GLFWwindow) voidptr

pub fn C.glfwHideWindow(window &C.GLFWwindow) voidptr

pub fn C.glfwFocusWindow(window &C.GLFWwindow) voidptr

pub fn C.glfwRequestWindowAttention(window &C.GLFWwindow) voidptr

pub fn C.glfwGetWindowMonitor(window &C.GLFWwindow) &C.GLFWmonitor

pub fn C.glfwSetWindowMonitor(window &C.GLFWwindow, monitor &C.GLFWmonitor, xpos int, ypos int, width int, height int, refreshRate int) voidptr

pub fn C.glfwGetWindowAttrib(window &C.GLFWwindow, attrib int) int

pub fn C.glfwSetWindowAttrib(window &C.GLFWwindow, attrib int, value int) voidptr

pub fn C.glfwPollEvents(voidptr) voidptr

pub fn C.glfwWaitEvents(voidptr) voidptr

pub fn C.glfwWaitEventsTimeout(timeout f64) voidptr

pub fn C.glfwPostEmptyEvent(voidptr) voidptr

pub fn C.glfwGetInputMode(window &C.GLFWwindow, mode int) int

pub fn C.glfwSetInputMode(window &C.GLFWwindow, mode int, value int) voidptr

pub fn C.glfwRawMouseMotionSupported(voidptr) int

pub fn C.glfwGetKeyName(key int, scancode int) &char

pub fn C.glfwGetKeyScancode(key int) int

pub fn C.glfwGetKey(window &C.GLFWwindow, key int) int

pub fn C.glfwGetMouseButton(window &C.GLFWwindow, button int) int

pub fn C.glfwGetCursorPos(window &C.GLFWwindow, xpos &f64, ypos &f64) voidptr

pub fn C.glfwMakeContextCurrent(window &C.GLFWwindow) voidptr

pub fn C.glfwGetCurrentContext(voidptr) &C.GLFWwindow

pub fn C.glfwSwapBuffers(window &C.GLFWwindow) voidptr

pub fn C.glfwSetFramebufferSizeCallback(window &C.GLFWwindow, callback GLFWframebuffersizefun) GLFWframebuffersizefun

pub fn C.glfwGetProcAddress(procname &char) GLFWglproc
