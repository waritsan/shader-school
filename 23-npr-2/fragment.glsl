precision mediump float;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

uniform mat4 inverseModel;
uniform mat4 inverseView;
uniform mat4 inverseProjection;

uniform vec3 warm;
uniform vec3 cool;
uniform vec3 lightDirection;

varying vec3 fragNormal;

void main() {
  float weight = 0.5 * (1.0 + dot(normalize(fragNormal), normalize(lightDirection)));
  vec3 lightColor = mix(cool, warm, weight);
  gl_FragColor = vec4(lightColor, 1);
}