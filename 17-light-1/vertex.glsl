precision mediump float;

attribute vec3 position;
uniform mat4 model, view, projection;
uniform vec3 ambient;

void main() {
  gl_Position =  projection * view * model * vec4(position, 1);
}
