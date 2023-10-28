module vopengl

#flag -Lsrc/libglad.a
#include "glad/glad.h"
#include "KHR/khrplatform.h"

$if __gl_h_ ? {
	$compile_error('OpenGL header already included, remove this include, glad already provides it')
}
#define __gl_h_

pub struct C.gladGLversionStruct {
	major int
	minor int
}

pub type GLADloadproc = fn (name &char) &&voidptr

pub fn C.gladLoadGL(voidptr) int

pub fn C.gladLoadGLLoader(GLADloadproc) int

pub type GLenum = u8

pub type GLboolean = u8

pub type GLbitfield = int

pub type GLvoidptr = voidptr

pub type GLbyte = i8

pub type GLubyte = u8

pub type GLshort = i16

pub type GLushort = u16

pub type GLint = int

pub type GLuint = u32

pub type GLclampx = int

pub type GLsizei = int

pub type GLfloat = f32

pub type GLclampf = f32

pub type GLdouble = f64

pub type GLclampd = f64

pub type GLeglClientBufferEXT = &voidptr

pub type GLeglImageOES = &voidptr

pub type GLchar = char

pub type GLcharARB = char

pub type GLhalf = u16

pub type GLhalfARB = u16

pub type GLfixed = int

pub type GLintptr = &int

pub type GLintptrARB = &int

pub type GLsizeiptr = usize

pub type GLsizeiptrARB = &usize

pub type GLint64 = i64

pub type GLint64EXT = i64

pub type GLuint64 = u64

pub type GLuint64EXT = u64


[typedef]
pub type GLDEBUGPROC = fn (source GLenum, debug_type GLenum, id GLuint, severity GLenum, length GLsizei, message &GLchar, userParam &voidptr) &voidptr

[typedef]
pub type GLDEBUGPROCARB = fn (source GLenum, debug_type GLenum, id GLenum, severity GLuint, length GLsizei, message &GLchar, userParam &voidptr) &voidptr

[typedef]
pub type GLDEBUGPROCKHR = fn (source GLenum, debug_type GLenum, id GLuint, severity GLenum, length GLsizei, message &GLchar, userParam &voidptr) &voidptr

[typedef]
pub type GLDEBUGPROCAMD = fn (id GLuint, category GLenum, severity GLenum, length GLsizei, message &GLchar, userParam &voidptr) voidptr

pub type GLhalfNV = u16

pub type GLvdpauSurfaceNV = &int

[typedef]
pub type GLVULKANPROCNV = fn (voidptr) voidptr

// glad defines:

