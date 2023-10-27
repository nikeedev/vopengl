module vopengl

#flag -Ivendor/include
#include "glad/glad.h"
#include "KHR/khrplatform.h"

$if __gl_h_ ? {
	$compile_error('OpenGL header already included, remove this include, glad already provides it')
}
#define __gl_h_


pub struct C.gladGLversionStruct
{
	major int
	minor int
}

[typedef]
type GLADloadproc = fn(name &char) &&voidptr

pub fn C.gladLoadGL(voidptr) int

pub fn C.gladLoadGLLoader(GLADloadproc) int

[typedef]
pub type GLenum = u8

[typedef]
pub type GLboolean = u8

[typedef]
pub type GLbitfield = int

[typedef]
pub type GLvoidptr = voidptr

[typedef]
pub type GLbyte = i8

[typedef]
pub type GLubyte = u8

[typedef]
pub type GLshort = i16

[typedef]
pub type GLushort = u16

[typedef]
pub type GLint = int

[typedef]
pub type GLuint = u32

[typedef]
pub type GLclampx = int

[typedef]
pub type GLsizei = int

[typedef]
pub type GLfloat = f32

[typedef]
pub type GLclampf = f32

[typedef]
pub type GLdouble = f64

[typedef]
pub type GLclampd = f64

[typedef]
pub type GLeglClientBufferEXT = &voidptr

[typedef]
pub type GLeglImageOES = &voidptr

[typedef]
pub type GLchar = char

[typedef]
pub type GLcharARB = char

