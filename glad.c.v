module vopengl

#flag -Ivendor/include
#include "glad/glad.h"
#include "KHR/khrplatform.h"

pub struct C.gladGLversionStruct
{}

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
pub type khronos_int8_t GLbyte
[typedef]
pub type khronos_uint8_t GLubyte
[typedef]
pub type khronos_int16_t GLshort
[typedef]
pub type khronos_uint16_t GLushort
[typedef]
pub type int GLint
[typedef]
pub type unsigned int GLuint
[typedef]
pub type khronos_int32_t GLclampx
[typedef]
pub type int GLsizei
[typedef]
pub type khronos_float_t GLfloat
[typedef]
pub type khronos_float_t GLclampf
[typedef]
pub type double GLdouble
[typedef]
pub type double GLclampd
[typedef]
pub type voidptr&GLeglClientBufferEXT
[typedef]
pub type voidptr&GLeglImageOES
[typedef]
pub type GLchar = char
[typedef]
pub type GLcharARB = char
$if macos {
	[typedef]
	pub type GLhandleARB = &voidptr
}
$else {
	[typedef]
	pub type GLhandleARB = u32
}
[typedef]
pub type khronos_uint16_t GLhalf
[typedef]
pub type khronos_uint16_t GLhalfARB
[typedef]
pub type khronos_int32_t GLfixed
[typedef]
pub type khronos_intptr_t GLintptr
[typedef]
pub type khronos_intptr_t GLintptrARB
[typedef]
pub type khronos_ssize_t GLsizeiptr
[typedef]
pub type khronos_ssize_t GLsizeiptrARB
[typedef]
pub type khronos_int64_t GLint64
[typedef]
pub type khronos_int64_t GLint64EXT
[typedef]
pub type khronos_uint64_t GLuint64
[typedef]
pub type khronos_uint64_t GLuint64EXT
[typedef]
struct __GLsync&GLsync
struct _cl_context
struct _cl_event
[typedef]
pub type voidptr (APIENTRY&GLDEBUGPROC)(GLenum source,GLenum type,GLuint id,GLenum severity,GLsizei length,const GLchar&message,const voidptr&userParam)
[typedef]
pub type voidptr (APIENTRY&GLDEBUGPROCARB)(GLenum source,GLenum type,GLuint id,GLenum severity,GLsizei length,const GLchar&message,const voidptr&userParam)
[typedef]
pub type voidptr (APIENTRY&GLDEBUGPROCKHR)(GLenum source,GLenum type,GLuint id,GLenum severity,GLsizei length,const GLchar&message,const voidptr&userParam)
[typedef]
pub type voidptr (APIENTRY&GLDEBUGPROCAMD)(GLuint id,GLenum category,GLenum severity,GLsizei length,const GLchar&message, voidptr&userParam)
[typedef]
pub type unsigned short GLhalfNV
[typedef]
pub type GLintptr GLvdpauSurfaceNV
[typedef]
pub type voidptr (APIENTRY&GLVULKANPROCNV)(voidptrptr)