pub const (
	gl_depth_buffer_bit = 0x00000100

	gl_stencil_buffer_bit = 0x00000400

	gl_color_buffer_bit = 0x00004000

	gl_false = 0

	gl_true = 1

	gl_points = 0x0000

	gl_lines = 0x0001

	gl_line_loop = 0x0002

	gl_line_strip = 0x0003

	gl_triangles = 0x0004

	gl_triangle_strip = 0x0005

	gl_triangle_fan = 0x0006

	gl_never = 0x0200

	gl_less = 0x0201

	gl_equal = 0x0202

	gl_lequal = 0x0203

	gl_greater = 0x0204

	gl_notequal = 0x0205

	gl_gequal = 0x0206

	gl_always = 0x0207

	gl_zero = 0

	gl_one = 1

	gl_src_color = 0x0300

	gl_one_minus_src_color = 0x0301

	gl_src_alpha = 0x0302

	gl_one_minus_src_alpha = 0x0303

	gl_dst_alpha = 0x0304

	gl_one_minus_dst_alpha = 0x0305

	gl_dst_color = 0x0306

	gl_one_minus_dst_color = 0x0307

	gl_src_alpha_saturate = 0x0308

	gl_none = 0

	gl_front_left = 0x0400

	gl_front_right = 0x0401

	gl_back_left = 0x0402

	gl_back_right = 0x0403

	gl_front = 0x0404

	gl_back = 0x0405

	gl_left = 0x0406

	gl_right = 0x0407

	gl_front_and_back = 0x0408

	gl_no_error = 0

	gl_invalid_enum = 0x0500

	gl_invalid_value = 0x0501

	gl_invalid_operation = 0x0502

	gl_out_of_memory = 0x0505

	gl_cw = 0x0900

	gl_ccw = 0x0901

	gl_point_size = 0x0b11

	gl_point_size_range = 0x0b12

	gl_point_size_granularity = 0x0b13

	gl_line_smooth = 0x0b20

	gl_line_width = 0x0b21

	gl_line_width_range = 0x0b22

	gl_line_width_granularity = 0x0b23

	gl_polygon_mode = 0x0b40

	gl_polygon_smooth = 0x0b41

	gl_cull_face = 0x0b44

	gl_cull_face_mode = 0x0b45

	gl_front_face = 0x0b46

	gl_depth_range = 0x0b70

	gl_depth_test = 0x0b71

	gl_depth_writemask = 0x0b72

	gl_depth_clear_value = 0x0b73

	gl_depth_func = 0x0b74

	gl_stencil_test = 0x0b90

	gl_stencil_clear_value = 0x0b91

	gl_stencil_func = 0x0b92

	gl_stencil_value_mask = 0x0b93

	gl_stencil_fail = 0x0b94

	gl_stencil_pass_depth_fail = 0x0b95

	gl_stencil_pass_depth_pass = 0x0b96

	gl_stencil_ref = 0x0b97

	gl_stencil_writemask = 0x0b98

	gl_viewport = 0x0ba2

	gl_dither = 0x0bd0

	gl_blend_dst = 0x0be0

	gl_blend_src = 0x0be1

	gl_blend = 0x0be2

	gl_logic_op_mode = 0x0bf0

	gl_draw_buffer = 0x0c01

	gl_read_buffer = 0x0c02

	gl_scissor_box = 0x0c10

	gl_scissor_test = 0x0c11

	gl_color_clear_value = 0x0c22

	gl_color_writemask = 0x0c23

	gl_doublebuffer = 0x0c32

	gl_stereo = 0x0c33

	gl_line_smooth_hint = 0x0c52

	gl_polygon_smooth_hint = 0x0c53

	gl_unpack_swap_bytes = 0x0cf0

	gl_unpack_lsb_first = 0x0cf1

	gl_unpack_row_length = 0x0cf2

	gl_unpack_skip_rows = 0x0cf3

	gl_unpack_skip_pixels = 0x0cf4

	gl_unpack_alignment = 0x0cf5

	gl_pack_swap_bytes = 0x0d00

	gl_pack_lsb_first = 0x0d01

	gl_pack_row_length = 0x0d02

	gl_pack_skip_rows = 0x0d03

	gl_pack_skip_pixels = 0x0d04

	gl_pack_alignment = 0x0d05

	gl_max_texture_size = 0x0d33

	gl_max_viewport_dims = 0x0d3a

	gl_subpixel_bits = 0x0d50

	gl_texture_1d = 0x0de0

	gl_texture_2d = 0x0de1

	gl_texture_width = 0x1000

	gl_texture_height = 0x1001

	gl_texture_border_color = 0x1004

	gl_dont_care = 0x1100

	gl_fastest = 0x1101

	gl_nicest = 0x1102

	gl_byte = 0x1400

	gl_unsigned_byte = 0x1401

	gl_short = 0x1402

	gl_unsigned_short = 0x1403

	gl_int = 0x1404

	gl_unsigned_int = 0x1405

	gl_float = 0x1406

	gl_clear = 0x1500

	gl_and = 0x1501

	gl_and_reverse = 0x1502

	gl_copy = 0x1503

	gl_and_inverted = 0x1504

	gl_noop = 0x1505

	gl_xor = 0x1506

	gl_or = 0x1507

	gl_nor = 0x1508

	gl_equiv = 0x1509

	gl_invert = 0x150a

	gl_or_reverse = 0x150b

	gl_copy_inverted = 0x150c

	gl_or_inverted = 0x150d

	gl_nand = 0x150e

	gl_set = 0x150f

	gl_texture = 0x1702

	gl_color = 0x1800

	gl_depth = 0x1801

	gl_stencil = 0x1802

	gl_stencil_index = 0x1901

	gl_depth_component = 0x1902

	gl_red = 0x1903

	gl_green = 0x1904

	gl_blue = 0x1905

	gl_alpha = 0x1906

	gl_rgb = 0x1907

	gl_rgba = 0x1908

	gl_point = 0x1b00

	gl_line = 0x1b01

	gl_fill = 0x1b02

	gl_keep = 0x1e00

	gl_replace = 0x1e01

	gl_incr = 0x1e02

	gl_decr = 0x1e03

	gl_vendor = 0x1f00

	gl_renderer = 0x1f01

	gl_version = 0x1f02

	gl_extensions = 0x1f03

	gl_nearest = 0x2600

	gl_linear = 0x2601

	gl_nearest_mipmap_nearest = 0x2700

	gl_linear_mipmap_nearest = 0x2701

	gl_nearest_mipmap_linear = 0x2702

	gl_linear_mipmap_linear = 0x2703

	gl_texture_mag_filter = 0x2800

	gl_texture_min_filter = 0x2801

	gl_texture_wrap_s = 0x2802

	gl_texture_wrap_t = 0x2803

	gl_repeat = 0x2901

	gl_color_logic_op = 0x0bf2

	gl_polygon_offset_units = 0x2a00

	gl_polygon_offset_point = 0x2a01

	gl_polygon_offset_line = 0x2a02

	gl_polygon_offset_fill = 0x8037

	gl_polygon_offset_factor = 0x8038

	gl_texture_binding_1d = 0x8068

	gl_texture_binding_2d = 0x8069

	gl_texture_internal_format = 0x1003

	gl_texture_red_size = 0x805c

	gl_texture_green_size = 0x805d

	gl_texture_blue_size = 0x805e

	gl_texture_alpha_size = 0x805f

	gl_double = 0x140a

	gl_proxy_texture_1d = 0x8063

	gl_proxy_texture_2d = 0x8064

	gl_r3_g3_b2 = 0x2a10

	gl_rgb4 = 0x804f

	gl_rgb5 = 0x8050

	gl_rgb8 = 0x8051

	gl_rgb10 = 0x8052

	gl_rgb12 = 0x8053

	gl_rgb16 = 0x8054

	gl_rgba2 = 0x8055

	gl_rgba4 = 0x8056

	gl_rgb5_a1 = 0x8057

	gl_rgba8 = 0x8058

	gl_rgb10_a2 = 0x8059

	gl_rgba12 = 0x805a

	gl_rgba16 = 0x805b

	gl_unsigned_byte_3_3_2 = 0x8032

	gl_unsigned_short_4_4_4_4 = 0x8033

	gl_unsigned_short_5_5_5_1 = 0x8034

	gl_unsigned_int_8_8_8_8 = 0x8035

	gl_unsigned_int_10_10_10_2 = 0x8036

	gl_texture_binding_3d = 0x806a

	gl_pack_skip_images = 0x806b

	gl_pack_image_height = 0x806c

	gl_unpack_skip_images = 0x806d

	gl_unpack_image_height = 0x806e

	gl_texture_3d = 0x806f

	gl_proxy_texture_3d = 0x8070

	gl_texture_depth = 0x8071

	gl_texture_wrap_r = 0x8072

	gl_max_3d_texture_size = 0x8073

	gl_unsigned_byte_2_3_3_rev = 0x8362

	gl_unsigned_short_5_6_5 = 0x8363

	gl_unsigned_short_5_6_5_rev = 0x8364

	gl_unsigned_short_4_4_4_4_rev = 0x8365

	gl_unsigned_short_1_5_5_5_rev = 0x8366

	gl_unsigned_int_8_8_8_8_rev = 0x8367

	gl_unsigned_int_2_10_10_10_rev = 0x8368

	gl_bgr = 0x80e0

	gl_bgra = 0x80e1

	gl_max_elements_vertices = 0x80e8

	gl_max_elements_indices = 0x80e9

	gl_clamp_to_edge = 0x812f

	gl_texture_min_lod = 0x813a

	gl_texture_max_lod = 0x813b

	gl_texture_base_level = 0x813c

	gl_texture_max_level = 0x813d

	gl_smooth_point_size_range = 0x0b12

	gl_smooth_point_size_granularity = 0x0b13

	gl_smooth_line_width_range = 0x0b22

	gl_smooth_line_width_granularity = 0x0b23

	gl_aliased_line_width_range = 0x846e

	gl_texture0 = 0x84c0

	gl_texture1 = 0x84c1

	gl_texture2 = 0x84c2

	gl_texture3 = 0x84c3

	gl_texture4 = 0x84c4

	gl_texture5 = 0x84c5

	gl_texture6 = 0x84c6

	gl_texture7 = 0x84c7

	gl_texture8 = 0x84c8

	gl_texture9 = 0x84c9

	gl_texture10 = 0x84ca

	gl_texture11 = 0x84cb

	gl_texture12 = 0x84cc

	gl_texture13 = 0x84cd

	gl_texture14 = 0x84ce

	gl_texture15 = 0x84cf

	gl_texture16 = 0x84d0

	gl_texture17 = 0x84d1

	gl_texture18 = 0x84d2

	gl_texture19 = 0x84d3

	gl_texture20 = 0x84d4

	gl_texture21 = 0x84d5

	gl_texture22 = 0x84d6

	gl_texture23 = 0x84d7

	gl_texture24 = 0x84d8

	gl_texture25 = 0x84d9

	gl_texture26 = 0x84da

	gl_texture27 = 0x84db

	gl_texture28 = 0x84dc

	gl_texture29 = 0x84dd

	gl_texture30 = 0x84de

	gl_texture31 = 0x84df

	gl_active_texture = 0x84e0

	gl_multisample = 0x809d

	gl_sample_alpha_to_coverage = 0x809e

	gl_sample_alpha_to_one = 0x809f

	gl_sample_coverage = 0x80a0

	gl_sample_buffers = 0x80a8

	gl_samples = 0x80a9

	gl_sample_coverage_value = 0x80aa

	gl_sample_coverage_invert = 0x80ab

	gl_texture_cube_map = 0x8513

	gl_texture_binding_cube_map = 0x8514

	gl_texture_cube_map_positive_x = 0x8515

	gl_texture_cube_map_negative_x = 0x8516

	gl_texture_cube_map_positive_y = 0x8517

	gl_texture_cube_map_negative_y = 0x8518

	gl_texture_cube_map_positive_z = 0x8519

	gl_texture_cube_map_negative_z = 0x851a

	gl_proxy_texture_cube_map = 0x851b

	gl_max_cube_map_texture_size = 0x851c

	gl_compressed_rgb = 0x84ed

	gl_compressed_rgba = 0x84ee

	gl_texture_compression_hint = 0x84ef

	gl_texture_compressed_image_size = 0x86a0

	gl_texture_compressed = 0x86a1

	gl_num_compressed_texture_formats = 0x86a2

	gl_compressed_texture_formats = 0x86a3

	gl_clamp_to_border = 0x812d

	gl_blend_dst_rgb = 0x80c8

	gl_blend_src_rgb = 0x80c9

	gl_blend_dst_alpha = 0x80ca

	gl_blend_src_alpha = 0x80cb

	gl_point_fade_threshold_size = 0x8128

	gl_depth_component16 = 0x81a5

	gl_depth_component24 = 0x81a6

	gl_depth_component32 = 0x81a7

	gl_mirrored_repeat = 0x8370

	gl_max_texture_lod_bias = 0x84fd

	gl_texture_lod_bias = 0x8501

	gl_incr_wrap = 0x8507

	gl_decr_wrap = 0x8508

	gl_texture_depth_size = 0x884a

	gl_texture_compare_mode = 0x884c

	gl_texture_compare_func = 0x884d

	gl_blend_color = 0x8005

	gl_blend_equation = 0x8009

	gl_constant_color = 0x8001

	gl_one_minus_constant_color = 0x8002

	gl_constant_alpha = 0x8003

	gl_one_minus_constant_alpha = 0x8004

	gl_func_add = 0x8006

	gl_func_reverse_subtract = 0x800b

	gl_func_subtract = 0x800a

	gl_min = 0x8007

	gl_max = 0x8008

	gl_buffer_size = 0x8764

	gl_buffer_usage = 0x8765

	gl_query_counter_bits = 0x8864

	gl_current_query = 0x8865

	gl_query_result = 0x8866

	gl_query_result_available = 0x8867

	gl_array_buffer = 0x8892

	gl_element_array_buffer = 0x8893

	gl_array_buffer_binding = 0x8894

	gl_element_array_buffer_binding = 0x8895

	gl_vertex_attrib_array_buffer_binding = 0x889f

	gl_read_only = 0x88b8

	gl_write_only = 0x88b9

	gl_read_write = 0x88ba

	gl_buffer_access = 0x88bb

	gl_buffer_mapped = 0x88bc

	gl_buffer_map_pointer = 0x88bd

	gl_stream_draw = 0x88e0

	gl_stream_read = 0x88e1

	gl_stream_copy = 0x88e2

	gl_static_draw = 0x88e4

	gl_static_read = 0x88e5

	gl_static_copy = 0x88e6

	gl_dynamic_draw = 0x88e8

	gl_dynamic_read = 0x88e9

	gl_dynamic_copy = 0x88ea

	gl_samples_passed = 0x8914

	gl_src1_alpha = 0x8589

	gl_blend_equation_rgb = 0x8009

	gl_vertex_attrib_array_enabled = 0x8622

	gl_vertex_attrib_array_size = 0x8623

	gl_vertex_attrib_array_stride = 0x8624

	gl_vertex_attrib_array_type = 0x8625

	gl_current_vertex_attrib = 0x8626

	gl_vertex_program_point_size = 0x8642

	gl_vertex_attrib_array_pointer = 0x8645

	gl_stencil_back_func = 0x8800

	gl_stencil_back_fail = 0x8801

	gl_stencil_back_pass_depth_fail = 0x8802

	gl_stencil_back_pass_depth_pass = 0x8803

	gl_max_draw_buffers = 0x8824

	gl_draw_buffer0 = 0x8825

	gl_draw_buffer1 = 0x8826

	gl_draw_buffer2 = 0x8827

	gl_draw_buffer3 = 0x8828

	gl_draw_buffer4 = 0x8829

	gl_draw_buffer5 = 0x882a

	gl_draw_buffer6 = 0x882b

	gl_draw_buffer7 = 0x882c

	gl_draw_buffer8 = 0x882d

	gl_draw_buffer9 = 0x882e

	gl_draw_buffer10 = 0x882f

	gl_draw_buffer11 = 0x8830

	gl_draw_buffer12 = 0x8831

	gl_draw_buffer13 = 0x8832

	gl_draw_buffer14 = 0x8833

	gl_draw_buffer15 = 0x8834

	gl_blend_equation_alpha = 0x883d

	gl_max_vertex_attribs = 0x8869

	gl_vertex_attrib_array_normalized = 0x886a

	gl_max_texture_image_units = 0x8872

	gl_fragment_shader = 0x8b30

	gl_vertex_shader = 0x8b31

	gl_max_fragment_uniform_components = 0x8b49

	gl_max_vertex_uniform_components = 0x8b4a

	gl_max_varying_floats = 0x8b4b

	gl_max_vertex_texture_image_units = 0x8b4c

	gl_max_combined_texture_image_units = 0x8b4d

	gl_shader_type = 0x8b4f

	gl_float_vec2 = 0x8b50

	gl_float_vec3 = 0x8b51

	gl_float_vec4 = 0x8b52

	gl_int_vec2 = 0x8b53

	gl_int_vec3 = 0x8b54

	gl_int_vec4 = 0x8b55

	gl_bool = 0x8b56

	gl_bool_vec2 = 0x8b57

	gl_bool_vec3 = 0x8b58

	gl_bool_vec4 = 0x8b59

	gl_float_mat2 = 0x8b5a

	gl_float_mat3 = 0x8b5b

	gl_float_mat4 = 0x8b5c

	gl_sampler_1d = 0x8b5d

	gl_sampler_2d = 0x8b5e

	gl_sampler_3d = 0x8b5f

	gl_sampler_cube = 0x8b60

	gl_sampler_1d_shadow = 0x8b61

	gl_sampler_2d_shadow = 0x8b62

	gl_delete_status = 0x8b80

	gl_compile_status = 0x8b81

	gl_link_status = 0x8b82

	gl_validate_status = 0x8b83

	gl_info_log_length = 0x8b84

	gl_attached_shaders = 0x8b85

	gl_active_uniforms = 0x8b86

	gl_active_uniform_max_length = 0x8b87

	gl_shader_source_length = 0x8b88

	gl_active_attributes = 0x8b89

	gl_active_attribute_max_length = 0x8b8a

	gl_fragment_shader_derivative_hint = 0x8b8b

	gl_shading_language_version = 0x8b8c

	gl_current_program = 0x8b8d

	gl_point_sprite_coord_origin = 0x8ca0

	gl_lower_left = 0x8ca1

	gl_upper_left = 0x8ca2

	gl_stencil_back_ref = 0x8ca3

	gl_stencil_back_value_mask = 0x8ca4

	gl_stencil_back_writemask = 0x8ca5

	gl_pixel_pack_buffer = 0x88eb

	gl_pixel_unpack_buffer = 0x88ec

	gl_pixel_pack_buffer_binding = 0x88ed

	gl_pixel_unpack_buffer_binding = 0x88ef

	gl_float_mat2x3 = 0x8b65

	gl_float_mat2x4 = 0x8b66

	gl_float_mat3x2 = 0x8b67

	gl_float_mat3x4 = 0x8b68

	gl_float_mat4x2 = 0x8b69

	gl_float_mat4x3 = 0x8b6a

	gl_srgb = 0x8c40

	gl_srgb8 = 0x8c41

	gl_srgb_alpha = 0x8c42

	gl_srgb8_alpha8 = 0x8c43

	gl_compressed_srgb = 0x8c48

	gl_compressed_srgb_alpha = 0x8c49

	gl_compare_ref_to_texture = 0x884e

	gl_clip_distance0 = 0x3000

	gl_clip_distance1 = 0x3001

	gl_clip_distance2 = 0x3002

	gl_clip_distance3 = 0x3003

	gl_clip_distance4 = 0x3004

	gl_clip_distance5 = 0x3005

	gl_clip_distance6 = 0x3006

	gl_clip_distance7 = 0x3007

	gl_max_clip_distances = 0x0d32

	gl_major_version = 0x821b

	gl_minor_version = 0x821c

	gl_num_extensions = 0x821d

	gl_context_flags = 0x821e

	gl_compressed_red = 0x8225

	gl_compressed_rg = 0x8226

	gl_context_flag_forward_compatible_bit = 0x00000001

	gl_rgba32f = 0x8814

	gl_rgb32f = 0x8815

	gl_rgba16f = 0x881a

	gl_rgb16f = 0x881b

	gl_vertex_attrib_array_integer = 0x88fd

	gl_max_array_texture_layers = 0x88ff

	gl_min_program_texel_offset = 0x8904

	gl_max_program_texel_offset = 0x8905

	gl_clamp_read_color = 0x891c

	gl_fixed_only = 0x891d

	gl_max_varying_components = 0x8b4b

	gl_texture_1d_array = 0x8c18

	gl_proxy_texture_1d_array = 0x8c19

	gl_texture_2d_array = 0x8c1a

	gl_proxy_texture_2d_array = 0x8c1b

	gl_texture_binding_1d_array = 0x8c1c

	gl_texture_binding_2d_array = 0x8c1d

	gl_r11f_g11f_b10f = 0x8c3a

	gl_unsigned_int_10f_11f_11f_rev = 0x8c3b

	gl_rgb9_e5 = 0x8c3d

	gl_unsigned_int_5_9_9_9_rev = 0x8c3e

	gl_texture_shared_size = 0x8c3f

	gl_transform_feedback_varying_max_length = 0x8c76

	gl_transform_feedback_buffer_mode = 0x8c7f

	gl_max_transform_feedback_separate_components = 0x8c80

	gl_transform_feedback_varyings = 0x8c83

	gl_transform_feedback_buffer_start = 0x8c84

	gl_transform_feedback_buffer_size = 0x8c85

	gl_primitives_generated = 0x8c87

	gl_transform_feedback_primitives_written = 0x8c88

	gl_rasterizer_discard = 0x8c89

	gl_max_transform_feedback_interleaved_components = 0x8c8a

	gl_max_transform_feedback_separate_attribs = 0x8c8b

	gl_interleaved_attribs = 0x8c8c

	gl_separate_attribs = 0x8c8d

	gl_transform_feedback_buffer = 0x8c8e

	gl_transform_feedback_buffer_binding = 0x8c8f

	gl_rgba32ui = 0x8d70

	gl_rgb32ui = 0x8d71

	gl_rgba16ui = 0x8d76

	gl_rgb16ui = 0x8d77

	gl_rgba8ui = 0x8d7c

	gl_rgb8ui = 0x8d7d

	gl_rgba32i = 0x8d82

	gl_rgb32i = 0x8d83

	gl_rgba16i = 0x8d88

	gl_rgb16i = 0x8d89

	gl_rgba8i = 0x8d8e

	gl_rgb8i = 0x8d8f

	gl_red_integer = 0x8d94

	gl_green_integer = 0x8d95

	gl_blue_integer = 0x8d96

	gl_rgb_integer = 0x8d98

	gl_rgba_integer = 0x8d99

	gl_bgr_integer = 0x8d9a

	gl_bgra_integer = 0x8d9b

	gl_sampler_1d_array = 0x8dc0

	gl_sampler_2d_array = 0x8dc1

	gl_sampler_1d_array_shadow = 0x8dc3

	gl_sampler_2d_array_shadow = 0x8dc4

	gl_sampler_cube_shadow = 0x8dc5

	gl_unsigned_int_vec2 = 0x8dc6

	gl_unsigned_int_vec3 = 0x8dc7

	gl_unsigned_int_vec4 = 0x8dc8

	gl_int_sampler_1d = 0x8dc9

	gl_int_sampler_2d = 0x8dca

	gl_int_sampler_3d = 0x8dcb

	gl_int_sampler_cube = 0x8dcc

	gl_int_sampler_1d_array = 0x8dce

	gl_int_sampler_2d_array = 0x8dcf

	gl_unsigned_int_sampler_1d = 0x8dd1

	gl_unsigned_int_sampler_2d = 0x8dd2

	gl_unsigned_int_sampler_3d = 0x8dd3

	gl_unsigned_int_sampler_cube = 0x8dd4

	gl_unsigned_int_sampler_1d_array = 0x8dd6

	gl_unsigned_int_sampler_2d_array = 0x8dd7

	gl_query_wait = 0x8e13

	gl_query_no_wait = 0x8e14

	gl_query_by_region_wait = 0x8e15

	gl_query_by_region_no_wait = 0x8e16

	gl_buffer_access_flags = 0x911f

	gl_buffer_map_length = 0x9120

	gl_buffer_map_offset = 0x9121

	gl_depth_component32f = 0x8cac

	gl_depth32f_stencil8 = 0x8cad

	gl_float_32_unsigned_int_24_8_rev = 0x8dad

	gl_invalid_framebuffer_operation = 0x0506

	gl_framebuffer_attachment_color_encoding = 0x8210

	gl_framebuffer_attachment_component_type = 0x8211

	gl_framebuffer_attachment_red_size = 0x8212

	gl_framebuffer_attachment_green_size = 0x8213

	gl_framebuffer_attachment_blue_size = 0x8214

	gl_framebuffer_attachment_alpha_size = 0x8215

	gl_framebuffer_attachment_depth_size = 0x8216

	gl_framebuffer_attachment_stencil_size = 0x8217

	gl_framebuffer_default = 0x8218

	gl_framebuffer_undefined = 0x8219

	gl_depth_stencil_attachment = 0x821a

	gl_max_renderbuffer_size = 0x84e8

	gl_depth_stencil = 0x84f9

	gl_unsigned_int_24_8 = 0x84fa

	gl_depth24_stencil8 = 0x88f0

	gl_texture_stencil_size = 0x88f1

	gl_texture_red_type = 0x8c10

	gl_texture_green_type = 0x8c11

	gl_texture_blue_type = 0x8c12

	gl_texture_alpha_type = 0x8c13

	gl_texture_depth_type = 0x8c16

	gl_unsigned_normalized = 0x8c17

	gl_framebuffer_binding = 0x8ca6

	gl_draw_framebuffer_binding = 0x8ca6

	gl_renderbuffer_binding = 0x8ca7

	gl_read_framebuffer = 0x8ca8

	gl_draw_framebuffer = 0x8ca9

	gl_read_framebuffer_binding = 0x8caa

	gl_renderbuffer_samples = 0x8cab

	gl_framebuffer_attachment_object_type = 0x8cd0

	gl_framebuffer_attachment_object_name = 0x8cd1

	gl_framebuffer_attachment_texture_level = 0x8cd2

	gl_framebuffer_attachment_texture_cube_map_face = 0x8cd3

	gl_framebuffer_attachment_texture_layer = 0x8cd4

	gl_framebuffer_complete = 0x8cd5

	gl_framebuffer_incomplete_attachment = 0x8cd6

	gl_framebuffer_incomplete_missing_attachment = 0x8cd7

	gl_framebuffer_incomplete_draw_buffer = 0x8cdb

	gl_framebuffer_incomplete_read_buffer = 0x8cdc

	gl_framebuffer_unsupported = 0x8cdd

	gl_max_color_attachments = 0x8cdf

	gl_color_attachment0 = 0x8ce0

	gl_color_attachment1 = 0x8ce1

	gl_color_attachment2 = 0x8ce2

	gl_color_attachment3 = 0x8ce3

	gl_color_attachment4 = 0x8ce4

	gl_color_attachment5 = 0x8ce5

	gl_color_attachment6 = 0x8ce6

	gl_color_attachment7 = 0x8ce7

	gl_color_attachment8 = 0x8ce8

	gl_color_attachment9 = 0x8ce9

	gl_color_attachment10 = 0x8cea

	gl_color_attachment11 = 0x8ceb

	gl_color_attachment12 = 0x8cec

	gl_color_attachment13 = 0x8ced

	gl_color_attachment14 = 0x8cee

	gl_color_attachment15 = 0x8cef

	gl_color_attachment16 = 0x8cf0

	gl_color_attachment17 = 0x8cf1

	gl_color_attachment18 = 0x8cf2

	gl_color_attachment19 = 0x8cf3

	gl_color_attachment20 = 0x8cf4

	gl_color_attachment21 = 0x8cf5

	gl_color_attachment22 = 0x8cf6

	gl_color_attachment23 = 0x8cf7

	gl_color_attachment24 = 0x8cf8

	gl_color_attachment25 = 0x8cf9

	gl_color_attachment26 = 0x8cfa

	gl_color_attachment27 = 0x8cfb

	gl_color_attachment28 = 0x8cfc

	gl_color_attachment29 = 0x8cfd

	gl_color_attachment30 = 0x8cfe

	gl_color_attachment31 = 0x8cff

	gl_depth_attachment = 0x8d00

	gl_stencil_attachment = 0x8d20

	gl_framebuffer = 0x8d40

	gl_renderbuffer = 0x8d41

	gl_renderbuffer_width = 0x8d42

	gl_renderbuffer_height = 0x8d43

	gl_renderbuffer_internal_format = 0x8d44

	gl_stencil_index1 = 0x8d46

	gl_stencil_index4 = 0x8d47

	gl_stencil_index8 = 0x8d48

	gl_stencil_index16 = 0x8d49

	gl_renderbuffer_red_size = 0x8d50

	gl_renderbuffer_green_size = 0x8d51

	gl_renderbuffer_blue_size = 0x8d52

	gl_renderbuffer_alpha_size = 0x8d53

	gl_renderbuffer_depth_size = 0x8d54

	gl_renderbuffer_stencil_size = 0x8d55

	gl_framebuffer_incomplete_multisample = 0x8d56

	gl_max_samples = 0x8d57

	gl_framebuffer_srgb = 0x8db9

	gl_half_float = 0x140b

	gl_map_read_bit = 0x0001

	gl_map_write_bit = 0x0002

	gl_map_invalidate_range_bit = 0x0004

	gl_map_invalidate_buffer_bit = 0x0008

	gl_map_flush_explicit_bit = 0x0010

	gl_map_unsynchronized_bit = 0x0020

	gl_compressed_red_rgtc1 = 0x8dbb

	gl_compressed_signed_red_rgtc1 = 0x8dbc

	gl_compressed_rg_rgtc2 = 0x8dbd

	gl_compressed_signed_rg_rgtc2 = 0x8dbe

	gl_rg = 0x8227

	gl_rg_integer = 0x8228

	gl_r8 = 0x8229

	gl_r16 = 0x822a

	gl_rg8 = 0x822b

	gl_rg16 = 0x822c

	gl_r16f = 0x822d

	gl_r32f = 0x822e

	gl_rg16f = 0x822f

	gl_rg32f = 0x8230

	gl_r8i = 0x8231

	gl_r8ui = 0x8232

	gl_r16i = 0x8233

	gl_r16ui = 0x8234

	gl_r32i = 0x8235

	gl_r32ui = 0x8236

	gl_rg8i = 0x8237

	gl_rg8ui = 0x8238

	gl_rg16i = 0x8239

	gl_rg16ui = 0x823a

	gl_rg32i = 0x823b

	gl_rg32ui = 0x823c

	gl_vertex_array_binding = 0x85b5

	gl_sampler_2d_rect = 0x8b63

	gl_sampler_2d_rect_shadow = 0x8b64

	gl_sampler_buffer = 0x8dc2

	gl_int_sampler_2d_rect = 0x8dcd

	gl_int_sampler_buffer = 0x8dd0

	gl_unsigned_int_sampler_2d_rect = 0x8dd5

	gl_unsigned_int_sampler_buffer = 0x8dd8

	gl_texture_buffer = 0x8c2a

	gl_max_texture_buffer_size = 0x8c2b

	gl_texture_binding_buffer = 0x8c2c

	gl_texture_buffer_data_store_binding = 0x8c2d

	gl_texture_rectangle = 0x84f5

	gl_texture_binding_rectangle = 0x84f6

	gl_proxy_texture_rectangle = 0x84f7

	gl_max_rectangle_texture_size = 0x84f8

	gl_r8_snorm = 0x8f94

	gl_rg8_snorm = 0x8f95

	gl_rgb8_snorm = 0x8f96

	gl_rgba8_snorm = 0x8f97

	gl_r16_snorm = 0x8f98

	gl_rg16_snorm = 0x8f99

	gl_rgb16_snorm = 0x8f9a

	gl_rgba16_snorm = 0x8f9b

	gl_signed_normalized = 0x8f9c

	gl_primitive_restart = 0x8f9d

	gl_primitive_restart_index = 0x8f9e

	gl_copy_read_buffer = 0x8f36

	gl_copy_write_buffer = 0x8f37

	gl_uniform_buffer = 0x8a11

	gl_uniform_buffer_binding = 0x8a28

	gl_uniform_buffer_start = 0x8a29

	gl_uniform_buffer_size = 0x8a2a

	gl_max_vertex_uniform_blocks = 0x8a2b

	gl_max_geometry_uniform_blocks = 0x8a2c

	gl_max_fragment_uniform_blocks = 0x8a2d

	gl_max_combined_uniform_blocks = 0x8a2e

	gl_max_uniform_buffer_bindings = 0x8a2f

	gl_max_uniform_block_size = 0x8a30

	gl_max_combined_vertex_uniform_components = 0x8a31

	gl_max_combined_geometry_uniform_components = 0x8a32

	gl_max_combined_fragment_uniform_components = 0x8a33

	gl_uniform_buffer_offset_alignment = 0x8a34

	gl_active_uniform_block_max_name_length = 0x8a35

	gl_active_uniform_blocks = 0x8a36

	gl_uniform_type = 0x8a37

	gl_uniform_size = 0x8a38

	gl_uniform_name_length = 0x8a39

	gl_uniform_block_index = 0x8a3a

	gl_uniform_offset = 0x8a3b

	gl_uniform_array_stride = 0x8a3c

	gl_uniform_matrix_stride = 0x8a3d

	gl_uniform_is_row_major = 0x8a3e

	gl_uniform_block_binding = 0x8a3f

	gl_uniform_block_data_size = 0x8a40

	gl_uniform_block_name_length = 0x8a41

	gl_uniform_block_active_uniforms = 0x8a42

	gl_uniform_block_active_uniform_indices = 0x8a43

	gl_uniform_block_referenced_by_vertex_shader = 0x8a44

	gl_uniform_block_referenced_by_geometry_shader = 0x8a45

	gl_uniform_block_referenced_by_fragment_shader = 0x8a46

	gl_invalid_index = i64(0xffffffff)

	gl_context_core_profile_bit = 0x00000001

	gl_context_compatibility_profile_bit = 0x00000002

	gl_lines_adjacency = 0x000a

	gl_line_strip_adjacency = 0x000b

	gl_triangles_adjacency = 0x000c

	gl_triangle_strip_adjacency = 0x000d

	gl_program_point_size = 0x8642

	gl_max_geometry_texture_image_units = 0x8c29

	gl_framebuffer_attachment_layered = 0x8da7

	gl_framebuffer_incomplete_layer_targets = 0x8da8

	gl_geometry_shader = 0x8dd9

	gl_geometry_vertices_out = 0x8916

	gl_geometry_input_type = 0x8917

	gl_geometry_output_type = 0x8918

	gl_max_geometry_uniform_components = 0x8ddf

	gl_max_geometry_output_vertices = 0x8de0

	gl_max_geometry_total_output_components = 0x8de1

	gl_max_vertex_output_components = 0x9122

	gl_max_geometry_input_components = 0x9123

	gl_max_geometry_output_components = 0x9124

	gl_max_fragment_input_components = 0x9125

	gl_context_profile_mask = 0x9126

	gl_depth_clamp = 0x864f

	gl_quads_follow_provoking_vertex_convention = 0x8e4c

	gl_first_vertex_convention = 0x8e4d

	gl_last_vertex_convention = 0x8e4e

	gl_provoking_vertex = 0x8e4f

	gl_texture_cube_map_seamless = 0x884f

	gl_max_server_wait_timeout = 0x9111

	gl_object_type = 0x9112

	gl_sync_condition = 0x9113

	gl_sync_status = 0x9114

	gl_sync_flags = 0x9115

	gl_sync_fence = 0x9116

	gl_sync_gpu_commands_complete = 0x9117

	gl_unsignaled = 0x9118

	gl_signaled = 0x9119

	gl_already_signaled = 0x911a

	gl_timeout_expired = 0x911b

	gl_condition_satisfied = 0x911c

	gl_wait_failed = 0x911d

	gl_timeout_ignored = 0xffffffffffffffff

	gl_sync_flush_commands_bit = 0x00000001

	gl_sample_position = 0x8e50

	gl_sample_mask = 0x8e51

	gl_sample_mask_value = 0x8e52

	gl_max_sample_mask_words = 0x8e59

	gl_texture_2d_multisample = 0x9100

	gl_proxy_texture_2d_multisample = 0x9101

	gl_texture_2d_multisample_array = 0x9102

	gl_proxy_texture_2d_multisample_array = 0x9103

	gl_texture_binding_2d_multisample = 0x9104

	gl_texture_binding_2d_multisample_array = 0x9105

	gl_texture_samples = 0x9106

	gl_texture_fixed_sample_locations = 0x9107

	gl_sampler_2d_multisample = 0x9108

	gl_int_sampler_2d_multisample = 0x9109

	gl_unsigned_int_sampler_2d_multisample = 0x910a

	gl_sampler_2d_multisample_array = 0x910b

	gl_int_sampler_2d_multisample_array = 0x910c

	gl_unsigned_int_sampler_2d_multisample_array = 0x910d

	gl_max_color_texture_samples = 0x910e

	gl_max_depth_texture_samples = 0x910f

	gl_max_integer_samples = 0x9110

	gl_vertex_attrib_array_divisor = 0x88fe

	gl_src1_color = 0x88f9

	gl_one_minus_src1_color = 0x88fa

	gl_one_minus_src1_alpha = 0x88fb

	gl_max_dual_source_draw_buffers = 0x88fc

	gl_any_samples_passed = 0x8c2f

	gl_sampler_binding = 0x8919

	gl_rgb10_a2ui = 0x906f

	gl_texture_swizzle_r = 0x8e42

	gl_texture_swizzle_g = 0x8e43

	gl_texture_swizzle_b = 0x8e44

	gl_texture_swizzle_a = 0x8e45

	gl_texture_swizzle_rgba = 0x8e46

	gl_time_elapsed = 0x88bf

	gl_timestamp = 0x8e28

	gl_int_2_10_10_10_rev = 0x8d9f
)

