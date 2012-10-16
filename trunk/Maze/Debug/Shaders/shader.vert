// All model vertices and normals are passed to this shader.
// It must transform the vertices as appropriate for the view.
// The view and projection matrices are provided, if you need
// the normal matrix, you must construct it in the shader.

uniform float elapsedTime;
varying vec4 vertexPosition;
uniform float currentPositionX;
uniform float currentPositionY;

uniform vec3 lightPos;

varying vec4 color;
varying vec3 normal;  //normal that will be interpolated for the fragment shader

attribute vec3 distanceFromLight;



void main()
{	
	color = gl_Color;
	normal = gl_Normal;
	
	vec4 vertex = gl_ModelViewProjectionMatrix * gl_Vertex;  //use the uploaded matrix data
	gl_Position = vertexPosition = vertex;  //output the transformed vertex
}
