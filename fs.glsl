#version 300 es
precision highp float;
uniform vec4 color;
uniform vec3 lightdir;
uniform vec3 lightcolor;
uniform vec3 halfway;
out vec4 fragColor;
in vec3 mvnormal;
void main() {
    vec3 mvn = normalize(mvnormal);
    float lambert = max(dot(mvn, lightdir), 0.0);
    float blinn = pow(max(dot(mvn, halfway), 0.0), 150.0);
    fragColor = vec4(color.rgb * (lightcolor * lambert) + (vec3(1.0, 1.0, 1.0) * blinn) * 1.0, color.a);
}