// GLAD API Functions

// type PFNGLCULLFACEPROC = fn (mode GLenum) voidptr
// glad_glCullFace PFNGLCULLFACEPROC
// type glCullFace = glad_glCullFace

// type PFNGLFRONTFACEPROC = fn (mode GLenum) voidptr
// glad_glFrontFace PFNGLFRONTFACEPROC
// type glFrontFace = glad_glFrontFace

// type PFNGLHINTPROC = fn (target GLenum, mode GLenum) voidptr
// glad_glHint PFNGLHINTPROC
// type glHint = glad_glHint

// type PFNGLLINEWIDTHPROC = fn(width GLfloat) voidptr
// GLAPI PFNGLLINEWIDTHPROC glad_glLineWidth
// #define glLineWidth glad_glLineWidth

// type  PFNGLPOINTSIZEPROC)(GLfloat size) voidptr
// GLAPI PFNGLPOINTSIZEPROC glad_glPointSize
// #define glPointSize glad_glPointSize

// type  PFNGLPOLYGONMODEPROC)(GLenum face, GLenum mode) voidptr
// GLAPI PFNGLPOLYGONMODEPROC glad_glPolygonMode
// #define glPolygonMode glad_glPolygonMode

// type voidptr PFNGLSCISSORPROC)(GLint x, GLint y, GLsizei width, GLsizei height)
// GLAPI PFNGLSCISSORPROC glad_glScissor
// #define glScissor glad_glScissor

// type voidptr PFNGLTEXPARAMETERFPROC)(GLenum target, GLenum pname, GLfloat param)
// GLAPI PFNGLTEXPARAMETERFPROC glad_glTexParameterf
// #define glTexParameterf glad_glTexParameterf

// type voidptr PFNGLTEXPARAMETERFVPROC)(GLenum target, GLenum pname, const GLfloat *params)
// GLAPI PFNGLTEXPARAMETERFVPROC glad_glTexParameterfv
// #define glTexParameterfv glad_glTexParameterfv

// type voidptr PFNGLTEXPARAMETERIPROC)(GLenum target, GLenum pname, GLint param)
// GLAPI PFNGLTEXPARAMETERIPROC glad_glTexParameteri
// #define glTexParameteri glad_glTexParameteri

// type voidptr PFNGLTEXPARAMETERIVPROC)(GLenum target, GLenum pname, const GLint *params)
// GLAPI PFNGLTEXPARAMETERIVPROC glad_glTexParameteriv
// #define glTexParameteriv glad_glTexParameteriv

// type voidptr PFNGLTEXIMAGE1DPROC)(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const voidptr *pixels)
// GLAPI PFNGLTEXIMAGE1DPROC glad_glTexImage1D
// #define glTexImage1D glad_glTexImage1D

// type voidptr PFNGLTEXIMAGE2DPROC)(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const voidptr *pixels)
// GLAPI PFNGLTEXIMAGE2DPROC glad_glTexImage2D
// #define glTexImage2D glad_glTexImage2D

fn C.glDrawBuffer(buf GLenum) voidptr
pub fn glDrawBuffer(buf GLenum) {
	C.glDrawBuffer(buf)
}

fn C.glClear(mask GLbitfield) voidptr
pub fn glClear(mask GLbitfield) {
	C.glClear(mask)
}


fn C.glClearColor(red GLfloat, green GLfloat, blue GLfloat, alpha GLfloat) voidptr

// type voidptr PFNGLCLEARSTENCILPROC)(GLint s)
// GLAPI PFNGLCLEARSTENCILPROC glad_glClearStencil
// #define glClearStencil glad_glClearStencil

// type voidptr PFNGLCLEARDEPTHPROC)(GLdouble depth)
// GLAPI PFNGLCLEARDEPTHPROC glad_glClearDepth
// #define glClearDepth glad_glClearDepth

// type voidptr PFNGLSTENCILMASKPROC)(GLuint mask)
// GLAPI PFNGLSTENCILMASKPROC glad_glStencilMask
// #define glStencilMask glad_glStencilMask

// type voidptr PFNGLCOLORMASKPROC)(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)
// GLAPI PFNGLCOLORMASKPROC glad_glColorMask
// #define glColorMask glad_glColorMask

// type voidptr PFNGLDEPTHMASKPROC)(GLboolean flag)
// GLAPI PFNGLDEPTHMASKPROC glad_glDepthMask
// #define glDepthMask glad_glDepthMask

// type voidptr PFNGLDISABLEPROC)(GLenum cap)
// GLAPI PFNGLDISABLEPROC glad_glDisable
// #define glDisable glad_glDisable

// type voidptr PFNGLENABLEPROC)(GLenum cap)
// GLAPI PFNGLENABLEPROC glad_glEnable
// #define glEnable glad_glEnable

// type voidptr PFNGLFINISHPROC)(void)
// GLAPI PFNGLFINISHPROC glad_glFinish
// #define glFinish glad_glFinish

// type voidptr PFNGLFLUSHPROC)(void)
// GLAPI PFNGLFLUSHPROC glad_glFlush
// #define glFlush glad_glFlush

// type voidptr PFNGLBLENDFUNCPROC)(GLenum sfactor, GLenum dfactor)
// GLAPI PFNGLBLENDFUNCPROC glad_glBlendFunc
// #define glBlendFunc glad_glBlendFunc

// type voidptr PFNGLLOGICOPPROC)(GLenum opcode)
// GLAPI PFNGLLOGICOPPROC glad_glLogicOp
// #define glLogicOp glad_glLogicOp

// type voidptr PFNGLSTENCILFUNCPROC)(GLenum func, GLint ref, GLuint mask)
// GLAPI PFNGLSTENCILFUNCPROC glad_glStencilFunc
// #define glStencilFunc glad_glStencilFunc

// type voidptr PFNGLSTENCILOPPROC)(GLenum fail, GLenum zfail, GLenum zpass)
// GLAPI PFNGLSTENCILOPPROC glad_glStencilOp
// #define glStencilOp glad_glStencilOp
// type voidptr PFNGLDEPTHFUNCPROC)(GLenum func)
// GLAPI PFNGLDEPTHFUNCPROC glad_glDepthFunc
// #define glDepthFunc glad_glDepthFunc
// type voidptr PFNGLPIXELSTOREFPROC)(GLenum pname, GLfloat param)
// GLAPI PFNGLPIXELSTOREFPROC glad_glPixelStoref
// #define glPixelStoref glad_glPixelStoref
// type voidptr PFNGLPIXELSTOREIPROC)(GLenum pname, GLint param)
// GLAPI PFNGLPIXELSTOREIPROC glad_glPixelStorei
// #define glPixelStorei glad_glPixelStorei
// type voidptr PFNGLREADBUFFERPROC)(GLenum src)
// GLAPI PFNGLREADBUFFERPROC glad_glReadBuffer
// #define glReadBuffer glad_glReadBuffer
// type voidptr PFNGLREADPIXELSPROC)(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, voidptr *pixels)
// GLAPI PFNGLREADPIXELSPROC glad_glReadPixels
// #define glReadPixels glad_glReadPixels
// type voidptr PFNGLGETBOOLEANVPROC)(GLenum pname, GLboolean *data)
// GLAPI PFNGLGETBOOLEANVPROC glad_glGetBooleanv
// #define glGetBooleanv glad_glGetBooleanv
// type voidptr PFNGLGETDOUBLEVPROC)(GLenum pname, GLdouble *data)
// GLAPI PFNGLGETDOUBLEVPROC glad_glGetDoublev
// #define glGetDoublev glad_glGetDoublev
// type GLenum PFNGLGETERRORPROC)(void)
// GLAPI PFNGLGETERRORPROC glad_glGetError
// #define glGetError glad_glGetError
// type voidptr PFNGLGETFLOATVPROC)(GLenum pname, GLfloat *data)
// GLAPI PFNGLGETFLOATVPROC glad_glGetFloatv
// #define glGetFloatv glad_glGetFloatv
// type voidptr PFNGLGETINTEGERVPROC)(GLenum pname, GLint *data)
// GLAPI PFNGLGETINTEGERVPROC glad_glGetIntegerv
// #define glGetIntegerv glad_glGetIntegerv
// type const GLubyte * PFNGLGETSTRINGPROC)(GLenum name)
// GLAPI PFNGLGETSTRINGPROC glad_glGetString
// #define glGetString glad_glGetString
// type voidptr PFNGLGETTEXIMAGEPROC)(GLenum target, GLint level, GLenum format, GLenum type, voidptr *pixels)
// GLAPI PFNGLGETTEXIMAGEPROC glad_glGetTexImage
// #define glGetTexImage glad_glGetTexImage
// type voidptr PFNGLGETTEXPARAMETERFVPROC)(GLenum target, GLenum pname, GLfloat *params)
// GLAPI PFNGLGETTEXPARAMETERFVPROC glad_glGetTexParameterfv
// #define glGetTexParameterfv glad_glGetTexParameterfv
// type voidptr PFNGLGETTEXPARAMETERIVPROC)(GLenum target, GLenum pname, GLint *params)
// GLAPI PFNGLGETTEXPARAMETERIVPROC glad_glGetTexParameteriv
// #define glGetTexParameteriv glad_glGetTexParameteriv
// type voidptr PFNGLGETTEXLEVELPARAMETERFVPROC)(GLenum target, GLint level, GLenum pname, GLfloat *params)
// GLAPI PFNGLGETTEXLEVELPARAMETERFVPROC glad_glGetTexLevelParameterfv
// #define glGetTexLevelParameterfv glad_glGetTexLevelParameterfv
// type voidptr PFNGLGETTEXLEVELPARAMETERIVPROC)(GLenum target, GLint level, GLenum pname, GLint *params)
// GLAPI PFNGLGETTEXLEVELPARAMETERIVPROC glad_glGetTexLevelParameteriv
// #define glGetTexLevelParameteriv glad_glGetTexLevelParameteriv
// type GLboolean PFNGLISENABLEDPROC)(GLenum cap)
// GLAPI PFNGLISENABLEDPROC glad_glIsEnabled
// #define glIsEnabled glad_glIsEnabled
// type voidptr PFNGLDEPTHRANGEPROC)(GLdouble n, GLdouble f)
// GLAPI PFNGLDEPTHRANGEPROC glad_glDepthRange
// #define glDepthRange glad_glDepthRange
[typedef]
fn C.glViewport(x GLint, y GLint, width GLsizei, height GLsizei) voidptr
// #endif
// #ifndef GL_VERSION_1_1
// #define GL_VERSION_1_1 1
// GLAPI int GLAD_GL_VERSION_1_1
[typedef]
fn C.glDrawArrays(mode GLenum, first GLint, count GLsizei) voidptr

