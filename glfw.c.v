module vopengl

#flag -ivendor/include
// #flag -lvendor/lib/libglfw3.a
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
pub const glfw_key_left_bracket = 91  // [
pub const glfw_key_backslash = 92  // \
pub const glfw_key_right_bracket = 93  // ]
pub const glfw_key_grave_accent = 96  // `
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
pub const glfw_key_end  = 269
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
pub const glfw_key_kp_add  = 334
pub const glfw_key_kp_enter =  335
pub const glfw_key_kp_equal = 336
pub const glfw_key_left_shift = 340
pub const glfw_key_left_control = 341
pub const glfw_key_left_alt =  342
pub const glfw_key_left_super =  343
pub const glfw_key_right_shift = 344
pub const glfw_key_right_control = 345
pub const glfw_key_right_alt = 346
pub const glfw_key_right_super = 347
pub const glfw_key_menu = 348

pub const glfw_key_last = glfw_key_menu


pub const glfw_mouse_button_1  =       0
pub const glfw_mouse_button_2   =      1
pub const glfw_mouse_button_3    =     2
pub const glfw_mouse_button_4     =    3
pub const glfw_mouse_button_5      =   4
pub const glfw_mouse_button_6      =   5
pub const glfw_mouse_button_7       =  6
pub const glfw_mouse_button_8        = 7
pub const glfw_mouse_button_last      =glfw_mouse_button_8
pub const glfw_mouse_button_left    =  glfw_mouse_button_1
pub const glfw_mouse_button_right   =  glfw_mouse_button_2
pub const glfw_mouse_button_middle  =  glfw_mouse_button_3
//! @}

//! @defgroup joysticks joysticks
//  *  @brief joystick ids.
//  *
//  *  see [joystick input](@ref joystick) for how these are used.
//  *
//  *  @ingroup input
//  *  @{
pub const glfw_joystick_1             =0
pub const glfw_joystick_2            = 1
pub const glfw_joystick_3            = 2
pub const glfw_joystick_4            = 3
pub const glfw_joystick_5            = 4
pub const glfw_joystick_6            = 5
pub const glfw_joystick_7            = 6
pub const glfw_joystick_8            = 7
pub const glfw_joystick_9            = 8
pub const glfw_joystick_10            =9
pub const glfw_joystick_11            =10
pub const glfw_joystick_12            =11
pub const glfw_joystick_13            =12
pub const glfw_joystick_14      =      13
pub const glfw_joystick_15       =     14
pub const glfw_joystick_16        =    15
pub const glfw_joystick_last       =   glfw_joystick_16
//! @}

//! @defgroup gamepad_buttons gamepad buttons
//  *  @brief gamepad buttons.
//  *
//  *  see @ref gamepad for how these are used.
//  *
//  *  @ingroup input
//  *  @{
pub const glfw_gamepad_button_a     =          0
pub const glfw_gamepad_button_b      =         1
pub const glfw_gamepad_button_x       =        2
pub const glfw_gamepad_button_y        =       3
pub const glfw_gamepad_button_left_bumper=     4
pub const glfw_gamepad_button_right_bumper=    5
pub const glfw_gamepad_button_back         =   6
pub const glfw_gamepad_button_start         =  7
pub const glfw_gamepad_button_guide          = 8
pub const glfw_gamepad_button_left_thumb      =9
pub const glfw_gamepad_button_right_thumb   =  10
pub const glfw_gamepad_button_dpad_up    =     11
pub const glfw_gamepad_button_dpad_right  =    12
pub const glfw_gamepad_button_dpad_down    =   13
pub const glfw_gamepad_button_dpad_left     =  14
pub const glfw_gamepad_button_last           = glfw_gamepad_button_dpad_left

pub const glfw_gamepad_button_cross  =     glfw_gamepad_button_a
pub const glfw_gamepad_button_circle  =    glfw_gamepad_button_b
pub const glfw_gamepad_button_square   =   glfw_gamepad_button_x
pub const glfw_gamepad_button_triangle  =  glfw_gamepad_button_y
//! @}

//! @defgroup gamepad_axes gamepad axes
//  *  @brief gamepad axes.
//  *
//  *  see @ref gamepad for how these are used.
//  *
//  *  @ingroup input
//  *  @{
pub const glfw_gamepad_axis_left_x   =     0
pub const glfw_gamepad_axis_left_y    =    1
pub const glfw_gamepad_axis_right_x    =   2
pub const glfw_gamepad_axis_right_y     =  3
pub const glfw_gamepad_axis_left_trigger = 4
pub const glfw_gamepad_axis_right_trigger= 5
pub const glfw_gamepad_axis_last          =glfw_gamepad_axis_right_trigger
//! @}
