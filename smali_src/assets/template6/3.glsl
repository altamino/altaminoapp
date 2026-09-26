precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI 3.14159265359

vec2 centerCrop( vec2 coord,  vec2 inSize,  vec2 outSize)
{
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeQuartInOut(float t) {
    t = t * 2.0; if (t < 1.0) return 0.5 * t * t * t * t;
    return -0.5 * ((t -= 2.0) * t * t * t - 2.0);
}

vec4 motionBlur(sampler2D sampler, vec2 uv, vec2 speed) {
    vec3 color = vec3(0.0);
    float total = 0.0;
    float offset = .3;
    for (float t = 0.0; t < 30.0; t++) {
        float percent = (t + offset) / 30.0;
        float weight = 2.0 * (percent - percent * percent);
        color += texture2D(sampler, fract(uv + speed * percent)).rgb * weight;
        total += weight;
    }
    return vec4(color / total, 1.0);
}

void main() {
    float f = frame + 1.0;
    float division = 20.;
    
    if (f > division) {
        f = division;
    }
    float t = easeQuartInOut(f / division); 
    float stage1 = 0.35;
    float stage2 = 0.65;
    vec2 inSize = (t <= stage2) ? inputSize : inputSize2;
    vec2 uv = centerCrop(textureCoordinate, inSize, outputSize);
    vec2 speed = vec2(0., sin(t * PI)) * 0.5 * (1. - 2. * (1. - step(stage1, t)));
    vec4 color = vec4(0.);

    if (t <= stage2) {
        uv.y = uv.y + t * (1.6 - 2.6 * step(stage1, t));
        color += motionBlur(inputImageTexture, uv, speed);
    } else {
        uv -= 0.5;
        uv = uv / 1.6 + 0.5;
        uv.y -= t;
        color += motionBlur(inputImageTexture2, uv, speed);
    }    

    gl_FragColor = color;
}