[typedef]
fn C.glDrawElements(mode GLenum, count GLsizei, type GLenum, indices voidptr) voidptr
// type voidptr PFNGLPOLYGONOFFSETPROC)(GLfloat factor, GLfloat units)
// GLAPI PFNGLPOLYGONOFFSETPROC glad_glPolygonOffset
// #define glPolygonOffset glad_glPolygonOffset
// type voidptr PFNGLCOPYTEXIMAGE1DPROC)(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)
// GLAPI PFNGLCOPYTEXIMAGE1DPROC glad_glCopyTexImage1D
// #define glCopyTexImage1D glad_glCopyTexImage1D
// type voidptr PFNGLCOPYTEXIMAGE2DPROC)(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)
// GLAPI PFNGLCOPYTEXIMAGE2DPROC glad_glCopyTexImage2D
// #define glCopyTexImage2D glad_glCopyTexImage2D
// type voidptr PFNGLCOPYTEXSUBIMAGE1DPROC)(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)
// GLAPI PFNGLCOPYTEXSUBIMAGE1DPROC glad_glCopyTexSubImage1D
// #define glCopyTexSubImage1D glad_glCopyTexSubImage1D
// type voidptr PFNGLCOPYTEXSUBIMAGE2DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)
// GLAPI PFNGLCOPYTEXSUBIMAGE2DPROC glad_glCopyTexSubImage2D
// #define glCopyTexSubImage2D glad_glCopyTexSubImage2D
// type voidptr PFNGLTEXSUBIMAGE1DPROC)(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const voidptr *pixels)
// GLAPI PFNGLTEXSUBIMAGE1DPROC glad_glTexSubImage1D
// #define glTexSubImage1D glad_glTexSubImage1D
// type voidptr PFNGLTEXSUBIMAGE2DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const voidptr *pixels)
// GLAPI PFNGLTEXSUBIMAGE2DPROC glad_glTexSubImage2D
// #define glTexSubImage2D glad_glTexSubImage2D
// type voidptr PFNGLBINDTEXTUREPROC)(GLenum target, GLuint texture)
// GLAPI PFNGLBINDTEXTUREPROC glad_glBindTexture
// #define glBindTexture glad_glBindTexture
// type voidptr PFNGLDELETETEXTURESPROC)(GLsizei n, const GLuint *textures)
// GLAPI PFNGLDELETETEXTURESPROC glad_glDeleteTextures
// #define glDeleteTextures glad_glDeleteTextures
// type voidptr PFNGLGENTEXTURESPROC)(GLsizei n, GLuint *textures)
// GLAPI PFNGLGENTEXTURESPROC glad_glGenTextures
// #define glGenTextures glad_glGenTextures
// type GLboolean PFNGLISTEXTUREPROC)(GLuint texture)
// GLAPI PFNGLISTEXTUREPROC glad_glIsTexture
// #define glIsTexture glad_glIsTexture
// #endif
// #ifndef GL_VERSION_1_2
// #define GL_VERSION_1_2 1
// GLAPI int GLAD_GL_VERSION_1_2
// type voidptr PFNGLDRAWRANGEELEMENTSPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const voidptr *indices)
// GLAPI PFNGLDRAWRANGEELEMENTSPROC glad_glDrawRangeElements
// #define glDrawRangeElements glad_glDrawRangeElements
// type voidptr PFNGLTEXIMAGE3DPROC)(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const voidptr *pixels)
// GLAPI PFNGLTEXIMAGE3DPROC glad_glTexImage3D
// #define glTexImage3D glad_glTexImage3D
// type voidptr PFNGLTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const voidptr *pixels)
// GLAPI PFNGLTEXSUBIMAGE3DPROC glad_glTexSubImage3D
// #define glTexSubImage3D glad_glTexSubImage3D
// type voidptr PFNGLCOPYTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)
// GLAPI PFNGLCOPYTEXSUBIMAGE3DPROC glad_glCopyTexSubImage3D
// #define glCopyTexSubImage3D glad_glCopyTexSubImage3D
// #endif
// #ifndef GL_VERSION_1_3
// #define GL_VERSION_1_3 1
// GLAPI int GLAD_GL_VERSION_1_3
// type voidptr PFNGLACTIVETEXTUREPROC)(GLenum texture)
// GLAPI PFNGLACTIVETEXTUREPROC glad_glActiveTexture
// #define glActiveTexture glad_glActiveTexture
// type voidptr PFNGLSAMPLECOVERAGEPROC)(GLfloat value, GLboolean invert)
// GLAPI PFNGLSAMPLECOVERAGEPROC glad_glSampleCoverage
// #define glSampleCoverage glad_glSampleCoverage
// type voidptr PFNGLCOMPRESSEDTEXIMAGE3DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const voidptr *data)
// GLAPI PFNGLCOMPRESSEDTEXIMAGE3DPROC glad_glCompressedTexImage3D
// #define glCompressedTexImage3D glad_glCompressedTexImage3D
// type voidptr PFNGLCOMPRESSEDTEXIMAGE2DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const voidptr *data)
// GLAPI PFNGLCOMPRESSEDTEXIMAGE2DPROC glad_glCompressedTexImage2D
// #define glCompressedTexImage2D glad_glCompressedTexImage2D
// type voidptr PFNGLCOMPRESSEDTEXIMAGE1DPROC)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const voidptr *data)
// GLAPI PFNGLCOMPRESSEDTEXIMAGE1DPROC glad_glCompressedTexImage1D
// #define glCompressedTexImage1D glad_glCompressedTexImage1D
// type voidptr PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const voidptr *data)
// GLAPI PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC glad_glCompressedTexSubImage3D
// #define glCompressedTexSubImage3D glad_glCompressedTexSubImage3D
// type voidptr PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC)(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const voidptr *data)
// GLAPI PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC glad_glCompressedTexSubImage2D
// #define glCompressedTexSubImage2D glad_glCompressedTexSubImage2D
// type voidptr PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC)(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const voidptr *data)
// GLAPI PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC glad_glCompressedTexSubImage1D
// #define glCompressedTexSubImage1D glad_glCompressedTexSubImage1D
// type voidptr PFNGLGETCOMPRESSEDTEXIMAGEPROC)(GLenum target, GLint level, voidptr *img)
// GLAPI PFNGLGETCOMPRESSEDTEXIMAGEPROC glad_glGetCompressedTexImage
// #define glGetCompressedTexImage glad_glGetCompressedTexImage
// #endif
// #ifndef GL_VERSION_1_4
// #define GL_VERSION_1_4 1
// GLAPI int GLAD_GL_VERSION_1_4
// type voidptr PFNGLBLENDFUNCSEPARATEPROC)(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha)
// GLAPI PFNGLBLENDFUNCSEPARATEPROC glad_glBlendFuncSeparate
// #define glBlendFuncSeparate glad_glBlendFuncSeparate
// type voidptr PFNGLMULTIDRAWARRAYSPROC)(GLenum mode, const GLint *first, const GLsizei *count, GLsizei drawcount)
// GLAPI PFNGLMULTIDRAWARRAYSPROC glad_glMultiDrawArrays
// #define glMultiDrawArrays glad_glMultiDrawArrays
// type voidptr PFNGLMULTIDRAWELEMENTSPROC)(GLenum mode, const GLsizei *count, GLenum type, const voidptr *const*indices, GLsizei drawcount)
// GLAPI PFNGLMULTIDRAWELEMENTSPROC glad_glMultiDrawElements
// #define glMultiDrawElements glad_glMultiDrawElements
// type voidptr PFNGLPOINTPARAMETERFPROC)(GLenum pname, GLfloat param)
// GLAPI PFNGLPOINTPARAMETERFPROC glad_glPointParameterf
// #define glPointParameterf glad_glPointParameterf
// type voidptr PFNGLPOINTPARAMETERFVPROC)(GLenum pname, const GLfloat *params)
// GLAPI PFNGLPOINTPARAMETERFVPROC glad_glPointParameterfv
// #define glPointParameterfv glad_glPointParameterfv
// type voidptr PFNGLPOINTPARAMETERIPROC)(GLenum pname, GLint param)
// GLAPI PFNGLPOINTPARAMETERIPROC glad_glPointParameteri
// #define glPointParameteri glad_glPointParameteri
// type voidptr PFNGLPOINTPARAMETERIVPROC)(GLenum pname, const GLint *params)
// GLAPI PFNGLPOINTPARAMETERIVPROC glad_glPointParameteriv
// #define glPointParameteriv glad_glPointParameteriv
// type voidptr PFNGLBLENDCOLORPROC)(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)
// GLAPI PFNGLBLENDCOLORPROC glad_glBlendColor
// #define glBlendColor glad_glBlendColor
// type voidptr PFNGLBLENDEQUATIONPROC)(GLenum mode)
// GLAPI PFNGLBLENDEQUATIONPROC glad_glBlendEquation
// #define glBlendEquation glad_glBlendEquation
// #endif
// #ifndef GL_VERSION_1_5
// #define GL_VERSION_1_5 1
// GLAPI int GLAD_GL_VERSION_1_5
// type voidptr PFNGLGENQUERIESPROC)(GLsizei n, GLuint *ids)
// GLAPI PFNGLGENQUERIESPROC glad_glGenQueries
// #define glGenQueries glad_glGenQueries
// type voidptr PFNGLDELETEQUERIESPROC)(GLsizei n, const GLuint *ids)
// GLAPI PFNGLDELETEQUERIESPROC glad_glDeleteQueries
// #define glDeleteQueries glad_glDeleteQueries
// type GLboolean PFNGLISQUERYPROC)(GLuint id)
// GLAPI PFNGLISQUERYPROC glad_glIsQuery
// #define glIsQuery glad_glIsQuery
// type voidptr PFNGLBEGINQUERYPROC)(GLenum target, GLuint id)
// GLAPI PFNGLBEGINQUERYPROC glad_glBeginQuery
// #define glBeginQuery glad_glBeginQuery
// type voidptr PFNGLENDQUERYPROC)(GLenum target)
// GLAPI PFNGLENDQUERYPROC glad_glEndQuery
// #define glEndQuery glad_glEndQuery
// type voidptr PFNGLGETQUERYIVPROC)(GLenum target, GLenum pname, GLint *params)
// GLAPI PFNGLGETQUERYIVPROC glad_glGetQueryiv
// #define glGetQueryiv glad_glGetQueryiv
// type voidptr PFNGLGETQUERYOBJECTIVPROC)(GLuint id, GLenum pname, GLint *params)
// GLAPI PFNGLGETQUERYOBJECTIVPROC glad_glGetQueryObjectiv
// #define glGetQueryObjectiv glad_glGetQueryObjectiv
// type voidptr PFNGLGETQUERYOBJECTUIVPROC)(GLuint id, GLenum pname, GLuint *params)
// GLAPI PFNGLGETQUERYOBJECTUIVPROC glad_glGetQueryObjectuiv
// #define glGetQueryObjectuiv glad_glGetQueryObjectuiv
[typedef]
fn C.glBindBuffer(GLenum target, GLuint buffer) voidptr

[typedef]
fn C.glDeleteBuffers(n GLsizei, buffers &GLuint) voidptr

[typedef]
fn C.glGenBuffers(n GLsizei, buffers &GLuint) voidptr
// type GLboolean PFNGLISBUFFERPROC)(GLuint buffer)
// GLAPI PFNGLISBUFFERPROC glad_glIsBuffer
// #define glIsBuffer glad_glIsBuffer
[typedef]
fn C.glBufferData(target GLenum, size GLsizeiptr, data voidptr, usage GLenum) voidptr
// type voidptr PFNGLBUFFERSUBDATAPROC)(GLenum target, GLintptr offset, GLsizeiptr size, const voidptr *data)
// GLAPI PFNGLBUFFERSUBDATAPROC glad_glBufferSubData
// #define glBufferSubData glad_glBufferSubData
// type voidptr PFNGLGETBUFFERSUBDATAPROC)(GLenum target, GLintptr offset, GLsizeiptr size, voidptr *data)
// GLAPI PFNGLGETBUFFERSUBDATAPROC glad_glGetBufferSubData
// #define glGetBufferSubData glad_glGetBufferSubData
// type voidptr * PFNGLMAPBUFFERPROC)(GLenum target, GLenum access)
// GLAPI PFNGLMAPBUFFERPROC glad_glMapBuffer
// #define glMapBuffer glad_glMapBuffer
// type GLboolean PFNGLUNMAPBUFFERPROC)(GLenum target)
// GLAPI PFNGLUNMAPBUFFERPROC glad_glUnmapBuffer
// #define glUnmapBuffer glad_glUnmapBuffer
// type voidptr PFNGLGETBUFFERPARAMETERIVPROC)(GLenum target, GLenum pname, GLint *params)
// GLAPI PFNGLGETBUFFERPARAMETERIVPROC glad_glGetBufferParameteriv
// #define glGetBufferParameteriv glad_glGetBufferParameteriv
// type voidptr PFNGLGETBUFFERPOINTERVPROC)(GLenum target, GLenum pname, voidptr **params)
// GLAPI PFNGLGETBUFFERPOINTERVPROC glad_glGetBufferPointerv
// #define glGetBufferPointerv glad_glGetBufferPointerv
// #endif
// #ifndef GL_VERSION_2_0
// #define GL_VERSION_2_0 1
// GLAPI int GLAD_GL_VERSION_2_0
// type voidptr PFNGLBLENDEQUATIONSEPARATEPROC)(GLenum modeRGB, GLenum modeAlpha)
// GLAPI PFNGLBLENDEQUATIONSEPARATEPROC glad_glBlendEquationSeparate
// #define glBlendEquationSeparate glad_glBlendEquationSeparate
[typedev]
fn C.glDrawBuffers(n GLsizei, bufs &GLenum) voidptr
// type voidptr PFNGLSTENCILOPSEPARATEPROC)(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass)
// GLAPI PFNGLSTENCILOPSEPARATEPROC glad_glStencilOpSeparate
// #define glStencilOpSeparate glad_glStencilOpSeparate
// type voidptr PFNGLSTENCILFUNCSEPARATEPROC)(GLenum face, GLenum func, GLint ref, GLuint mask)
// GLAPI PFNGLSTENCILFUNCSEPARATEPROC glad_glStencilFuncSeparate
// #define glStencilFuncSeparate glad_glStencilFuncSeparate
// type voidptr PFNGLSTENCILMASKSEPARATEPROC)(GLenum face, GLuint mask)
// GLAPI PFNGLSTENCILMASKSEPARATEPROC glad_glStencilMaskSeparate
// #define glStencilMaskSeparate glad_glStencilMaskSeparate
[typedef]
fn C.glAttachShader(program GLuint, shader GLuint)voidptr
// type voidptr PFNGLBINDATTRIBLOCATIONPROC)(GLuint program, GLuint index, const GLchar *name)
// GLAPI PFNGLBINDATTRIBLOCATIONPROC glad_glBindAttribLocation
// #define glBindAttribLocation glad_glBindAttribLocation
[typedef]
fn C.glCompileShader(shader GLuint) voidptr
[typedef]
fn C.glCreateProgram(voidptr) GLuint
[typedef]
fn C.glCreateShader(type GLenum) GLuint

[typedef]
fn C.glDeleteProgram(program GLuint) voidptr

[typedef]
fn C.glDeleteShader(shader GLuint) voidptr

// type voidptr PFNGLDETACHSHADERPROC)(GLuint program, GLuint shader)
// GLAPI PFNGLDETACHSHADERPROC glad_glDetachShader
// #define glDetachShader glad_glDetachShader
[typedef]
fn C.glDisableVertexAttribArray(index GLuint) voidptr

[typedef]
fn C.glEnableVertexAttribArray(index GLuint) voidptr

// type voidptr PFNGLGETACTIVEATTRIBPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name)
// GLAPI PFNGLGETACTIVEATTRIBPROC glad_glGetActiveAttrib
// #define glGetActiveAttrib glad_glGetActiveAttrib
// type voidptr PFNGLGETACTIVEUNIFORMPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLint *size, GLenum *type, GLchar *name)
// GLAPI PFNGLGETACTIVEUNIFORMPROC glad_glGetActiveUniform
// #define glGetActiveUniform glad_glGetActiveUniform
// type voidptr PFNGLGETATTACHEDSHADERSPROC)(GLuint program, GLsizei maxCount, GLsizei *count, GLuint *shaders)
// GLAPI PFNGLGETATTACHEDSHADERSPROC glad_glGetAttachedShaders
// #define glGetAttachedShaders glad_glGetAttachedShaders

[typedef]
fn C.glGetAttribLocation(program GLuint, name &GLchar) GLint

