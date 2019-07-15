varying mediump vec2 var_texcoord0;

uniform lowp sampler2D texture_sampler;

uniform lowp vec4 mid;
uniform lowp vec4 light;
uniform lowp vec4 dark;

void main()
{
    lowp vec4 mask = texture2D(texture_sampler, var_texcoord0.xy);
    lowp vec4 col = mask.x*mid + mask.y*dark + mask.z*light;
    col.w = mask.w;
    gl_FragColor = col;
}
