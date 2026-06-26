precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI_TWO 1.57079635
#define TWO_PI	6.283185307179586

vec2 centerCrop( vec2 coord,  vec2 inSize,  vec2 outSize)
{
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeElasticOut(float t) {
    if (t == 0.0) { return 0.0; }
    if (t == 1.0) { return 1.0; }
    float p = 0.5;
    float a = 1.0; 
    float s = p / 4.0;
    return (a * pow(2.0, -10.0 * t) * sin((t - s) * TWO_PI / p) + 1.0);
}

float easeExpoOut(float t) {
    return (t == 1.0) ? 1.0 : (-pow(2.0, -10.0 * t) + 1.0);
}

vec4 texture(sampler2D sampler, vec2 uv, float mixProgress) {
    uv.y = fract(uv.y);
    vec4 color = texture2D(sampler, uv);
    return vec4(color.rgb, color.a * mixProgress);
}

vec4 motionBlur(sampler2D sampler, vec2 uv, vec2 speed, float mixProgress) {
    vec4 color = vec4(0.0);
    float total = 0.0;
    float offset = .3;
    for (float t = 0.0; t < 30.0; t++) {
        float percent = (t + offset) / 30.0;
        float weight = 2.0 * (percent - percent * percent);
        color += texture(sampler, uv + speed * percent, mixProgress) * weight;
        total += weight;
    }
    return color / total;
}

void main() {
    float f = frame + 1.0;
    float division = 19.;
    
    if (f > division) {
        f = division;
    }
    float t = easeElasticOut(f / division); 
    float blurProgress = easeExpoOut(f / division);
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);
    vec2 speed = vec2(0., pow(cos(blurProgress * PI_TWO), 1.2)) * 0.4;
    uv2 -= 0.5;
    uv2 = uv2 / 1.2 + 0.5;
    uv2.y = uv2.y + t * (1. - 2. * step(0.5, textureCoordinate.x));
    vec4 base = texture2D(inputImageTexture, uv);
    vec4 overlay = motionBlur(inputImageTexture2, uv2, speed, blurProgress);
    gl_FragColor = vec4(mix(base.rgb, overlay.rgb, overlay.a), base.a);
}