[typedef]
fn C.glGetProgramiv(program GLuint, pname GLenum, params &GLint) voidptr

[typedef]
fn C.glGetProgramInfoLog(program GLuint, bufSize GLsizei, length &GLsizei, infoLog &GLchar) voidptr

[typedef]
fn C.glGetShaderiv(shader GLuint, pname GLenum, params &GLint) voidptr

[typedef]
fn C.glGetShaderInfoLog(shader GLuint, bufSize GLsizei, length &GLsizei, infoLog &GLchar) voidptr

// type voidptr PFNGLGETSHADERSOURCEPROC)(GLuint shader, GLsizei bufSize, GLsizei *length, GLchar *source)
// GLAPI PFNGLGETSHADERSOURCEPROC glad_glGetShaderSource
// #define glGetShaderSource glad_glGetShaderSource
[typedef]
fn C.glGetUniformLocation(program GLuint, name &GLchar) GLint

[typedef]
fn C.glGetUniformfv(program GLuint, location GLint, params &GLfloat) voidptr

[typedef]
fn C.glGetUniformiv(program GLuint, location GLint, params &GLint) voidptr

// type voidptr PFNGLGETVERTEXATTRIBDVPROC)(GLuint index, GLenum pname, GLdouble *params)
// GLAPI PFNGLGETVERTEXATTRIBDVPROC glad_glGetVertexAttribdv
// #define glGetVertexAttribdv glad_glGetVertexAttribdv
// type voidptr PFNGLGETVERTEXATTRIBFVPROC)(GLuint index, GLenum pname, GLfloat *params)
// GLAPI PFNGLGETVERTEXATTRIBFVPROC glad_glGetVertexAttribfv
// #define glGetVertexAttribfv glad_glGetVertexAttribfv
// type voidptr PFNGLGETVERTEXATTRIBIVPROC)(GLuint index, GLenum pname, GLint *params)
// GLAPI PFNGLGETVERTEXATTRIBIVPROC glad_glGetVertexAttribiv
// #define glGetVertexAttribiv glad_glGetVertexAttribiv
// type voidptr PFNGLGETVERTEXATTRIBPOINTERVPROC)(GLuint index, GLenum pname, voidptr **pointer)
// GLAPI PFNGLGETVERTEXATTRIBPOINTERVPROC glad_glGetVertexAttribPointerv
// #define glGetVertexAttribPointerv glad_glGetVertexAttribPointerv
// type GLboolean PFNGLISPROGRAMPROC)(GLuint program)
// GLAPI PFNGLISPROGRAMPROC glad_glIsProgram
// #define glIsProgram glad_glIsProgram
// type GLboolean PFNGLISSHADERPROC)(GLuint shader)
// GLAPI PFNGLISSHADERPROC glad_glIsShader
// #define glIsShader glad_glIsShader
[typedef]
fn C.glLinkProgram(GLuint program) voidptr

[typedef]
fn C.glShaderSource(GLuint shader, GLsizei count, string &&GLchar, length &GLint) voidptr

[typedef]
fn C.glUseProgram(GLuint program) voidptr
// type voidptr PFNGLUNIFORM1FPROC)(GLint location, GLfloat v0)
// GLAPI PFNGLUNIFORM1FPROC glad_glUniform1f
// #define glUniform1f glad_glUniform1f
// type voidptr PFNGLUNIFORM2FPROC)(GLint location, GLfloat v0, GLfloat v1)
// GLAPI PFNGLUNIFORM2FPROC glad_glUniform2f
// #define glUniform2f glad_glUniform2f
// type voidptr PFNGLUNIFORM3FPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2)
// GLAPI PFNGLUNIFORM3FPROC glad_glUniform3f
// #define glUniform3f glad_glUniform3f
// type voidptr PFNGLUNIFORM4FPROC)(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3)
// GLAPI PFNGLUNIFORM4FPROC glad_glUniform4f
// #define glUniform4f glad_glUniform4f
// type voidptr PFNGLUNIFORM1IPROC)(GLint location, GLint v0)
// GLAPI PFNGLUNIFORM1IPROC glad_glUniform1i
// #define glUniform1i glad_glUniform1i
// type voidptr PFNGLUNIFORM2IPROC)(GLint location, GLint v0, GLint v1)
// GLAPI PFNGLUNIFORM2IPROC glad_glUniform2i
// #define glUniform2i glad_glUniform2i
// type voidptr PFNGLUNIFORM3IPROC)(GLint location, GLint v0, GLint v1, GLint v2)
// GLAPI PFNGLUNIFORM3IPROC glad_glUniform3i
// #define glUniform3i glad_glUniform3i
// type voidptr PFNGLUNIFORM4IPROC)(GLint location, GLint v0, GLint v1, GLint v2, GLint v3)
// GLAPI PFNGLUNIFORM4IPROC glad_glUniform4i
// #define glUniform4i glad_glUniform4i
// type voidptr PFNGLUNIFORM1FVPROC)(GLint location, GLsizei count, const GLfloat *value)
// GLAPI PFNGLUNIFORM1FVPROC glad_glUniform1fv
// #define glUniform1fv glad_glUniform1fv
// type voidptr PFNGLUNIFORM2FVPROC)(GLint location, GLsizei count, const GLfloat *value)
// GLAPI PFNGLUNIFORM2FVPROC glad_glUniform2fv
// #define glUniform2fv glad_glUniform2fv
// type voidptr PFNGLUNIFORM3FVPROC)(GLint location, GLsizei count, const GLfloat *value)
// GLAPI PFNGLUNIFORM3FVPROC glad_glUniform3fv
// #define glUniform3fv glad_glUniform3fv
// type voidptr PFNGLUNIFORM4FVPROC)(GLint location, GLsizei count, const GLfloat *value)
// GLAPI PFNGLUNIFORM4FVPROC glad_glUniform4fv
// #define glUniform4fv glad_glUniform4fv
// type voidptr PFNGLUNIFORM1IVPROC)(GLint location, GLsizei count, const GLint *value)
// GLAPI PFNGLUNIFORM1IVPROC glad_glUniform1iv
// #define glUniform1iv glad_glUniform1iv
// type voidptr PFNGLUNIFORM2IVPROC)(GLint location, GLsizei count, const GLint *value)
// GLAPI PFNGLUNIFORM2IVPROC glad_glUniform2iv
// #define glUniform2iv glad_glUniform2iv
// type voidptr PFNGLUNIFORM3IVPROC)(GLint location, GLsizei count, const GLint *value)
// GLAPI PFNGLUNIFORM3IVPROC glad_glUniform3iv
// #define glUniform3iv glad_glUniform3iv
// type voidptr PFNGLUNIFORM4IVPROC)(GLint location, GLsizei count, const GLint *value)
// GLAPI PFNGLUNIFORM4IVPROC glad_glUniform4iv
// #define glUniform4iv glad_glUniform4iv
// type voidptr PFNGLUNIFORMMATRIX2FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
// GLAPI PFNGLUNIFORMMATRIX2FVPROC glad_glUniformMatrix2fv
// #define glUniformMatrix2fv glad_glUniformMatrix2fv
// type voidptr PFNGLUNIFORMMATRIX3FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
// GLAPI PFNGLUNIFORMMATRIX3FVPROC glad_glUniformMatrix3fv
// #define glUniformMatrix3fv glad_glUniformMatrix3fv
// type voidptr PFNGLUNIFORMMATRIX4FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
// GLAPI PFNGLUNIFORMMATRIX4FVPROC glad_glUniformMatrix4fv
// #define glUniformMatrix4fv glad_glUniformMatrix4fv
// type voidptr PFNGLVALIDATEPROGRAMPROC)(GLuint program)
// GLAPI PFNGLVALIDATEPROGRAMPROC glad_glValidateProgram
// #define glValidateProgram glad_glValidateProgram
// type voidptr PFNGLVERTEXATTRIB1DPROC)(GLuint index, GLdouble x)
// GLAPI PFNGLVERTEXATTRIB1DPROC glad_glVertexAttrib1d
// #define glVertexAttrib1d glad_glVertexAttrib1d
// type voidptr PFNGLVERTEXATTRIB1DVPROC)(GLuint index, const GLdouble *v)
// GLAPI PFNGLVERTEXATTRIB1DVPROC glad_glVertexAttrib1dv
// #define glVertexAttrib1dv glad_glVertexAttrib1dv
// type voidptr PFNGLVERTEXATTRIB1FPROC)(GLuint index, GLfloat x)
// GLAPI PFNGLVERTEXATTRIB1FPROC glad_glVertexAttrib1f
// #define glVertexAttrib1f glad_glVertexAttrib1f
// type voidptr PFNGLVERTEXATTRIB1FVPROC)(GLuint index, const GLfloat *v)
// GLAPI PFNGLVERTEXATTRIB1FVPROC glad_glVertexAttrib1fv
// #define glVertexAttrib1fv glad_glVertexAttrib1fv
// type voidptr PFNGLVERTEXATTRIB1SPROC)(GLuint index, GLshort x)
// GLAPI PFNGLVERTEXATTRIB1SPROC glad_glVertexAttrib1s
// #define glVertexAttrib1s glad_glVertexAttrib1s
// type voidptr PFNGLVERTEXATTRIB1SVPROC)(GLuint index, const GLshort *v)
// GLAPI PFNGLVERTEXATTRIB1SVPROC glad_glVertexAttrib1sv
// #define glVertexAttrib1sv glad_glVertexAttrib1sv
// type voidptr PFNGLVERTEXATTRIB2DPROC)(GLuint index, GLdouble x, GLdouble y)
// GLAPI PFNGLVERTEXATTRIB2DPROC glad_glVertexAttrib2d
// #define glVertexAttrib2d glad_glVertexAttrib2d
// type voidptr PFNGLVERTEXATTRIB2DVPROC)(GLuint index, const GLdouble *v)
// GLAPI PFNGLVERTEXATTRIB2DVPROC glad_glVertexAttrib2dv
// #define glVertexAttrib2dv glad_glVertexAttrib2dv
// type voidptr PFNGLVERTEXATTRIB2FPROC)(GLuint index, GLfloat x, GLfloat y)
// GLAPI PFNGLVERTEXATTRIB2FPROC glad_glVertexAttrib2f
// #define glVertexAttrib2f glad_glVertexAttrib2f
// type voidptr PFNGLVERTEXATTRIB2FVPROC)(GLuint index, const GLfloat *v)
// GLAPI PFNGLVERTEXATTRIB2FVPROC glad_glVertexAttrib2fv
// #define glVertexAttrib2fv glad_glVertexAttrib2fv
// type voidptr PFNGLVERTEXATTRIB2SPROC)(GLuint index, GLshort x, GLshort y)
// GLAPI PFNGLVERTEXATTRIB2SPROC glad_glVertexAttrib2s
// #define glVertexAttrib2s glad_glVertexAttrib2s
// type voidptr PFNGLVERTEXATTRIB2SVPROC)(GLuint index, const GLshort *v)
// GLAPI PFNGLVERTEXATTRIB2SVPROC glad_glVertexAttrib2sv
// #define glVertexAttrib2sv glad_glVertexAttrib2sv
// type voidptr PFNGLVERTEXATTRIB3DPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z)
// GLAPI PFNGLVERTEXATTRIB3DPROC glad_glVertexAttrib3d
// #define glVertexAttrib3d glad_glVertexAttrib3d
// type voidptr PFNGLVERTEXATTRIB3DVPROC)(GLuint index, const GLdouble *v)
// GLAPI PFNGLVERTEXATTRIB3DVPROC glad_glVertexAttrib3dv
// #define glVertexAttrib3dv glad_glVertexAttrib3dv
// type voidptr PFNGLVERTEXATTRIB3FPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat z)
// GLAPI PFNGLVERTEXATTRIB3FPROC glad_glVertexAttrib3f
// #define glVertexAttrib3f glad_glVertexAttrib3f
// type voidptr PFNGLVERTEXATTRIB3FVPROC)(GLuint index, const GLfloat *v)
// GLAPI PFNGLVERTEXATTRIB3FVPROC glad_glVertexAttrib3fv
// #define glVertexAttrib3fv glad_glVertexAttrib3fv
// type voidptr PFNGLVERTEXATTRIB3SPROC)(GLuint index, GLshort x, GLshort y, GLshort z)
// GLAPI PFNGLVERTEXATTRIB3SPROC glad_glVertexAttrib3s
// #define glVertexAttrib3s glad_glVertexAttrib3s
// type voidptr PFNGLVERTEXATTRIB3SVPROC)(GLuint index, const GLshort *v)
// GLAPI PFNGLVERTEXATTRIB3SVPROC glad_glVertexAttrib3sv
// #define glVertexAttrib3sv glad_glVertexAttrib3sv
// type voidptr PFNGLVERTEXATTRIB4NBVPROC)(GLuint index, const GLbyte *v)
// GLAPI PFNGLVERTEXATTRIB4NBVPROC glad_glVertexAttrib4Nbv
// #define glVertexAttrib4Nbv glad_glVertexAttrib4Nbv
// type voidptr PFNGLVERTEXATTRIB4NIVPROC)(GLuint index, const GLint *v)
// GLAPI PFNGLVERTEXATTRIB4NIVPROC glad_glVertexAttrib4Niv
// #define glVertexAttrib4Niv glad_glVertexAttrib4Niv
// type voidptr PFNGLVERTEXATTRIB4NSVPROC)(GLuint index, const GLshort *v)
// GLAPI PFNGLVERTEXATTRIB4NSVPROC glad_glVertexAttrib4Nsv
// #define glVertexAttrib4Nsv glad_glVertexAttrib4Nsv
// type voidptr PFNGLVERTEXATTRIB4NUBPROC)(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w)
// GLAPI PFNGLVERTEXATTRIB4NUBPROC glad_glVertexAttrib4Nub
// #define glVertexAttrib4Nub glad_glVertexAttrib4Nub
// type voidptr PFNGLVERTEXATTRIB4NUBVPROC)(GLuint index, const GLubyte *v)
// GLAPI PFNGLVERTEXATTRIB4NUBVPROC glad_glVertexAttrib4Nubv
// #define glVertexAttrib4Nubv glad_glVertexAttrib4Nubv
// type voidptr PFNGLVERTEXATTRIB4NUIVPROC)(GLuint index, const GLuint *v)
// GLAPI PFNGLVERTEXATTRIB4NUIVPROC glad_glVertexAttrib4Nuiv
// #define glVertexAttrib4Nuiv glad_glVertexAttrib4Nuiv
// type voidptr PFNGLVERTEXATTRIB4NUSVPROC)(GLuint index, const GLushort *v)
// GLAPI PFNGLVERTEXATTRIB4NUSVPROC glad_glVertexAttrib4Nusv
// #define glVertexAttrib4Nusv glad_glVertexAttrib4Nusv
// type voidptr PFNGLVERTEXATTRIB4BVPROC)(GLuint index, const GLbyte *v)
// GLAPI PFNGLVERTEXATTRIB4BVPROC glad_glVertexAttrib4bv
// #define glVertexAttrib4bv glad_glVertexAttrib4bv
// type voidptr PFNGLVERTEXATTRIB4DPROC)(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w)
// GLAPI PFNGLVERTEXATTRIB4DPROC glad_glVertexAttrib4d
// #define glVertexAttrib4d glad_glVertexAttrib4d
// type voidptr PFNGLVERTEXATTRIB4DVPROC)(GLuint index, const GLdouble *v)
// GLAPI PFNGLVERTEXATTRIB4DVPROC glad_glVertexAttrib4dv
// #define glVertexAttrib4dv glad_glVertexAttrib4dv
// type voidptr PFNGLVERTEXATTRIB4FPROC)(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
// GLAPI PFNGLVERTEXATTRIB4FPROC glad_glVertexAttrib4f
// #define glVertexAttrib4f glad_glVertexAttrib4f
// type voidptr PFNGLVERTEXATTRIB4FVPROC)(GLuint index, const GLfloat *v)
// GLAPI PFNGLVERTEXATTRIB4FVPROC glad_glVertexAttrib4fv
// #define glVertexAttrib4fv glad_glVertexAttrib4fv
// type voidptr PFNGLVERTEXATTRIB4IVPROC)(GLuint index, const GLint *v)
// GLAPI PFNGLVERTEXATTRIB4IVPROC glad_glVertexAttrib4iv
// #define glVertexAttrib4iv glad_glVertexAttrib4iv
// type voidptr PFNGLVERTEXATTRIB4SPROC)(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w)
// GLAPI PFNGLVERTEXATTRIB4SPROC glad_glVertexAttrib4s
// #define glVertexAttrib4s glad_glVertexAttrib4s
// type voidptr PFNGLVERTEXATTRIB4SVPROC)(GLuint index, const GLshort *v)
// GLAPI PFNGLVERTEXATTRIB4SVPROC glad_glVertexAttrib4sv
// #define glVertexAttrib4sv glad_glVertexAttrib4sv
// type voidptr PFNGLVERTEXATTRIB4UBVPROC)(GLuint index, const GLubyte *v)
// GLAPI PFNGLVERTEXATTRIB4UBVPROC glad_glVertexAttrib4ubv
// #define glVertexAttrib4ubv glad_glVertexAttrib4ubv
// type voidptr PFNGLVERTEXATTRIB4UIVPROC)(GLuint index, const GLuint *v)
// GLAPI PFNGLVERTEXATTRIB4UIVPROC glad_glVertexAttrib4uiv
// #define glVertexAttrib4uiv glad_glVertexAttrib4uiv
// type voidptr PFNGLVERTEXATTRIB4USVPROC)(GLuint index, const GLushort *v)
// GLAPI PFNGLVERTEXATTRIB4USVPROC glad_glVertexAttrib4usv
// #define glVertexAttrib4usv glad_glVertexAttrib4usv
[typedef]
fn C.glVertexAttribPointer(index GLuint, size GLint, type GLenum, normalized GLboolean, stride GLsizei, pointer voidptr) voidptr

