varying mediump vec4 position;
varying mediump vec2 var_texcoord0;

uniform lowp sampler2D texture_sampler;

uniform lowp vec4 col;
uniform lowp vec4 percent;
uniform lowp vec4 pixels;

void main()
{
	// Pre-multiply alpha since all runtime textures already are
	vec4 color = texture2D(texture_sampler, var_texcoord0.xy);
	float px = pixels.x;
	if (var_texcoord0.x < percent.x*(px-2)/px + 1/px){
		color *= col;
	}
	gl_FragColor = color;
}