$if macos {
//   [typedef]
//   pub type GLhandleARB = &voidptr
	$compile_error('At the moment you can\'t use vOpenGL )
} $else {
  [typedef]
  pub type GLhandleARB = u32
}
[typedef]
pub type GLhalf = u16

[typedef]
pub type GLhalfARB = u16

[typedef]
pub type GLfixed = int

[typedef]
pub type GLintptr = &int

[typedef]
pub type GLintptrARB = &int

[typedef]
pub type GLsizeiptr = usize

[typedef]
pub type GLsizeiptrARB = &usize

[typedef]
pub type GLint64 = i64

[typedef]
pub type GLint64EXT = i64

[typedef]
pub type GLuint64 = u64

[typedef]
pub type GLuint64EXT = u64


[typedef]
type &GLsync = struct C.__GLsync

struct C._cl_context
{}

struct C._cl_event
{}

[typedef]
pub type GLDEBUGPROC = fn(source GLenum, type GLenum, id GLuint,severity GLenum, length GLsizei, message &GLchar, userParam &voidptr) &voidptr

[typedef]
pub type GLDEBUGPROCARB = fn(source GLenum, type GLenum, id GLenum, severity GLuint, length GLsizei, message &GLchar, userParam &voidptr) &voidptr

[typedef]
pub type GLDEBUGPROCKHR = fn(source Glenum, type GLenum, id GLuint, severity GLenum, length GLsizei, message &GLchar, userParam &voidptr) &voidptr

[typedef]
pub type GLDEBUGPROCAMD = fn(id GLuint, category GLenum, severity GLenum, length GLsizei, message &GLchar, userParam &voidptr) voidptr

[typedef]
pub type GLhalfNV = u16

[typedef]
pub type GLvdpauSurfaceNV = GLintptr

[typedef]
pub type GLVULKANPROCNV = fn(voidptr) voidptr

// glad defines:

pub const gl_depth_buffer_bit = 0x00000100
pub const gl_stencil_buffer_bit =0x00000400
pub const gl_color_buffer_bit =0x00004000
pub const gl_false =0
pub const gl_true =1
pub const gl_points =0x0000
pub const gl_lines =0x0001
pub const gl_line_loop= 0x0002
pub const gl_line_strip =0x0003
pub const gl_triangles= 0x0004
pub const gl_triangle_strip= 0x0005
pub const gl_triangle_fan =0x0006
pub const gl_never =0x0200
pub const gl_less= 0x0201
pub const gl_equal= 0x0202
pub const gl_lequal =0x0203
pub const gl_greater= 0x0204
pub const gl_notequal= 0x0205
pub const gl_gequal= 0x0206
pub const gl_always= 0x0207
pub const gl_zero =0
pub const gl_one= 1
pub const gl_src_color= 0x0300
pub const gl_one_minus_src_color= 0x0301
pub const gl_src_alpha =0x0302
pub const gl_one_minus_src_alpha= 0x0303
pub const gl_dst_alpha =0x0304
pub const gl_one_minus_dst_alpha= 0x0305
pub const gl_dst_color =0x0306
pub const gl_one_minus_dst_color= 0x0307
pub const gl_src_alpha_saturate= 0x0308
pub const gl_none =0
pub const gl_front_left= 0x0400
pub const gl_front_right= 0x0401
pub const gl_back_left =0x0402
pub const gl_back_right= 0x0403
pub const gl_front =0x0404
pub const gl_back =0x0405
pub const gl_left =0x0406
pub const gl_right =0x0407
pub const gl_front_and_back =0x0408
pub const gl_no_error =0
pub const gl_invalid_enum =0x0500
pub const gl_invalid_value =0x0501
pub const gl_invalid_operation =0x0502
pub const gl_out_of_memory= 0x0505
pub const gl_cw =0x0900
pub const gl_ccw =0x0901
pub const gl_point_size= 0x0b11
pub const gl_point_size_range =0x0b12
pub const gl_point_size_granularity= 0x0b13
pub const gl_line_smooth =0x0b20
pub const gl_line_width =0x0b21
pub const gl_line_width_range= 0x0b22
pub const gl_line_width_granularity= 0x0b23
pub const gl_polygon_mode= 0x0b40
pub const gl_polygon_smooth =0x0b41
pub const gl_cull_face =0x0b44
pub const gl_cull_face_mode =0x0b45
pub const gl_front_face= 0x0b46
pub const gl_depth_range= 0x0b70
pub const gl_depth_test= 0x0b71
pub const gl_depth_writemask= 0x0b72
pub const gl_depth_clear_value= 0x0b73
pub const gl_depth_func= 0x0b74
pub const gl_stencil_test= 0x0b90
pub const gl_stencil_clear_value= 0x0b91
pub const gl_stencil_func= 0x0b92
pub const gl_stencil_value_mask= 0x0b93
pub const gl_stencil_fail= 0x0b94
pub const gl_stencil_pass_depth_fail= 0x0b95
pub const gl_stencil_pass_depth_pass= 0x0b96
pub const gl_stencil_ref= 0x0b97
pub const gl_stencil_writemask= 0x0b98
pub const gl_viewport= 0x0ba2
pub const gl_dither= 0x0bd0
pub const gl_blend_dst= 0x0be0
pub const gl_blend_src= 0x0be1
pub const gl_blend= 0x0be2
pub const gl_logic_op_mode= 0x0bf0
pub const gl_draw_buffer= 0x0c01
pub const gl_read_buffer= 0x0c02
pub const gl_scissor_box= 0x0c10
pub const gl_scissor_test= 0x0c11
pub const gl_color_clear_value= 0x0c22
pub const gl_color_writemask= 0x0c23
pub const gl_doublebuffer= 0x0c32
pub const gl_stereo= 0x0c33
pub const gl_line_smooth_hint= 0x0c52
pub const gl_polygon_smooth_hint= 0x0c53
pub const gl_unpack_swap_bytes= 0x0cf0
pub const gl_unpack_lsb_first= 0x0cf1
pub const gl_unpack_row_length= 0x0cf2
pub const gl_unpack_skip_rows= 0x0cf3
pub const gl_unpack_skip_pixels= 0x0cf4
pub const gl_unpack_alignment= 0x0cf5
pub const gl_pack_swap_bytes= 0x0d00
pub const gl_pack_lsb_first= 0x0d01
pub const gl_pack_row_length= 0x0d02
pub const gl_pack_skip_rows= 0x0d03
pub const gl_pack_skip_pixels= 0x0d04
pub const gl_pack_alignment= 0x0d05
pub const gl_max_texture_size= 0x0d33
pub const gl_max_viewport_dims= 0x0d3a
pub const gl_subpixel_bits= 0x0d50
pub const gl_texture_1d= 0x0de0
pub const gl_texture_2d= 0x0de1
pub const gl_texture_width= 0x1000
pub const gl_texture_height= 0x1001
pub const gl_texture_border_color= 0x1004
pub const gl_dont_care= 0x1100
pub const gl_fastest= 0x1101
pub const gl_nicest= 0x1102
pub const gl_byte= 0x1400
pub const gl_unsigned_byte= 0x1401
pub const gl_short= 0x1402
pub const gl_unsigned_short= 0x1403
pub const gl_int= 0x1404
pub const gl_unsigned_int= 0x1405
pub const gl_float= 0x1406
pub const gl_clear= 0x1500
pub const gl_and= 0x1501
pub const gl_and_reverse= 0x1502
pub const gl_copy= 0x1503
pub const gl_and_inverted= 0x1504
pub const gl_noop= 0x1505
pub const gl_xor= 0x1506
pub const gl_or= 0x1507
pub const gl_nor= 0x1508
pub const gl_equiv= 0x1509
pub const gl_invert= 0x150a
pub const gl_or_reverse= 0x150b
pub const gl_copy_inverted= 0x150c
pub const gl_or_inverted= 0x150d
pub const gl_nand= 0x150e
pub const gl_set= 0x150f
pub const gl_texture= 0x1702
pub const gl_color= 0x1800
pub const gl_depth= 0x1801
pub const gl_stencil= 0x1802
pub const gl_stencil_index= 0x1901
pub const gl_depth_component= 0x1902
pub const gl_red= 0x1903
pub const gl_green= 0x1904
pub const gl_blue= 0x1905
pub const gl_alpha= 0x1906
pub const gl_rgb= 0x1907
pub const gl_rgba= 0x1908
pub const gl_point= 0x1b00
pub const gl_line= 0x1b01
pub const gl_fill= 0x1b02
pub const gl_keep= 0x1e00
pub const gl_replace= 0x1e01
pub const gl_incr= 0x1e02
pub const gl_decr= 0x1e03
pub const gl_vendor= 0x1f00
pub const gl_renderer= 0x1f01
pub const gl_version= 0x1f02
pub const gl_extensions= 0x1f03
pub const gl_nearest= 0x2600
pub const gl_linear= 0x2601
pub const gl_nearest_mipmap_nearest= 0x2700
pub const gl_linear_mipmap_nearest= 0x2701
pub const gl_nearest_mipmap_linear= 0x2702
pub const gl_linear_mipmap_linear= 0x2703
pub const gl_texture_mag_filter= 0x2800
pub const gl_texture_min_filter= 0x2801
pub const gl_texture_wrap_s= 0x2802
pub const gl_texture_wrap_t= 0x2803
pub const gl_repeat= 0x2901
pub const gl_color_logic_op= 0x0bf2
pub const gl_polygon_offset_units= 0x2a00
pub const gl_polygon_offset_point= 0x2a01
pub const gl_polygon_offset_line= 0x2a02
pub const gl_polygon_offset_fill= 0x8037
pub const gl_polygon_offset_factor= 0x8038
pub const gl_texture_binding_1d= 0x8068
pub const gl_texture_binding_2d= 0x8069
pub const gl_texture_internal_format= 0x1003
pub const gl_texture_red_size= 0x805c
pub const gl_texture_green_size= 0x805d
pub const gl_texture_blue_size= 0x805e
pub const gl_texture_alpha_size= 0x805f
pub const gl_double= 0x140a
pub const gl_proxy_texture_1d= 0x8063
pub const gl_proxy_texture_2d= 0x8064
pub const gl_r3_g3_b2= 0x2a10
pub const gl_rgb4= 0x804f
pub const gl_rgb5= 0x8050
pub const gl_rgb8= 0x8051
pub const gl_rgb10= 0x8052
pub const gl_rgb12= 0x8053
pub const gl_rgb16= 0x8054
pub const gl_rgba2= 0x8055
pub const gl_rgba4= 0x8056
pub const gl_rgb5_a1= 0x8057
pub const gl_rgba8= 0x8058
pub const gl_rgb10_a2= 0x8059
pub const gl_rgba12= 0x805a
pub const gl_rgba16= 0x805b
pub const gl_unsigned_byte_3_3_2= 0x8032
pub const gl_unsigned_short_4_4_4_4= 0x8033
pub const gl_unsigned_short_5_5_5_1= 0x8034
pub const gl_unsigned_int_8_8_8_8= 0x8035
pub const gl_unsigned_int_10_10_10_2= 0x8036
pub const gl_texture_binding_3d= 0x806a
pub const gl_pack_skip_images= 0x806b
pub const gl_pack_image_height= 0x806c
pub const gl_unpack_skip_images= 0x806d
pub const gl_unpack_image_height= 0x806e
pub const gl_texture_3d= 0x806f
pub const gl_proxy_texture_3d= 0x8070
pub const gl_texture_depth= 0x8071
pub const gl_texture_wrap_r= 0x8072
pub const gl_max_3d_texture_size= 0x8073
pub const gl_unsigned_byte_2_3_3_rev= 0x8362
pub const gl_unsigned_short_5_6_5= 0x8363
pub const gl_unsigned_short_5_6_5_rev= 0x8364
pub const gl_unsigned_short_4_4_4_4_rev= 0x8365
pub const gl_unsigned_short_1_5_5_5_rev= 0x8366
pub const gl_unsigned_int_8_8_8_8_rev= 0x8367
pub const gl_unsigned_int_2_10_10_10_rev= 0x8368
pub const gl_bgr= 0x80e0
pub const gl_bgra= 0x80e1
pub const gl_max_elements_vertices= 0x80e8
pub const gl_max_elements_indices= 0x80e9
pub const gl_clamp_to_edge= 0x812f
pub const gl_texture_min_lod= 0x813a
pub const gl_texture_max_lod= 0x813b
pub const gl_texture_base_level= 0x813c
pub const gl_texture_max_level= 0x813d
pub const gl_smooth_point_size_range= 0x0b12
pub const gl_smooth_point_size_granularity= 0x0b13
pub const gl_smooth_line_width_range= 0x0b22
pub const gl_smooth_line_width_granularity= 0x0b23
pub const gl_aliased_line_width_range= 0x846e
pub const gl_texture0= 0x84c0
pub const gl_texture1= 0x84c1
pub const gl_texture2= 0x84c2
pub const gl_texture3= 0x84c3
pub const gl_texture4= 0x84c4
pub const gl_texture5= 0x84c5
pub const gl_texture6= 0x84c6
pub const gl_texture7= 0x84c7
pub const gl_texture8= 0x84c8
pub const gl_texture9= 0x84c9
pub const gl_texture10= 0x84ca
pub const gl_texture11= 0x84cb
pub const gl_texture12= 0x84cc
pub const gl_texture13= 0x84cd
pub const gl_texture14= 0x84ce
pub const gl_texture15= 0x84cf
pub const gl_texture16= 0x84d0
pub const gl_texture17= 0x84d1
pub const gl_texture18= 0x84d2
pub const gl_texture19= 0x84d3
pub const gl_texture20= 0x84d4
pub const gl_texture21= 0x84d5
pub const gl_texture22= 0x84d6
pub const gl_texture23= 0x84d7
pub const gl_texture24= 0x84d8
pub const gl_texture25= 0x84d9
pub const gl_texture26= 0x84da
pub const gl_texture27= 0x84db
pub const gl_texture28= 0x84dc
pub const gl_texture29= 0x84dd
pub const gl_texture30= 0x84de
pub const gl_texture31= 0x84df
pub const gl_active_texture= 0x84e0
pub const gl_multisample= 0x809d
pub const gl_sample_alpha_to_coverage= 0x809e
pub const gl_sample_alpha_to_one= 0x809f
pub const gl_sample_coverage= 0x80a0
pub const gl_sample_buffers= 0x80a8
pub const gl_samples= 0x80a9
pub const gl_sample_coverage_value= 0x80aa
pub const gl_sample_coverage_invert= 0x80ab
pub const gl_texture_cube_map= 0x8513
pub const gl_texture_binding_cube_map= 0x8514
pub const gl_texture_cube_map_positive_x= 0x8515
pub const gl_texture_cube_map_negative_x= 0x8516
pub const gl_texture_cube_map_positive_y= 0x8517
pub const gl_texture_cube_map_negative_y= 0x8518
pub const gl_texture_cube_map_positive_z= 0x8519
pub const gl_texture_cube_map_negative_z= 0x851a
pub const gl_proxy_texture_cube_map= 0x851b
pub const gl_max_cube_map_texture_size= 0x851c
pub const gl_compressed_rgb= 0x84ed
pub const gl_compressed_rgba= 0x84ee
pub const gl_texture_compression_hint= 0x84ef
pub const gl_texture_compressed_image_size= 0x86a0
pub const gl_texture_compressed= 0x86a1
pub const gl_num_compressed_texture_formats= 0x86a2
pub const gl_compressed_texture_formats= 0x86a3
pub const gl_clamp_to_border= 0x812d
pub const gl_blend_dst_rgb= 0x80c8
pub const gl_blend_src_rgb= 0x80c9
pub const gl_blend_dst_alpha= 0x80ca
pub const gl_blend_src_alpha= 0x80cb
pub const gl_point_fade_threshold_size= 0x8128
pub const gl_depth_component16= 0x81a5
pub const gl_depth_component24= 0x81a6
pub const gl_depth_component32= 0x81a7
pub const gl_mirrored_repeat= 0x8370
pub const gl_max_texture_lod_bias= 0x84fd
pub const gl_texture_lod_bias= 0x8501
pub const gl_incr_wrap= 0x8507
pub const gl_decr_wrap= 0x8508
pub const gl_texture_depth_size= 0x884a
pub const gl_texture_compare_mode= 0x884c
pub const gl_texture_compare_func= 0x884d
pub const gl_blend_color= 0x8005
pub const gl_blend_equation= 0x8009
pub const gl_constant_color= 0x8001
pub const gl_one_minus_constant_color= 0x8002
pub const gl_constant_alpha= 0x8003
pub const gl_one_minus_constant_alpha= 0x8004
pub const gl_func_add= 0x8006
pub const gl_func_reverse_subtract= 0x800b
pub const gl_func_subtract= 0x800a
pub const gl_min= 0x8007
pub const gl_max= 0x8008
pub const gl_buffer_size= 0x8764
pub const gl_buffer_usage= 0x8765
pub const gl_query_counter_bits= 0x8864
pub const gl_current_query= 0x8865
pub const gl_query_result= 0x8866
pub const gl_query_result_available= 0x8867
pub const gl_array_buffer= 0x8892
pub const gl_element_array_buffer= 0x8893
pub const gl_array_buffer_binding= 0x8894
pub const gl_element_array_buffer_binding= 0x8895
pub const gl_vertex_attrib_array_buffer_binding= 0x889f
pub const gl_read_only= 0x88b8
pub const gl_write_only= 0x88b9
pub const gl_read_write= 0x88ba
pub const gl_buffer_access= 0x88bb
pub const gl_buffer_mapped= 0x88bc
pub const gl_buffer_map_pointer= 0x88bd
pub const gl_stream_draw= 0x88e0
pub const gl_stream_read= 0x88e1
pub const gl_stream_copy= 0x88e2
pub const gl_static_draw= 0x88e4
pub const gl_static_read= 0x88e5
pub const gl_static_copy= 0x88e6
pub const gl_dynamic_draw= 0x88e8
pub const gl_dynamic_read= 0x88e9
pub const gl_dynamic_copy= 0x88ea
pub const gl_samples_passed= 0x8914
pub const gl_src1_alpha= 0x8589
pub const gl_blend_equation_rgb= 0x8009
pub const gl_vertex_attrib_array_enabled= 0x8622
pub const gl_vertex_attrib_array_size= 0x8623
pub const gl_vertex_attrib_array_stride= 0x8624
pub const gl_vertex_attrib_array_type= 0x8625
pub const gl_current_vertex_attrib= 0x8626
pub const gl_vertex_program_point_size= 0x8642
pub const gl_vertex_attrib_array_pointer= 0x8645
pub const gl_stencil_back_func= 0x8800
pub const gl_stencil_back_fail= 0x8801
pub const gl_stencil_back_pass_depth_fail= 0x8802
pub const gl_stencil_back_pass_depth_pass= 0x8803
pub const gl_max_draw_buffers= 0x8824
pub const gl_draw_buffer0= 0x8825
pub const gl_draw_buffer1= 0x8826
pub const gl_draw_buffer2= 0x8827
pub const gl_draw_buffer3= 0x8828
pub const gl_draw_buffer4= 0x8829
pub const gl_draw_buffer5= 0x882a
pub const gl_draw_buffer6= 0x882b
pub const gl_draw_buffer7= 0x882c
pub const gl_draw_buffer8= 0x882d
pub const gl_draw_buffer9= 0x882e
pub const gl_draw_buffer10= 0x882f
pub const gl_draw_buffer11= 0x8830
pub const gl_draw_buffer12= 0x8831
pub const gl_draw_buffer13= 0x8832
pub const gl_draw_buffer14= 0x8833
pub const gl_draw_buffer15= 0x8834
pub const gl_blend_equation_alpha= 0x883d
pub const gl_max_vertex_attribs= 0x8869
pub const gl_vertex_attrib_array_normalized= 0x886a
pub const gl_max_texture_image_units= 0x8872
pub const gl_fragment_shader= 0x8b30
pub const gl_vertex_shader= 0x8b31
pub const gl_max_fragment_uniform_components= 0x8b49
pub const gl_max_vertex_uniform_components= 0x8b4a
pub const gl_max_varying_floats= 0x8b4b
pub const gl_max_vertex_texture_image_units= 0x8b4c
pub const gl_max_combined_texture_image_units= 0x8b4d
pub const gl_shader_type= 0x8b4f
pub const gl_float_vec2= 0x8b50
pub const gl_float_vec3= 0x8b51
pub const gl_float_vec4= 0x8b52
pub const gl_int_vec2= 0x8b53
pub const gl_int_vec3= 0x8b54
pub const gl_int_vec4= 0x8b55
pub const gl_bool= 0x8b56
pub const gl_bool_vec2= 0x8b57
pub const gl_bool_vec3= 0x8b58
pub const gl_bool_vec4= 0x8b59
pub const gl_float_mat2= 0x8b5a
pub const gl_float_mat3= 0x8b5b
pub const gl_float_mat4= 0x8b5c
pub const gl_sampler_1d= 0x8b5d
pub const gl_sampler_2d= 0x8b5e
pub const gl_sampler_3d= 0x8b5f
pub const gl_sampler_cube= 0x8b60
pub const gl_sampler_1d_shadow= 0x8b61
pub const gl_sampler_2d_shadow= 0x8b62
pub const gl_delete_status= 0x8b80
pub const gl_compile_status= 0x8b81
pub const gl_link_status= 0x8b82
pub const gl_validate_status= 0x8b83
pub const gl_info_log_length= 0x8b84
pub const gl_attached_shaders= 0x8b85
pub const gl_active_uniforms= 0x8b86
pub const gl_active_uniform_max_length= 0x8b87
pub const gl_shader_source_length= 0x8b88
pub const gl_active_attributes= 0x8b89
pub const gl_active_attribute_max_length= 0x8b8a
pub const gl_fragment_shader_derivative_hint= 0x8b8b
pub const gl_shading_language_version= 0x8b8c
pub const gl_current_program= 0x8b8d
pub const gl_point_sprite_coord_origin= 0x8ca0
pub const gl_lower_left= 0x8ca1
pub const gl_upper_left= 0x8ca2
pub const gl_stencil_back_ref= 0x8ca3
pub const gl_stencil_back_value_mask= 0x8ca4
pub const gl_stencil_back_writemask= 0x8ca5
pub const gl_pixel_pack_buffer= 0x88eb
pub const gl_pixel_unpack_buffer= 0x88ec
pub const gl_pixel_pack_buffer_binding= 0x88ed
pub const gl_pixel_unpack_buffer_binding= 0x88ef
pub const gl_float_mat2x3= 0x8b65
pub const gl_float_mat2x4= 0x8b66
pub const gl_float_mat3x2= 0x8b67
pub const gl_float_mat3x4= 0x8b68
pub const gl_float_mat4x2= 0x8b69
pub const gl_float_mat4x3= 0x8b6a
pub const gl_srgb= 0x8c40
pub const gl_srgb8= 0x8c41
pub const gl_srgb_alpha= 0x8c42
pub const gl_srgb8_alpha8= 0x8c43
pub const gl_compressed_srgb= 0x8c48
pub const gl_compressed_srgb_alpha= 0x8c49
pub const gl_compare_ref_to_texture= 0x884e
pub const gl_clip_distance0= 0x3000
pub const gl_clip_distance1= 0x3001
pub const gl_clip_distance2= 0x3002
pub const gl_clip_distance3= 0x3003
pub const gl_clip_distance4= 0x3004
pub const gl_clip_distance5= 0x3005
pub const gl_clip_distance6= 0x3006
pub const gl_clip_distance7= 0x3007
pub const gl_max_clip_distances= 0x0d32
pub const gl_major_version= 0x821b
pub const gl_minor_version= 0x821c
pub const gl_num_extensions= 0x821d
pub const gl_context_flags= 0x821e
pub const gl_compressed_red= 0x8225
pub const gl_compressed_rg= 0x8226
pub const gl_context_flag_forward_compatible_bit= 0x00000001
pub const gl_rgba32f= 0x8814
pub const gl_rgb32f= 0x8815
pub const gl_rgba16f= 0x881a
pub const gl_rgb16f= 0x881b
pub const gl_vertex_attrib_array_integer= 0x88fd
pub const gl_max_array_texture_layers= 0x88ff
pub const gl_min_program_texel_offset= 0x8904
pub const gl_max_program_texel_offset= 0x8905
pub const gl_clamp_read_color= 0x891c
pub const gl_fixed_only= 0x891d
pub const gl_max_varying_components= 0x8b4b
pub const gl_texture_1d_array= 0x8c18
pub const gl_proxy_texture_1d_array= 0x8c19
pub const gl_texture_2d_array= 0x8c1a
pub const gl_proxy_texture_2d_array= 0x8c1b
pub const gl_texture_binding_1d_array= 0x8c1c
pub const gl_texture_binding_2d_array= 0x8c1d
pub const gl_r11f_g11f_b10f= 0x8c3a
pub const gl_unsigned_int_10f_11f_11f_rev= 0x8c3b
pub const gl_rgb9_e5= 0x8c3d
pub const gl_unsigned_int_5_9_9_9_rev= 0x8c3e
pub const gl_texture_shared_size= 0x8c3f
pub const gl_transform_feedback_varying_max_length= 0x8c76
pub const gl_transform_feedback_buffer_mode= 0x8c7f
pub const gl_max_transform_feedback_separate_components= 0x8c80
pub const gl_transform_feedback_varyings= 0x8c83
pub const gl_transform_feedback_buffer_start= 0x8c84
pub const gl_transform_feedback_buffer_size= 0x8c85
pub const gl_primitives_generated= 0x8c87
pub const gl_transform_feedback_primitives_written= 0x8c88
pub const gl_rasterizer_discard= 0x8c89
pub const gl_max_transform_feedback_interleaved_components= 0x8c8a
pub const gl_max_transform_feedback_separate_attribs= 0x8c8b
pub const gl_interleaved_attribs= 0x8c8c
pub const gl_separate_attribs= 0x8c8d
pub const gl_transform_feedback_buffer= 0x8c8e
pub const gl_transform_feedback_buffer_binding= 0x8c8f
pub const gl_rgba32ui= 0x8d70
pub const gl_rgb32ui= 0x8d71
pub const gl_rgba16ui= 0x8d76
pub const gl_rgb16ui= 0x8d77
pub const gl_rgba8ui= 0x8d7c
pub const gl_rgb8ui= 0x8d7d
pub const gl_rgba32i= 0x8d82
pub const gl_rgb32i= 0x8d83
pub const gl_rgba16i= 0x8d88
pub const gl_rgb16i= 0x8d89
pub const gl_rgba8i= 0x8d8e
pub const gl_rgb8i= 0x8d8f
pub const gl_red_integer= 0x8d94
pub const gl_green_integer= 0x8d95
pub const gl_blue_integer= 0x8d96
pub const gl_rgb_integer= 0x8d98
pub const gl_rgba_integer= 0x8d99
pub const gl_bgr_integer= 0x8d9a
pub const gl_bgra_integer= 0x8d9b
pub const gl_sampler_1d_array= 0x8dc0
pub const gl_sampler_2d_array= 0x8dc1
pub const gl_sampler_1d_array_shadow= 0x8dc3
pub const gl_sampler_2d_array_shadow= 0x8dc4
pub const gl_sampler_cube_shadow= 0x8dc5
pub const gl_unsigned_int_vec2= 0x8dc6
pub const gl_unsigned_int_vec3= 0x8dc7
pub const gl_unsigned_int_vec4= 0x8dc8
pub const gl_int_sampler_1d= 0x8dc9
pub const gl_int_sampler_2d= 0x8dca
pub const gl_int_sampler_3d= 0x8dcb
pub const gl_int_sampler_cube= 0x8dcc
pub const gl_int_sampler_1d_array= 0x8dce
pub const gl_int_sampler_2d_array= 0x8dcf
pub const gl_unsigned_int_sampler_1d= 0x8dd1
pub const gl_unsigned_int_sampler_2d= 0x8dd2
pub const gl_unsigned_int_sampler_3d= 0x8dd3
pub const gl_unsigned_int_sampler_cube= 0x8dd4
pub const gl_unsigned_int_sampler_1d_array= 0x8dd6
pub const gl_unsigned_int_sampler_2d_array= 0x8dd7
pub const gl_query_wait= 0x8e13
pub const gl_query_no_wait= 0x8e14
pub const gl_query_by_region_wait= 0x8e15
pub const gl_query_by_region_no_wait= 0x8e16
pub const gl_buffer_access_flags= 0x911f
pub const gl_buffer_map_length= 0x9120
pub const gl_buffer_map_offset= 0x9121
pub const gl_depth_component32f= 0x8cac
pub const gl_depth32f_stencil8= 0x8cad
pub const gl_float_32_unsigned_int_24_8_rev= 0x8dad
pub const gl_invalid_framebuffer_operation= 0x0506
pub const gl_framebuffer_attachment_color_encoding= 0x8210
pub const gl_framebuffer_attachment_component_type= 0x8211
pub const gl_framebuffer_attachment_red_size= 0x8212
pub const gl_framebuffer_attachment_green_size= 0x8213
pub const gl_framebuffer_attachment_blue_size= 0x8214
pub const gl_framebuffer_attachment_alpha_size= 0x8215
pub const gl_framebuffer_attachment_depth_size= 0x8216
pub const gl_framebuffer_attachment_stencil_size= 0x8217
pub const gl_framebuffer_default= 0x8218
pub const gl_framebuffer_undefined= 0x8219
pub const gl_depth_stencil_attachment= 0x821a
pub const gl_max_renderbuffer_size= 0x84e8
pub const gl_depth_stencil= 0x84f9
pub const gl_unsigned_int_24_8= 0x84fa
pub const gl_depth24_stencil8= 0x88f0
pub const gl_texture_stencil_size= 0x88f1
pub const gl_texture_red_type= 0x8c10
pub const gl_texture_green_type= 0x8c11
pub const gl_texture_blue_type= 0x8c12
pub const gl_texture_alpha_type= 0x8c13
pub const gl_texture_depth_type= 0x8c16
pub const gl_unsigned_normalized= 0x8c17
pub const gl_framebuffer_binding= 0x8ca6
pub const gl_draw_framebuffer_binding= 0x8ca6
pub const gl_renderbuffer_binding= 0x8ca7
pub const gl_read_framebuffer= 0x8ca8
pub const gl_draw_framebuffer= 0x8ca9
pub const gl_read_framebuffer_binding= 0x8caa
pub const gl_renderbuffer_samples= 0x8cab
pub const gl_framebuffer_attachment_object_type= 0x8cd0
pub const gl_framebuffer_attachment_object_name= 0x8cd1
pub const gl_framebuffer_attachment_texture_level= 0x8cd2
pub const gl_framebuffer_attachment_texture_cube_map_face= 0x8cd3
pub const gl_framebuffer_attachment_texture_layer= 0x8cd4
pub const gl_framebuffer_complete= 0x8cd5
pub const gl_framebuffer_incomplete_attachment= 0x8cd6
pub const gl_framebuffer_incomplete_missing_attachment= 0x8cd7
pub const gl_framebuffer_incomplete_draw_buffer= 0x8cdb
pub const gl_framebuffer_incomplete_read_buffer= 0x8cdc
pub const gl_framebuffer_unsupported= 0x8cdd
pub const gl_max_color_attachments= 0x8cdf
pub const gl_color_attachment0= 0x8ce0
pub const gl_color_attachment1= 0x8ce1
pub const gl_color_attachment2= 0x8ce2
pub const gl_color_attachment3= 0x8ce3
pub const gl_color_attachment4= 0x8ce4
pub const gl_color_attachment5= 0x8ce5
pub const gl_color_attachment6= 0x8ce6
pub const gl_color_attachment7= 0x8ce7
pub const gl_color_attachment8= 0x8ce8
pub const gl_color_attachment9= 0x8ce9
pub const gl_color_attachment10= 0x8cea
pub const gl_color_attachment11= 0x8ceb
pub const gl_color_attachment12= 0x8cec
pub const gl_color_attachment13= 0x8ced
pub const gl_color_attachment14= 0x8cee
pub const gl_color_attachment15= 0x8cef
pub const gl_color_attachment16= 0x8cf0
pub const gl_color_attachment17= 0x8cf1
pub const gl_color_attachment18= 0x8cf2
pub const gl_color_attachment19= 0x8cf3
pub const gl_color_attachment20= 0x8cf4
pub const gl_color_attachment21= 0x8cf5
pub const gl_color_attachment22= 0x8cf6
pub const gl_color_attachment23= 0x8cf7
pub const gl_color_attachment24= 0x8cf8
pub const gl_color_attachment25= 0x8cf9
pub const gl_color_attachment26= 0x8cfa
pub const gl_color_attachment27= 0x8cfb
pub const gl_color_attachment28= 0x8cfc
pub const gl_color_attachment29= 0x8cfd
pub const gl_color_attachment30= 0x8cfe
pub const gl_color_attachment31= 0x8cff
pub const gl_depth_attachment= 0x8d00
pub const gl_stencil_attachment= 0x8d20
pub const gl_framebuffer= 0x8d40
pub const gl_renderbuffer= 0x8d41
pub const gl_renderbuffer_width= 0x8d42
pub const gl_renderbuffer_height= 0x8d43
pub const gl_renderbuffer_internal_format= 0x8d44
pub const gl_stencil_index1= 0x8d46
pub const gl_stencil_index4= 0x8d47
pub const gl_stencil_index8= 0x8d48
pub const gl_stencil_index16= 0x8d49
pub const gl_renderbuffer_red_size= 0x8d50
pub const gl_renderbuffer_green_size= 0x8d51
pub const gl_renderbuffer_blue_size= 0x8d52
pub const gl_renderbuffer_alpha_size= 0x8d53
pub const gl_renderbuffer_depth_size= 0x8d54
pub const gl_renderbuffer_stencil_size= 0x8d55
pub const gl_framebuffer_incomplete_multisample= 0x8d56
pub const gl_max_samples= 0x8d57
pub const gl_framebuffer_srgb= 0x8db9
pub const gl_half_float= 0x140b
pub const gl_map_read_bit= 0x0001
pub const gl_map_write_bit= 0x0002
pub const gl_map_invalidate_range_bit= 0x0004
pub const gl_map_invalidate_buffer_bit= 0x0008
pub const gl_map_flush_explicit_bit= 0x0010
pub const gl_map_unsynchronized_bit= 0x0020
pub const gl_compressed_red_rgtc1= 0x8dbb
pub const gl_compressed_signed_red_rgtc1= 0x8dbc
pub const gl_compressed_rg_rgtc2= 0x8dbd
pub const gl_compressed_signed_rg_rgtc2= 0x8dbe
pub const gl_rg= 0x8227
pub const gl_rg_integer= 0x8228
pub const gl_r8= 0x8229
pub const gl_r16= 0x822a
pub const gl_rg8= 0x822b
pub const gl_rg16= 0x822c
pub const gl_r16f= 0x822d
pub const gl_r32f= 0x822e
pub const gl_rg16f= 0x822f
pub const gl_rg32f= 0x8230
pub const gl_r8i= 0x8231
pub const gl_r8ui= 0x8232
pub const gl_r16i= 0x8233
pub const gl_r16ui= 0x8234
pub const gl_r32i= 0x8235
pub const gl_r32ui= 0x8236
pub const gl_rg8i= 0x8237
pub const gl_rg8ui= 0x8238
pub const gl_rg16i= 0x8239
pub const gl_rg16ui= 0x823a
pub const gl_rg32i= 0x823b
pub const gl_rg32ui= 0x823c
pub const gl_vertex_array_binding= 0x85b5
pub const gl_sampler_2d_rect= 0x8b63
pub const gl_sampler_2d_rect_shadow= 0x8b64
pub const gl_sampler_buffer= 0x8dc2
pub const gl_int_sampler_2d_rect= 0x8dcd
pub const gl_int_sampler_buffer= 0x8dd0
pub const gl_unsigned_int_sampler_2d_rect= 0x8dd5
pub const gl_unsigned_int_sampler_buffer= 0x8dd8
pub const gl_texture_buffer= 0x8c2a
pub const gl_max_texture_buffer_size= 0x8c2b
pub const gl_texture_binding_buffer= 0x8c2c
pub const gl_texture_buffer_data_store_binding= 0x8c2d
pub const gl_texture_rectangle= 0x84f5
pub const gl_texture_binding_rectangle= 0x84f6
pub const gl_proxy_texture_rectangle= 0x84f7
pub const gl_max_rectangle_texture_size= 0x84f8
pub const gl_r8_snorm= 0x8f94
pub const gl_rg8_snorm= 0x8f95
pub const gl_rgb8_snorm= 0x8f96
pub const gl_rgba8_snorm= 0x8f97
pub const gl_r16_snorm= 0x8f98
pub const gl_rg16_snorm= 0x8f99
pub const gl_rgb16_snorm= 0x8f9a
pub const gl_rgba16_snorm= 0x8f9b
pub const gl_signed_normalized= 0x8f9c
pub const gl_primitive_restart= 0x8f9d
pub const gl_primitive_restart_index= 0x8f9e
pub const gl_copy_read_buffer= 0x8f36
pub const gl_copy_write_buffer= 0x8f37
pub const gl_uniform_buffer= 0x8a11
pub const gl_uniform_buffer_binding= 0x8a28
pub const gl_uniform_buffer_start= 0x8a29
pub const gl_uniform_buffer_size= 0x8a2a
pub const gl_max_vertex_uniform_blocks= 0x8a2b
pub const gl_max_geometry_uniform_blocks= 0x8a2c
pub const gl_max_fragment_uniform_blocks= 0x8a2d
pub const gl_max_combined_uniform_blocks= 0x8a2e
pub const gl_max_uniform_buffer_bindings= 0x8a2f
pub const gl_max_uniform_block_size= 0x8a30
pub const gl_max_combined_vertex_uniform_components= 0x8a31
pub const gl_max_combined_geometry_uniform_components= 0x8a32
pub const gl_max_combined_fragment_uniform_components= 0x8a33
pub const gl_uniform_buffer_offset_alignment= 0x8a34
pub const gl_active_uniform_block_max_name_length= 0x8a35
pub const gl_active_uniform_blocks= 0x8a36
pub const gl_uniform_type= 0x8a37
pub const gl_uniform_size= 0x8a38
pub const gl_uniform_name_length= 0x8a39
pub const gl_uniform_block_index= 0x8a3a
pub const gl_uniform_offset= 0x8a3b
pub const gl_uniform_array_stride= 0x8a3c
pub const gl_uniform_matrix_stride= 0x8a3d
pub const gl_uniform_is_row_major= 0x8a3e
pub const gl_uniform_block_binding= 0x8a3f
pub const gl_uniform_block_data_size= 0x8a40
pub const gl_uniform_block_name_length= 0x8a41
pub const gl_uniform_block_active_uniforms= 0x8a42
pub const gl_uniform_block_active_uniform_indices= 0x8a43
pub const gl_uniform_block_referenced_by_vertex_shader= 0x8a44
pub const gl_uniform_block_referenced_by_geometry_shader= 0x8a45
pub const gl_uniform_block_referenced_by_fragment_shader= 0x8a46
pub const gl_invalid_index= 0xffffffff
pub const gl_context_core_profile_bit= 0x00000001
pub const gl_context_compatibility_profile_bit= 0x00000002
pub const gl_lines_adjacency= 0x000a
pub const gl_line_strip_adjacency= 0x000b
pub const gl_triangles_adjacency= 0x000c
pub const gl_triangle_strip_adjacency= 0x000d
pub const gl_program_point_size= 0x8642
pub const gl_max_geometry_texture_image_units= 0x8c29
pub const gl_framebuffer_attachment_layered= 0x8da7
pub const gl_framebuffer_incomplete_layer_targets= 0x8da8
pub const gl_geometry_shader= 0x8dd9
pub const gl_geometry_vertices_out= 0x8916
pub const gl_geometry_input_type= 0x8917
pub const gl_geometry_output_type= 0x8918
pub const gl_max_geometry_uniform_components= 0x8ddf
pub const gl_max_geometry_output_vertices= 0x8de0
pub const gl_max_geometry_total_output_components= 0x8de1
pub const gl_max_vertex_output_components= 0x9122
pub const gl_max_geometry_input_components= 0x9123
pub const gl_max_geometry_output_components= 0x9124
pub const gl_max_fragment_input_components= 0x9125
pub const gl_context_profile_mask= 0x9126
pub const gl_depth_clamp= 0x864f
pub const gl_quads_follow_provoking_vertex_convention= 0x8e4c
pub const gl_first_vertex_convention= 0x8e4d
pub const gl_last_vertex_convention= 0x8e4e
pub const gl_provoking_vertex= 0x8e4f
pub const gl_texture_cube_map_seamless= 0x884f
pub const gl_max_server_wait_timeout= 0x9111
pub const gl_object_type= 0x9112
pub const gl_sync_condition= 0x9113
pub const gl_sync_status= 0x9114
pub const gl_sync_flags= 0x9115
pub const gl_sync_fence =0x9116
pub const gl_sync_gpu_commands_complete= 0x9117
pub const gl_unsignaled= 0x9118
pub const gl_signaled =0x9119
pub const gl_already_signaled =0x911a
pub const gl_timeout_expired= 0x911b
pub const gl_condition_satisfied= 0x911c
pub const gl_wait_failed =0x911d
pub const gl_timeout_ignored =0xffffffffffffffff
pub const gl_sync_flush_commands_bit= 0x00000001
pub const gl_sample_position =0x8e50
pub const gl_sample_mask= 0x8e51
pub const gl_sample_mask_value= 0x8e52
pub const gl_max_sample_mask_words= 0x8e59
pub const gl_texture_2d_multisample= 0x9100
pub const gl_proxy_texture_2d_multisample= 0x9101
pub const gl_texture_2d_multisample_array =0x9102
pub const gl_proxy_texture_2d_multisample_array =0x9103
pub const gl_texture_binding_2d_multisample= 0x9104
pub const gl_texture_binding_2d_multisample_array =0x9105
pub const gl_texture_samples= 0x9106
pub const gl_texture_fixed_sample_locations =0x9107
pub const gl_sampler_2d_multisample =0x9108
pub const gl_int_sampler_2d_multisample =0x9109
pub const gl_unsigned_int_sampler_2d_multisample= 0x910a
pub const gl_sampler_2d_multisample_array= 0x910b
pub const gl_int_sampler_2d_multisample_array =0x910c
pub const gl_unsigned_int_sampler_2d_multisample_array =0x910d
pub const gl_max_color_texture_samples =0x910e
pub const gl_max_depth_texture_samples =0x910f
pub const gl_max_integer_samples =0x9110
pub const gl_vertex_attrib_array_divisor =0x88fe
pub const gl_src1_color =0x88f9
pub const gl_one_minus_src1_color =0x88fa
pub const gl_one_minus_src1_alpha =0x88fb
pub const gl_max_dual_source_draw_buffers= 0x88fc
pub const gl_any_samples_passed =0x8c2f
pub const gl_sampler_binding =0x8919
pub const gl_rgb10_a2ui= 0x906f
pub const gl_texture_swizzle_r =0x8e42
pub const gl_texture_swizzle_g =0x8e43
pub const gl_texture_swizzle_b =0x8e44
pub const gl_texture_swizzle_a =0x8e45
pub const gl_texture_swizzle_rgba =0x8e46
pub const gl_time_elapsed =0x88bf
pub const gl_timestamp= 0x8e28
pub const gl_int_2_10_10_10_rev =0x8d9f
$if gl_version_1_0 ? {
	pub const gl_version_1_0 = 1
}