// #endif
// #ifndef GL_VERSION_2_1
// #define GL_VERSION_2_1 1
// GLAPI int GLAD_GL_VERSION_2_1
// type voidptr PFNGLUNIFORMMATRIX2X3FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
// GLAPI PFNGLUNIFORMMATRIX2X3FVPROC glad_glUniformMatrix2x3fv
// #define glUniformMatrix2x3fv glad_glUniformMatrix2x3fv
// type voidptr PFNGLUNIFORMMATRIX3X2FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
// GLAPI PFNGLUNIFORMMATRIX3X2FVPROC glad_glUniformMatrix3x2fv
// #define glUniformMatrix3x2fv glad_glUniformMatrix3x2fv
// type voidptr PFNGLUNIFORMMATRIX2X4FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
// GLAPI PFNGLUNIFORMMATRIX2X4FVPROC glad_glUniformMatrix2x4fv
// #define glUniformMatrix2x4fv glad_glUniformMatrix2x4fv
// type voidptr PFNGLUNIFORMMATRIX4X2FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
// GLAPI PFNGLUNIFORMMATRIX4X2FVPROC glad_glUniformMatrix4x2fv
// #define glUniformMatrix4x2fv glad_glUniformMatrix4x2fv
// type voidptr PFNGLUNIFORMMATRIX3X4FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
// GLAPI PFNGLUNIFORMMATRIX3X4FVPROC glad_glUniformMatrix3x4fv
// #define glUniformMatrix3x4fv glad_glUniformMatrix3x4fv
// type voidptr PFNGLUNIFORMMATRIX4X3FVPROC)(GLint location, GLsizei count, GLboolean transpose, const GLfloat *value)
// GLAPI PFNGLUNIFORMMATRIX4X3FVPROC glad_glUniformMatrix4x3fv
// #define glUniformMatrix4x3fv glad_glUniformMatrix4x3fv
// #endif
// #ifndef GL_VERSION_3_0
// #define GL_VERSION_3_0 1
// GLAPI int GLAD_GL_VERSION_3_0
// type voidptr PFNGLCOLORMASKIPROC)(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a)
// GLAPI PFNGLCOLORMASKIPROC glad_glColorMaski
// #define glColorMaski glad_glColorMaski
// type voidptr PFNGLGETBOOLEANI_VPROC)(GLenum target, GLuint index, GLboolean *data)
// GLAPI PFNGLGETBOOLEANI_VPROC glad_glGetBooleani_v
// #define glGetBooleani_v glad_glGetBooleani_v
// type voidptr PFNGLGETINTEGERI_VPROC)(GLenum target, GLuint index, GLint *data)
// GLAPI PFNGLGETINTEGERI_VPROC glad_glGetIntegeri_v
// #define glGetIntegeri_v glad_glGetIntegeri_v
// type voidptr PFNGLENABLEIPROC)(GLenum target, GLuint index)
// GLAPI PFNGLENABLEIPROC glad_glEnablei
// #define glEnablei glad_glEnablei
// type voidptr PFNGLDISABLEIPROC)(GLenum target, GLuint index)
// GLAPI PFNGLDISABLEIPROC glad_glDisablei
// #define glDisablei glad_glDisablei
// type GLboolean PFNGLISENABLEDIPROC)(GLenum target, GLuint index)
// GLAPI PFNGLISENABLEDIPROC glad_glIsEnabledi
// #define glIsEnabledi glad_glIsEnabledi
// type voidptr PFNGLBEGINTRANSFORMFEEDBACKPROC)(GLenum primitiveMode)
// GLAPI PFNGLBEGINTRANSFORMFEEDBACKPROC glad_glBeginTransformFeedback
// #define glBeginTransformFeedback glad_glBeginTransformFeedback
// type voidptr PFNGLENDTRANSFORMFEEDBACKPROC)(void)
// GLAPI PFNGLENDTRANSFORMFEEDBACKPROC glad_glEndTransformFeedback
// #define glEndTransformFeedback glad_glEndTransformFeedback
// type voidptr PFNGLBINDBUFFERRANGEPROC)(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size)
// GLAPI PFNGLBINDBUFFERRANGEPROC glad_glBindBufferRange
// #define glBindBufferRange glad_glBindBufferRange
// type voidptr PFNGLBINDBUFFERBASEPROC)(GLenum target, GLuint index, GLuint buffer)
// GLAPI PFNGLBINDBUFFERBASEPROC glad_glBindBufferBase
// #define glBindBufferBase glad_glBindBufferBase
// type voidptr PFNGLTRANSFORMFEEDBACKVARYINGSPROC)(GLuint program, GLsizei count, const GLchar *const*varyings, GLenum bufferMode)
// GLAPI PFNGLTRANSFORMFEEDBACKVARYINGSPROC glad_glTransformFeedbackVaryings
// #define glTransformFeedbackVaryings glad_glTransformFeedbackVaryings
// type voidptr PFNGLGETTRANSFORMFEEDBACKVARYINGPROC)(GLuint program, GLuint index, GLsizei bufSize, GLsizei *length, GLsizei *size, GLenum *type, GLchar *name)
// GLAPI PFNGLGETTRANSFORMFEEDBACKVARYINGPROC glad_glGetTransformFeedbackVarying
// #define glGetTransformFeedbackVarying glad_glGetTransformFeedbackVarying
// type voidptr PFNGLCLAMPCOLORPROC)(GLenum target, GLenum clamp)
// GLAPI PFNGLCLAMPCOLORPROC glad_glClampColor
// #define glClampColor glad_glClampColor
// type voidptr PFNGLBEGINCONDITIONALRENDERPROC)(GLuint id, GLenum mode)
// GLAPI PFNGLBEGINCONDITIONALRENDERPROC glad_glBeginConditionalRender
// #define glBeginConditionalRender glad_glBeginConditionalRender
// type voidptr PFNGLENDCONDITIONALRENDERPROC)(void)
// GLAPI PFNGLENDCONDITIONALRENDERPROC glad_glEndConditionalRender
// #define glEndConditionalRender glad_glEndConditionalRender
// type voidptr PFNGLVERTEXATTRIBIPOINTERPROC)(GLuint index, GLint size, GLenum type, GLsizei stride, const voidptr *pointer)
// GLAPI PFNGLVERTEXATTRIBIPOINTERPROC glad_glVertexAttribIPointer
// #define glVertexAttribIPointer glad_glVertexAttribIPointer
// type voidptr PFNGLGETVERTEXATTRIBIIVPROC)(GLuint index, GLenum pname, GLint *params)
// GLAPI PFNGLGETVERTEXATTRIBIIVPROC glad_glGetVertexAttribIiv
// #define glGetVertexAttribIiv glad_glGetVertexAttribIiv
// type voidptr PFNGLGETVERTEXATTRIBIUIVPROC)(GLuint index, GLenum pname, GLuint *params)
// GLAPI PFNGLGETVERTEXATTRIBIUIVPROC glad_glGetVertexAttribIuiv
// #define glGetVertexAttribIuiv glad_glGetVertexAttribIuiv
// type voidptr PFNGLVERTEXATTRIBI1IPROC)(GLuint index, GLint x)
// GLAPI PFNGLVERTEXATTRIBI1IPROC glad_glVertexAttribI1i
// #define glVertexAttribI1i glad_glVertexAttribI1i
// type voidptr PFNGLVERTEXATTRIBI2IPROC)(GLuint index, GLint x, GLint y)
// GLAPI PFNGLVERTEXATTRIBI2IPROC glad_glVertexAttribI2i
// #define glVertexAttribI2i glad_glVertexAttribI2i
// type voidptr PFNGLVERTEXATTRIBI3IPROC)(GLuint index, GLint x, GLint y, GLint z)
// GLAPI PFNGLVERTEXATTRIBI3IPROC glad_glVertexAttribI3i
// #define glVertexAttribI3i glad_glVertexAttribI3i
// type voidptr PFNGLVERTEXATTRIBI4IPROC)(GLuint index, GLint x, GLint y, GLint z, GLint w)
// GLAPI PFNGLVERTEXATTRIBI4IPROC glad_glVertexAttribI4i
// #define glVertexAttribI4i glad_glVertexAttribI4i
// type voidptr PFNGLVERTEXATTRIBI1UIPROC)(GLuint index, GLuint x)
// GLAPI PFNGLVERTEXATTRIBI1UIPROC glad_glVertexAttribI1ui
// #define glVertexAttribI1ui glad_glVertexAttribI1ui
// type voidptr PFNGLVERTEXATTRIBI2UIPROC)(GLuint index, GLuint x, GLuint y)
// GLAPI PFNGLVERTEXATTRIBI2UIPROC glad_glVertexAttribI2ui
// #define glVertexAttribI2ui glad_glVertexAttribI2ui
// type voidptr PFNGLVERTEXATTRIBI3UIPROC)(GLuint index, GLuint x, GLuint y, GLuint z)
// GLAPI PFNGLVERTEXATTRIBI3UIPROC glad_glVertexAttribI3ui
// #define glVertexAttribI3ui glad_glVertexAttribI3ui
// type voidptr PFNGLVERTEXATTRIBI4UIPROC)(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w)
// GLAPI PFNGLVERTEXATTRIBI4UIPROC glad_glVertexAttribI4ui
// #define glVertexAttribI4ui glad_glVertexAttribI4ui
// type voidptr PFNGLVERTEXATTRIBI1IVPROC)(GLuint index, const GLint *v)
// GLAPI PFNGLVERTEXATTRIBI1IVPROC glad_glVertexAttribI1iv
// #define glVertexAttribI1iv glad_glVertexAttribI1iv
// type voidptr PFNGLVERTEXATTRIBI2IVPROC)(GLuint index, const GLint *v)
// GLAPI PFNGLVERTEXATTRIBI2IVPROC glad_glVertexAttribI2iv
// #define glVertexAttribI2iv glad_glVertexAttribI2iv
// type voidptr PFNGLVERTEXATTRIBI3IVPROC)(GLuint index, const GLint *v)
// GLAPI PFNGLVERTEXATTRIBI3IVPROC glad_glVertexAttribI3iv
// #define glVertexAttribI3iv glad_glVertexAttribI3iv
// type voidptr PFNGLVERTEXATTRIBI4IVPROC)(GLuint index, const GLint *v)
// GLAPI PFNGLVERTEXATTRIBI4IVPROC glad_glVertexAttribI4iv
// #define glVertexAttribI4iv glad_glVertexAttribI4iv
// type voidptr PFNGLVERTEXATTRIBI1UIVPROC)(GLuint index, const GLuint *v)
// GLAPI PFNGLVERTEXATTRIBI1UIVPROC glad_glVertexAttribI1uiv
// #define glVertexAttribI1uiv glad_glVertexAttribI1uiv
// type voidptr PFNGLVERTEXATTRIBI2UIVPROC)(GLuint index, const GLuint *v)
// GLAPI PFNGLVERTEXATTRIBI2UIVPROC glad_glVertexAttribI2uiv
// #define glVertexAttribI2uiv glad_glVertexAttribI2uiv
// type voidptr PFNGLVERTEXATTRIBI3UIVPROC)(GLuint index, const GLuint *v)
// GLAPI PFNGLVERTEXATTRIBI3UIVPROC glad_glVertexAttribI3uiv
// #define glVertexAttribI3uiv glad_glVertexAttribI3uiv
// type voidptr PFNGLVERTEXATTRIBI4UIVPROC)(GLuint index, const GLuint *v)
// GLAPI PFNGLVERTEXATTRIBI4UIVPROC glad_glVertexAttribI4uiv
// #define glVertexAttribI4uiv glad_glVertexAttribI4uiv
// type voidptr PFNGLVERTEXATTRIBI4BVPROC)(GLuint index, const GLbyte *v)
// GLAPI PFNGLVERTEXATTRIBI4BVPROC glad_glVertexAttribI4bv
// #define glVertexAttribI4bv glad_glVertexAttribI4bv
// type voidptr PFNGLVERTEXATTRIBI4SVPROC)(GLuint index, const GLshort *v)
// GLAPI PFNGLVERTEXATTRIBI4SVPROC glad_glVertexAttribI4sv
// #define glVertexAttribI4sv glad_glVertexAttribI4sv
// type voidptr PFNGLVERTEXATTRIBI4UBVPROC)(GLuint index, const GLubyte *v)
// GLAPI PFNGLVERTEXATTRIBI4UBVPROC glad_glVertexAttribI4ubv
// #define glVertexAttribI4ubv glad_glVertexAttribI4ubv
// type voidptr PFNGLVERTEXATTRIBI4USVPROC)(GLuint index, const GLushort *v)
// GLAPI PFNGLVERTEXATTRIBI4USVPROC glad_glVertexAttribI4usv
// #define glVertexAttribI4usv glad_glVertexAttribI4usv
// type voidptr PFNGLGETUNIFORMUIVPROC)(GLuint program, GLint location, GLuint *params)
// GLAPI PFNGLGETUNIFORMUIVPROC glad_glGetUniformuiv
// #define glGetUniformuiv glad_glGetUniformuiv
// type voidptr PFNGLBINDFRAGDATALOCATIONPROC)(GLuint program, GLuint color, const GLchar *name)
// GLAPI PFNGLBINDFRAGDATALOCATIONPROC glad_glBindFragDataLocation
// #define glBindFragDataLocation glad_glBindFragDataLocation
// type GLint PFNGLGETFRAGDATALOCATIONPROC)(GLuint program, const GLchar *name)
// GLAPI PFNGLGETFRAGDATALOCATIONPROC glad_glGetFragDataLocation
// #define glGetFragDataLocation glad_glGetFragDataLocation
// type voidptr PFNGLUNIFORM1UIPROC)(GLint location, GLuint v0)
// GLAPI PFNGLUNIFORM1UIPROC glad_glUniform1ui
// #define glUniform1ui glad_glUniform1ui
// type voidptr PFNGLUNIFORM2UIPROC)(GLint location, GLuint v0, GLuint v1)
// GLAPI PFNGLUNIFORM2UIPROC glad_glUniform2ui
// #define glUniform2ui glad_glUniform2ui
// type voidptr PFNGLUNIFORM3UIPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2)
// GLAPI PFNGLUNIFORM3UIPROC glad_glUniform3ui
// #define glUniform3ui glad_glUniform3ui
// type voidptr PFNGLUNIFORM4UIPROC)(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3)
// GLAPI PFNGLUNIFORM4UIPROC glad_glUniform4ui
// #define glUniform4ui glad_glUniform4ui
// type voidptr PFNGLUNIFORM1UIVPROC)(GLint location, GLsizei count, const GLuint *value)
// GLAPI PFNGLUNIFORM1UIVPROC glad_glUniform1uiv
// #define glUniform1uiv glad_glUniform1uiv
// type voidptr PFNGLUNIFORM2UIVPROC)(GLint location, GLsizei count, const GLuint *value)
// GLAPI PFNGLUNIFORM2UIVPROC glad_glUniform2uiv
// #define glUniform2uiv glad_glUniform2uiv
// type voidptr PFNGLUNIFORM3UIVPROC)(GLint location, GLsizei count, const GLuint *value)
// GLAPI PFNGLUNIFORM3UIVPROC glad_glUniform3uiv
// #define glUniform3uiv glad_glUniform3uiv
// type voidptr PFNGLUNIFORM4UIVPROC)(GLint location, GLsizei count, const GLuint *value)
// GLAPI PFNGLUNIFORM4UIVPROC glad_glUniform4uiv
// #define glUniform4uiv glad_glUniform4uiv
// type voidptr PFNGLTEXPARAMETERIIVPROC)(GLenum target, GLenum pname, const GLint *params)
// GLAPI PFNGLTEXPARAMETERIIVPROC glad_glTexParameterIiv
// #define glTexParameterIiv glad_glTexParameterIiv
// type voidptr PFNGLTEXPARAMETERIUIVPROC)(GLenum target, GLenum pname, const GLuint *params)
// GLAPI PFNGLTEXPARAMETERIUIVPROC glad_glTexParameterIuiv
// #define glTexParameterIuiv glad_glTexParameterIuiv
// type voidptr PFNGLGETTEXPARAMETERIIVPROC)(GLenum target, GLenum pname, GLint *params)
// GLAPI PFNGLGETTEXPARAMETERIIVPROC glad_glGetTexParameterIiv
// #define glGetTexParameterIiv glad_glGetTexParameterIiv
// type voidptr PFNGLGETTEXPARAMETERIUIVPROC)(GLenum target, GLenum pname, GLuint *params)
// GLAPI PFNGLGETTEXPARAMETERIUIVPROC glad_glGetTexParameterIuiv
// #define glGetTexParameterIuiv glad_glGetTexParameterIuiv
// type voidptr PFNGLCLEARBUFFERIVPROC)(GLenum buffer, GLint drawbuffer, const GLint *value)
// GLAPI PFNGLCLEARBUFFERIVPROC glad_glClearBufferiv
// #define glClearBufferiv glad_glClearBufferiv
// type voidptr PFNGLCLEARBUFFERUIVPROC)(GLenum buffer, GLint drawbuffer, const GLuint *value)
// GLAPI PFNGLCLEARBUFFERUIVPROC glad_glClearBufferuiv
// #define glClearBufferuiv glad_glClearBufferuiv
// type voidptr PFNGLCLEARBUFFERFVPROC)(GLenum buffer, GLint drawbuffer, const GLfloat *value)
// GLAPI PFNGLCLEARBUFFERFVPROC glad_glClearBufferfv
// #define glClearBufferfv glad_glClearBufferfv
// type voidptr PFNGLCLEARBUFFERFIPROC)(GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil)
// GLAPI PFNGLCLEARBUFFERFIPROC glad_glClearBufferfi
// #define glClearBufferfi glad_glClearBufferfi
// type const GLubyte * PFNGLGETSTRINGIPROC)(GLenum name, GLuint index)
// GLAPI PFNGLGETSTRINGIPROC glad_glGetStringi
// #define glGetStringi glad_glGetStringi
// type GLboolean PFNGLISRENDERBUFFERPROC)(GLuint renderbuffer)
// GLAPI PFNGLISRENDERBUFFERPROC glad_glIsRenderbuffer
// #define glIsRenderbuffer glad_glIsRenderbuffer
// type voidptr PFNGLBINDRENDERBUFFERPROC)(GLenum target, GLuint renderbuffer)
// GLAPI PFNGLBINDRENDERBUFFERPROC glad_glBindRenderbuffer
// #define glBindRenderbuffer glad_glBindRenderbuffer
// type voidptr PFNGLDELETERENDERBUFFERSPROC)(GLsizei n, const GLuint *renderbuffers)
// GLAPI PFNGLDELETERENDERBUFFERSPROC glad_glDeleteRenderbuffers
// #define glDeleteRenderbuffers glad_glDeleteRenderbuffers
// type voidptr PFNGLGENRENDERBUFFERSPROC)(GLsizei n, GLuint *renderbuffers)
// GLAPI PFNGLGENRENDERBUFFERSPROC glad_glGenRenderbuffers
// #define glGenRenderbuffers glad_glGenRenderbuffers
// type voidptr PFNGLRENDERBUFFERSTORAGEPROC)(GLenum target, GLenum internalformat, GLsizei width, GLsizei height)
// GLAPI PFNGLRENDERBUFFERSTORAGEPROC glad_glRenderbufferStorage
// #define glRenderbufferStorage glad_glRenderbufferStorage
// type voidptr PFNGLGETRENDERBUFFERPARAMETERIVPROC)(GLenum target, GLenum pname, GLint *params)
// GLAPI PFNGLGETRENDERBUFFERPARAMETERIVPROC glad_glGetRenderbufferParameteriv
// #define glGetRenderbufferParameteriv glad_glGetRenderbufferParameteriv
// type GLboolean PFNGLISFRAMEBUFFERPROC)(GLuint framebuffer)
// GLAPI PFNGLISFRAMEBUFFERPROC glad_glIsFramebuffer
// #define glIsFramebuffer glad_glIsFramebuffer
// type voidptr PFNGLBINDFRAMEBUFFERPROC)(GLenum target, GLuint framebuffer)
// GLAPI PFNGLBINDFRAMEBUFFERPROC glad_glBindFramebuffer
// #define glBindFramebuffer glad_glBindFramebuffer
// type voidptr PFNGLDELETEFRAMEBUFFERSPROC)(GLsizei n, const GLuint *framebuffers)
// GLAPI PFNGLDELETEFRAMEBUFFERSPROC glad_glDeleteFramebuffers
// #define glDeleteFramebuffers glad_glDeleteFramebuffers
// type voidptr PFNGLGENFRAMEBUFFERSPROC)(GLsizei n, GLuint *framebuffers)
// GLAPI PFNGLGENFRAMEBUFFERSPROC glad_glGenFramebuffers
// #define glGenFramebuffers glad_glGenFramebuffers
// type GLenum PFNGLCHECKFRAMEBUFFERSTATUSPROC)(GLenum target)
// GLAPI PFNGLCHECKFRAMEBUFFERSTATUSPROC glad_glCheckFramebufferStatus
// #define glCheckFramebufferStatus glad_glCheckFramebufferStatus
// type voidptr PFNGLFRAMEBUFFERTEXTURE1DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
// GLAPI PFNGLFRAMEBUFFERTEXTURE1DPROC glad_glFramebufferTexture1D
// #define glFramebufferTexture1D glad_glFramebufferTexture1D
// type voidptr PFNGLFRAMEBUFFERTEXTURE2DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level)
// GLAPI PFNGLFRAMEBUFFERTEXTURE2DPROC glad_glFramebufferTexture2D
// #define glFramebufferTexture2D glad_glFramebufferTexture2D
// type voidptr PFNGLFRAMEBUFFERTEXTURE3DPROC)(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset)
// GLAPI PFNGLFRAMEBUFFERTEXTURE3DPROC glad_glFramebufferTexture3D
// #define glFramebufferTexture3D glad_glFramebufferTexture3D
// type voidptr PFNGLFRAMEBUFFERRENDERBUFFERPROC)(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer)
// GLAPI PFNGLFRAMEBUFFERRENDERBUFFERPROC glad_glFramebufferRenderbuffer
// #define glFramebufferRenderbuffer glad_glFramebufferRenderbuffer
// type voidptr PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC)(GLenum target, GLenum attachment, GLenum pname, GLint *params)
// GLAPI PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC glad_glGetFramebufferAttachmentParameteriv
// #define glGetFramebufferAttachmentParameteriv glad_glGetFramebufferAttachmentParameteriv
// type voidptr PFNGLGENERATEMIPMAPPROC)(GLenum target)
// GLAPI PFNGLGENERATEMIPMAPPROC glad_glGenerateMipmap
// #define glGenerateMipmap glad_glGenerateMipmap
// type voidptr PFNGLBLITFRAMEBUFFERPROC)(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)
// GLAPI PFNGLBLITFRAMEBUFFERPROC glad_glBlitFramebuffer
// #define glBlitFramebuffer glad_glBlitFramebuffer
// type voidptr PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)
// GLAPI PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC glad_glRenderbufferStorageMultisample
// #define glRenderbufferStorageMultisample glad_glRenderbufferStorageMultisample
// type voidptr PFNGLFRAMEBUFFERTEXTURELAYERPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer)
// GLAPI PFNGLFRAMEBUFFERTEXTURELAYERPROC glad_glFramebufferTextureLayer
// #define glFramebufferTextureLayer glad_glFramebufferTextureLayer
// type voidptr * PFNGLMAPBUFFERRANGEPROC)(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access)
// GLAPI PFNGLMAPBUFFERRANGEPROC glad_glMapBufferRange
// #define glMapBufferRange glad_glMapBufferRange
// type voidptr PFNGLFLUSHMAPPEDBUFFERRANGEPROC)(GLenum target, GLintptr offset, GLsizeiptr length)
// GLAPI PFNGLFLUSHMAPPEDBUFFERRANGEPROC glad_glFlushMappedBufferRange
// #define glFlushMappedBufferRange glad_glFlushMappedBufferRange
[typedef]
fn C.glBindVertexArray(array GLuint) voidptr

