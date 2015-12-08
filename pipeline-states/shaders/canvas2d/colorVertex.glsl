#version 420

layout(std140, binding=0) uniform CanvasViewport
{
    mat4 projectionMatrix;
    mat4 viewMatrix;
};

layout(location=0) in vec3 vPosition;
layout(location=2) in vec4 vColor;

out vec4 fColor;

void main()
{
    fColor = vColor;
    gl_Position = projectionMatrix * viewMatrix * vec4(vPosition, 1.0);
}