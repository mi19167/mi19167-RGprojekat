#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;


uniform mat4 projectionDS;
uniform mat4 viewDS;
uniform mat4 modelDS;

void main()
{
    gl_Position = projectionDS * viewDS * modelDS * vec4(aPos, 1.0);
}