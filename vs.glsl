#version 300 es
layout(location=0) in vec4 position;
layout(location=1) in vec4 color;
layout(location=2) in vec3 normal;
out vec4 color2;
out vec3 vnormal;
out vec3 mvnormal;
uniform mat4 mv;
uniform mat4 v;
uniform mat4 p;
void main() {
    gl_Position = p * mv * position;
    color2 = color;
    vnormal = mat3(v) * normal;
    mvnormal = mat3(mv) * normal;
}