[typedef]
fn C.glDeleteVertexArrays(n GLsizei, arrays &GLuint) voidptr

[typedef]
fn C.glGenVertexArrays(n GLsizei, arrays &GLuint) voidptr
// type GLboolean PFNGLISVERTEXARRAYPROC)(GLuint array)
// GLAPI PFNGLISVERTEXARRAYPROC glad_glIsVertexArray
// #define glIsVertexArray glad_glIsVertexArray
// #endif
// #ifndef GL_VERSION_3_1
// #define GL_VERSION_3_1 1
// GLAPI int GLAD_GL_VERSION_3_1
// type voidptr PFNGLDRAWARRAYSINSTANCEDPROC)(GLenum mode, GLint first, GLsizei count, GLsizei instancecount)
// GLAPI PFNGLDRAWARRAYSINSTANCEDPROC glad_glDrawArraysInstanced
// #define glDrawArraysInstanced glad_glDrawArraysInstanced
// type voidptr PFNGLDRAWELEMENTSINSTANCEDPROC)(GLenum mode, GLsizei count, GLenum type, const voidptr *indices, GLsizei instancecount)
// GLAPI PFNGLDRAWELEMENTSINSTANCEDPROC glad_glDrawElementsInstanced
// #define glDrawElementsInstanced glad_glDrawElementsInstanced
// type voidptr PFNGLTEXBUFFERPROC)(GLenum target, GLenum internalformat, GLuint buffer)
// GLAPI PFNGLTEXBUFFERPROC glad_glTexBuffer
// #define glTexBuffer glad_glTexBuffer
// type voidptr PFNGLPRIMITIVERESTARTINDEXPROC)(GLuint index)
// GLAPI PFNGLPRIMITIVERESTARTINDEXPROC glad_glPrimitiveRestartIndex
// #define glPrimitiveRestartIndex glad_glPrimitiveRestartIndex
// type voidptr PFNGLCOPYBUFFERSUBDATAPROC)(GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size)
// GLAPI PFNGLCOPYBUFFERSUBDATAPROC glad_glCopyBufferSubData
// #define glCopyBufferSubData glad_glCopyBufferSubData
// type voidptr PFNGLGETUNIFORMINDICESPROC)(GLuint program, GLsizei uniformCount, const GLchar *const*uniformNames, GLuint *uniformIndices)
// GLAPI PFNGLGETUNIFORMINDICESPROC glad_glGetUniformIndices
// #define glGetUniformIndices glad_glGetUniformIndices
// type voidptr PFNGLGETACTIVEUNIFORMSIVPROC)(GLuint program, GLsizei uniformCount, const GLuint *uniformIndices, GLenum pname, GLint *params)
// GLAPI PFNGLGETACTIVEUNIFORMSIVPROC glad_glGetActiveUniformsiv
// #define glGetActiveUniformsiv glad_glGetActiveUniformsiv
// type voidptr PFNGLGETACTIVEUNIFORMNAMEPROC)(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformName)
// GLAPI PFNGLGETACTIVEUNIFORMNAMEPROC glad_glGetActiveUniformName
// #define glGetActiveUniformName glad_glGetActiveUniformName
// type GLuint PFNGLGETUNIFORMBLOCKINDEXPROC)(GLuint program, const GLchar *uniformBlockName)
// GLAPI PFNGLGETUNIFORMBLOCKINDEXPROC glad_glGetUniformBlockIndex
// #define glGetUniformBlockIndex glad_glGetUniformBlockIndex
// type voidptr PFNGLGETACTIVEUNIFORMBLOCKIVPROC)(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint *params)
// GLAPI PFNGLGETACTIVEUNIFORMBLOCKIVPROC glad_glGetActiveUniformBlockiv
// #define glGetActiveUniformBlockiv glad_glGetActiveUniformBlockiv
// type voidptr PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC)(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei *length, GLchar *uniformBlockName)
// GLAPI PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC glad_glGetActiveUniformBlockName
// #define glGetActiveUniformBlockName glad_glGetActiveUniformBlockName
// type voidptr PFNGLUNIFORMBLOCKBINDINGPROC)(GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding)
// GLAPI PFNGLUNIFORMBLOCKBINDINGPROC glad_glUniformBlockBinding
// #define glUniformBlockBinding glad_glUniformBlockBinding
// #endif
// #ifndef GL_VERSION_3_2
// #define GL_VERSION_3_2 1
// GLAPI int GLAD_GL_VERSION_3_2
// type voidptr PFNGLDRAWELEMENTSBASEVERTEXPROC)(GLenum mode, GLsizei count, GLenum type, const voidptr *indices, GLint basevertex)
// GLAPI PFNGLDRAWELEMENTSBASEVERTEXPROC glad_glDrawElementsBaseVertex
// #define glDrawElementsBaseVertex glad_glDrawElementsBaseVertex
// type voidptr PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC)(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const voidptr *indices, GLint basevertex)
// GLAPI PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC glad_glDrawRangeElementsBaseVertex
// #define glDrawRangeElementsBaseVertex glad_glDrawRangeElementsBaseVertex
// type voidptr PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC)(GLenum mode, GLsizei count, GLenum type, const voidptr *indices, GLsizei instancecount, GLint basevertex)
// GLAPI PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC glad_glDrawElementsInstancedBaseVertex
// #define glDrawElementsInstancedBaseVertex glad_glDrawElementsInstancedBaseVertex
// type voidptr PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC)(GLenum mode, const GLsizei *count, GLenum type, const voidptr *const*indices, GLsizei drawcount, const GLint *basevertex)
// GLAPI PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC glad_glMultiDrawElementsBaseVertex
// #define glMultiDrawElementsBaseVertex glad_glMultiDrawElementsBaseVertex
// type voidptr PFNGLPROVOKINGVERTEXPROC)(GLenum mode)
// GLAPI PFNGLPROVOKINGVERTEXPROC glad_glProvokingVertex
// #define glProvokingVertex glad_glProvokingVertex
// type GLsync PFNGLFENCESYNCPROC)(GLenum condition, GLbitfield flags)
// GLAPI PFNGLFENCESYNCPROC glad_glFenceSync
// #define glFenceSync glad_glFenceSync
// type GLboolean PFNGLISSYNCPROC)(GLsync sync)
// GLAPI PFNGLISSYNCPROC glad_glIsSync
// #define glIsSync glad_glIsSync
// type voidptr PFNGLDELETESYNCPROC)(GLsync sync)
// GLAPI PFNGLDELETESYNCPROC glad_glDeleteSync
// #define glDeleteSync glad_glDeleteSync
// type GLenum PFNGLCLIENTWAITSYNCPROC)(GLsync sync, GLbitfield flags, GLuint64 timeout)
// GLAPI PFNGLCLIENTWAITSYNCPROC glad_glClientWaitSync
// #define glClientWaitSync glad_glClientWaitSync
// type voidptr PFNGLWAITSYNCPROC)(GLsync sync, GLbitfield flags, GLuint64 timeout)
// GLAPI PFNGLWAITSYNCPROC glad_glWaitSync
// #define glWaitSync glad_glWaitSync
// type voidptr PFNGLGETINTEGER64VPROC)(GLenum pname, GLint64 *data)
// GLAPI PFNGLGETINTEGER64VPROC glad_glGetInteger64v
// #define glGetInteger64v glad_glGetInteger64v
// type voidptr PFNGLGETSYNCIVPROC)(GLsync sync, GLenum pname, GLsizei count, GLsizei *length, GLint *values)
// GLAPI PFNGLGETSYNCIVPROC glad_glGetSynciv
// #define glGetSynciv glad_glGetSynciv
// type voidptr PFNGLGETINTEGER64I_VPROC)(GLenum target, GLuint index, GLint64 *data)
// GLAPI PFNGLGETINTEGER64I_VPROC glad_glGetInteger64i_v
// #define glGetInteger64i_v glad_glGetInteger64i_v
// type voidptr PFNGLGETBUFFERPARAMETERI64VPROC)(GLenum target, GLenum pname, GLint64 *params)
// GLAPI PFNGLGETBUFFERPARAMETERI64VPROC glad_glGetBufferParameteri64v
// #define glGetBufferParameteri64v glad_glGetBufferParameteri64v
// type voidptr PFNGLFRAMEBUFFERTEXTUREPROC)(GLenum target, GLenum attachment, GLuint texture, GLint level)
// GLAPI PFNGLFRAMEBUFFERTEXTUREPROC glad_glFramebufferTexture
// #define glFramebufferTexture glad_glFramebufferTexture
// type voidptr PFNGLTEXIMAGE2DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations)
// GLAPI PFNGLTEXIMAGE2DMULTISAMPLEPROC glad_glTexImage2DMultisample
// #define glTexImage2DMultisample glad_glTexImage2DMultisample
// type voidptr PFNGLTEXIMAGE3DMULTISAMPLEPROC)(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations)
// GLAPI PFNGLTEXIMAGE3DMULTISAMPLEPROC glad_glTexImage3DMultisample
// #define glTexImage3DMultisample glad_glTexImage3DMultisample
// type voidptr PFNGLGETMULTISAMPLEFVPROC)(GLenum pname, GLuint index, GLfloat *val)
// GLAPI PFNGLGETMULTISAMPLEFVPROC glad_glGetMultisamplefv
// #define glGetMultisamplefv glad_glGetMultisamplefv
// type voidptr PFNGLSAMPLEMASKIPROC)(GLuint maskNumber, GLbitfield mask)
// GLAPI PFNGLSAMPLEMASKIPROC glad_glSampleMaski
// #define glSampleMaski glad_glSampleMaski
// #endif
// #ifndef GL_VERSION_3_3
// #define GL_VERSION_3_3 1
// GLAPI int GLAD_GL_VERSION_3_3
// type voidptr PFNGLBINDFRAGDATALOCATIONINDEXEDPROC)(GLuint program, GLuint colorNumber, GLuint index, const GLchar *name)
// GLAPI PFNGLBINDFRAGDATALOCATIONINDEXEDPROC glad_glBindFragDataLocationIndexed
// #define glBindFragDataLocationIndexed glad_glBindFragDataLocationIndexed
// type GLint PFNGLGETFRAGDATAINDEXPROC)(GLuint program, const GLchar *name)
// GLAPI PFNGLGETFRAGDATAINDEXPROC glad_glGetFragDataIndex
// #define glGetFragDataIndex glad_glGetFragDataIndex
// type voidptr PFNGLGENSAMPLERSPROC)(GLsizei count, GLuint *samplers)
// GLAPI PFNGLGENSAMPLERSPROC glad_glGenSamplers
// #define glGenSamplers glad_glGenSamplers
// type voidptr PFNGLDELETESAMPLERSPROC)(GLsizei count, const GLuint *samplers)
// GLAPI PFNGLDELETESAMPLERSPROC glad_glDeleteSamplers
// #define glDeleteSamplers glad_glDeleteSamplers
// type GLboolean PFNGLISSAMPLERPROC)(GLuint sampler)
// GLAPI PFNGLISSAMPLERPROC glad_glIsSampler
// #define glIsSampler glad_glIsSampler
// type voidptr PFNGLBINDSAMPLERPROC)(GLuint unit, GLuint sampler)
// GLAPI PFNGLBINDSAMPLERPROC glad_glBindSampler
// #define glBindSampler glad_glBindSampler
// type voidptr PFNGLSAMPLERPARAMETERIPROC)(GLuint sampler, GLenum pname, GLint param)
// GLAPI PFNGLSAMPLERPARAMETERIPROC glad_glSamplerParameteri
// #define glSamplerParameteri glad_glSamplerParameteri
// type voidptr PFNGLSAMPLERPARAMETERIVPROC)(GLuint sampler, GLenum pname, const GLint *param)
// GLAPI PFNGLSAMPLERPARAMETERIVPROC glad_glSamplerParameteriv
// #define glSamplerParameteriv glad_glSamplerParameteriv
// type voidptr PFNGLSAMPLERPARAMETERFPROC)(GLuint sampler, GLenum pname, GLfloat param)
// GLAPI PFNGLSAMPLERPARAMETERFPROC glad_glSamplerParameterf
// #define glSamplerParameterf glad_glSamplerParameterf
// type voidptr PFNGLSAMPLERPARAMETERFVPROC)(GLuint sampler, GLenum pname, const GLfloat *param)
// GLAPI PFNGLSAMPLERPARAMETERFVPROC glad_glSamplerParameterfv
// #define glSamplerParameterfv glad_glSamplerParameterfv
// type voidptr PFNGLSAMPLERPARAMETERIIVPROC)(GLuint sampler, GLenum pname, const GLint *param)
// GLAPI PFNGLSAMPLERPARAMETERIIVPROC glad_glSamplerParameterIiv
// #define glSamplerParameterIiv glad_glSamplerParameterIiv
// type voidptr PFNGLSAMPLERPARAMETERIUIVPROC)(GLuint sampler, GLenum pname, const GLuint *param)
// GLAPI PFNGLSAMPLERPARAMETERIUIVPROC glad_glSamplerParameterIuiv
// #define glSamplerParameterIuiv glad_glSamplerParameterIuiv
// type voidptr PFNGLGETSAMPLERPARAMETERIVPROC)(GLuint sampler, GLenum pname, GLint *params)
// GLAPI PFNGLGETSAMPLERPARAMETERIVPROC glad_glGetSamplerParameteriv
// #define glGetSamplerParameteriv glad_glGetSamplerParameteriv
// type voidptr PFNGLGETSAMPLERPARAMETERIIVPROC)(GLuint sampler, GLenum pname, GLint *params)
// GLAPI PFNGLGETSAMPLERPARAMETERIIVPROC glad_glGetSamplerParameterIiv
// #define glGetSamplerParameterIiv glad_glGetSamplerParameterIiv
// type voidptr PFNGLGETSAMPLERPARAMETERFVPROC)(GLuint sampler, GLenum pname, GLfloat *params)
// GLAPI PFNGLGETSAMPLERPARAMETERFVPROC glad_glGetSamplerParameterfv
// #define glGetSamplerParameterfv glad_glGetSamplerParameterfv
// type voidptr PFNGLGETSAMPLERPARAMETERIUIVPROC)(GLuint sampler, GLenum pname, GLuint *params)
// GLAPI PFNGLGETSAMPLERPARAMETERIUIVPROC glad_glGetSamplerParameterIuiv
// #define glGetSamplerParameterIuiv glad_glGetSamplerParameterIuiv
// type voidptr PFNGLQUERYCOUNTERPROC)(GLuint id, GLenum target)
// GLAPI PFNGLQUERYCOUNTERPROC glad_glQueryCounter
// #define glQueryCounter glad_glQueryCounter
// type voidptr PFNGLGETQUERYOBJECTI64VPROC)(GLuint id, GLenum pname, GLint64 *params)
// GLAPI PFNGLGETQUERYOBJECTI64VPROC glad_glGetQueryObjecti64v
// #define glGetQueryObjecti64v glad_glGetQueryObjecti64v
// type voidptr PFNGLGETQUERYOBJECTUI64VPROC)(GLuint id, GLenum pname, GLuint64 *params)
// GLAPI PFNGLGETQUERYOBJECTUI64VPROC glad_glGetQueryObjectui64v
// #define glGetQueryObjectui64v glad_glGetQueryObjectui64v
// type voidptr PFNGLVERTEXATTRIBDIVISORPROC)(GLuint index, GLuint divisor)
// GLAPI PFNGLVERTEXATTRIBDIVISORPROC glad_glVertexAttribDivisor
// #define glVertexAttribDivisor glad_glVertexAttribDivisor
// type voidptr PFNGLVERTEXATTRIBP1UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value)
// GLAPI PFNGLVERTEXATTRIBP1UIPROC glad_glVertexAttribP1ui
// #define glVertexAttribP1ui glad_glVertexAttribP1ui
// type voidptr PFNGLVERTEXATTRIBP1UIVPROC)(GLuint index, GLenum type, GLboolean normalized, const GLuint *value)
// GLAPI PFNGLVERTEXATTRIBP1UIVPROC glad_glVertexAttribP1uiv
// #define glVertexAttribP1uiv glad_glVertexAttribP1uiv
// type voidptr PFNGLVERTEXATTRIBP2UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value)
// GLAPI PFNGLVERTEXATTRIBP2UIPROC glad_glVertexAttribP2ui
// #define glVertexAttribP2ui glad_glVertexAttribP2ui
// type voidptr PFNGLVERTEXATTRIBP2UIVPROC)(GLuint index, GLenum type, GLboolean normalized, const GLuint *value)
// GLAPI PFNGLVERTEXATTRIBP2UIVPROC glad_glVertexAttribP2uiv
// #define glVertexAttribP2uiv glad_glVertexAttribP2uiv
// type voidptr PFNGLVERTEXATTRIBP3UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value)
// GLAPI PFNGLVERTEXATTRIBP3UIPROC glad_glVertexAttribP3ui
// #define glVertexAttribP3ui glad_glVertexAttribP3ui
// type voidptr PFNGLVERTEXATTRIBP3UIVPROC)(GLuint index, GLenum type, GLboolean normalized, const GLuint *value)
// GLAPI PFNGLVERTEXATTRIBP3UIVPROC glad_glVertexAttribP3uiv
// #define glVertexAttribP3uiv glad_glVertexAttribP3uiv
// type voidptr PFNGLVERTEXATTRIBP4UIPROC)(GLuint index, GLenum type, GLboolean normalized, GLuint value)
// GLAPI PFNGLVERTEXATTRIBP4UIPROC glad_glVertexAttribP4ui
// #define glVertexAttribP4ui glad_glVertexAttribP4ui
// type voidptr PFNGLVERTEXATTRIBP4UIVPROC)(GLuint index, GLenum type, GLboolean normalized, const GLuint *value)
// GLAPI PFNGLVERTEXATTRIBP4UIVPROC glad_glVertexAttribP4uiv
// #define glVertexAttribP4uiv glad_glVertexAttribP4uiv
// type voidptr PFNGLVERTEXP2UIPROC)(GLenum type, GLuint value)
// GLAPI PFNGLVERTEXP2UIPROC glad_glVertexP2ui
// #define glVertexP2ui glad_glVertexP2ui
// type voidptr PFNGLVERTEXP2UIVPROC)(GLenum type, const GLuint *value)
// GLAPI PFNGLVERTEXP2UIVPROC glad_glVertexP2uiv
// #define glVertexP2uiv glad_glVertexP2uiv
// type voidptr PFNGLVERTEXP3UIPROC)(GLenum type, GLuint value)
// GLAPI PFNGLVERTEXP3UIPROC glad_glVertexP3ui
// #define glVertexP3ui glad_glVertexP3ui
// type voidptr PFNGLVERTEXP3UIVPROC)(GLenum type, const GLuint *value)
// GLAPI PFNGLVERTEXP3UIVPROC glad_glVertexP3uiv
// #define glVertexP3uiv glad_glVertexP3uiv
// type voidptr PFNGLVERTEXP4UIPROC)(GLenum type, GLuint value)
// GLAPI PFNGLVERTEXP4UIPROC glad_glVertexP4ui
// #define glVertexP4ui glad_glVertexP4ui
// type voidptr PFNGLVERTEXP4UIVPROC)(GLenum type, const GLuint *value)
// GLAPI PFNGLVERTEXP4UIVPROC glad_glVertexP4uiv
// #define glVertexP4uiv glad_glVertexP4uiv
// type voidptr PFNGLTEXCOORDP1UIPROC)(GLenum type, GLuint coords)
// GLAPI PFNGLTEXCOORDP1UIPROC glad_glTexCoordP1ui
// #define glTexCoordP1ui glad_glTexCoordP1ui
// type voidptr PFNGLTEXCOORDP1UIVPROC)(GLenum type, const GLuint *coords)
// GLAPI PFNGLTEXCOORDP1UIVPROC glad_glTexCoordP1uiv
// #define glTexCoordP1uiv glad_glTexCoordP1uiv
// type voidptr PFNGLTEXCOORDP2UIPROC)(GLenum type, GLuint coords)
// GLAPI PFNGLTEXCOORDP2UIPROC glad_glTexCoordP2ui
// #define glTexCoordP2ui glad_glTexCoordP2ui
// type voidptr PFNGLTEXCOORDP2UIVPROC)(GLenum type, const GLuint *coords)
// GLAPI PFNGLTEXCOORDP2UIVPROC glad_glTexCoordP2uiv
// #define glTexCoordP2uiv glad_glTexCoordP2uiv
// type voidptr PFNGLTEXCOORDP3UIPROC)(GLenum type, GLuint coords)
// GLAPI PFNGLTEXCOORDP3UIPROC glad_glTexCoordP3ui
// #define glTexCoordP3ui glad_glTexCoordP3ui
// type voidptr PFNGLTEXCOORDP3UIVPROC)(GLenum type, const GLuint *coords)
// GLAPI PFNGLTEXCOORDP3UIVPROC glad_glTexCoordP3uiv
// #define glTexCoordP3uiv glad_glTexCoordP3uiv
// type voidptr PFNGLTEXCOORDP4UIPROC)(GLenum type, GLuint coords)
// GLAPI PFNGLTEXCOORDP4UIPROC glad_glTexCoordP4ui
// #define glTexCoordP4ui glad_glTexCoordP4ui
// type voidptr PFNGLTEXCOORDP4UIVPROC)(GLenum type, const GLuint *coords)
// GLAPI PFNGLTEXCOORDP4UIVPROC glad_glTexCoordP4uiv
// #define glTexCoordP4uiv glad_glTexCoordP4uiv
// type voidptr PFNGLMULTITEXCOORDP1UIPROC)(GLenum texture, GLenum type, GLuint coords)
// GLAPI PFNGLMULTITEXCOORDP1UIPROC glad_glMultiTexCoordP1ui
// #define glMultiTexCoordP1ui glad_glMultiTexCoordP1ui
// type voidptr PFNGLMULTITEXCOORDP1UIVPROC)(GLenum texture, GLenum type, const GLuint *coords)
// GLAPI PFNGLMULTITEXCOORDP1UIVPROC glad_glMultiTexCoordP1uiv
// #define glMultiTexCoordP1uiv glad_glMultiTexCoordP1uiv
// type voidptr PFNGLMULTITEXCOORDP2UIPROC)(GLenum texture, GLenum type, GLuint coords)
// GLAPI PFNGLMULTITEXCOORDP2UIPROC glad_glMultiTexCoordP2ui
// #define glMultiTexCoordP2ui glad_glMultiTexCoordP2ui
// type voidptr PFNGLMULTITEXCOORDP2UIVPROC)(GLenum texture, GLenum type, const GLuint *coords)
// GLAPI PFNGLMULTITEXCOORDP2UIVPROC glad_glMultiTexCoordP2uiv
// #define glMultiTexCoordP2uiv glad_glMultiTexCoordP2uiv
// type voidptr PFNGLMULTITEXCOORDP3UIPROC)(GLenum texture, GLenum type, GLuint coords)
// GLAPI PFNGLMULTITEXCOORDP3UIPROC glad_glMultiTexCoordP3ui
// #define glMultiTexCoordP3ui glad_glMultiTexCoordP3ui
// type voidptr PFNGLMULTITEXCOORDP3UIVPROC)(GLenum texture, GLenum type, const GLuint *coords)
// GLAPI PFNGLMULTITEXCOORDP3UIVPROC glad_glMultiTexCoordP3uiv
// #define glMultiTexCoordP3uiv glad_glMultiTexCoordP3uiv
// type voidptr PFNGLMULTITEXCOORDP4UIPROC)(GLenum texture, GLenum type, GLuint coords)
// GLAPI PFNGLMULTITEXCOORDP4UIPROC glad_glMultiTexCoordP4ui
// #define glMultiTexCoordP4ui glad_glMultiTexCoordP4ui
// type voidptr PFNGLMULTITEXCOORDP4UIVPROC)(GLenum texture, GLenum type, const GLuint *coords)
// GLAPI PFNGLMULTITEXCOORDP4UIVPROC glad_glMultiTexCoordP4uiv
// #define glMultiTexCoordP4uiv glad_glMultiTexCoordP4uiv
// type voidptr PFNGLNORMALP3UIPROC)(GLenum type, GLuint coords)
// GLAPI PFNGLNORMALP3UIPROC glad_glNormalP3ui
// #define glNormalP3ui glad_glNormalP3ui
// type voidptr PFNGLNORMALP3UIVPROC)(GLenum type, const GLuint *coords)
// GLAPI PFNGLNORMALP3UIVPROC glad_glNormalP3uiv
// #define glNormalP3uiv glad_glNormalP3uiv
// type voidptr PFNGLCOLORP3UIPROC)(GLenum type, GLuint color)
// GLAPI PFNGLCOLORP3UIPROC glad_glColorP3ui
// #define glColorP3ui glad_glColorP3ui
// type voidptr PFNGLCOLORP3UIVPROC)(GLenum type, const GLuint *color)
// GLAPI PFNGLCOLORP3UIVPROC glad_glColorP3uiv
// #define glColorP3uiv glad_glColorP3uiv
// type voidptr PFNGLCOLORP4UIPROC)(GLenum type, GLuint color)
// GLAPI PFNGLCOLORP4UIPROC glad_glColorP4ui
// #define glColorP4ui glad_glColorP4ui
// type voidptr PFNGLCOLORP4UIVPROC)(GLenum type, const GLuint *color)
// GLAPI PFNGLCOLORP4UIVPROC glad_glColorP4uiv
// #define glColorP4uiv glad_glColorP4uiv
// type voidptr PFNGLSECONDARYCOLORP3UIPROC)(GLenum type, GLuint color)
// GLAPI PFNGLSECONDARYCOLORP3UIPROC glad_glSecondaryColorP3ui
// #define glSecondaryColorP3ui glad_glSecondaryColorP3ui
// type voidptr PFNGLSECONDARYCOLORP3UIVPROC)(GLenum type, const GLuint *color)
// GLAPI PFNGLSECONDARYCOLORP3UIVPROC glad_glSecondaryColorP3uiv
// #define glSecondaryColorP3uiv glad_glSecondaryColorP3uiv
