#pragma header

uniform float reduction;

void main() {
    vec4 base = texture2D(bitmap, openfl_TextureCoordv);
    gl_FragColor=vec4(base.rgb*reduction, base.a);
}