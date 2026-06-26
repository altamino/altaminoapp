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

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

vec4 texture(sampler2D sampler, vec2 uv) {
    if (uv.y > 1. && uv.y < 3.) {
        uv.y = 1.0 - fract(uv.y);
    } else {
        uv.y = fract(uv.y);
    }
    return texture2D(sampler, uv);
}

vec4 motionBlur(sampler2D sampler, vec2 uv, vec2 speed) {
    vec3 color = vec3(0.0);
    float total = 0.0;
    float offset = .3;
    for (float t = 0.0; t < 30.0; t++) {
        float percent = (t + offset) / 30.0;
        float weight = 2.0 * (percent - percent * percent);
        color += texture(sampler, uv + speed * percent).rgb * weight;
        total += weight;
    }
    return vec4(color / total, 1.0);
}

vec2 stretchUV(vec2 uv, float t) {
    float stretchRatio = 1.0;
    float powValue = 2.0;
    float maxStretchRatio = 5.;
    if (t < 0.3) {
        stretchRatio = 0.4 * pow(t, powValue) * pow(2.0, powValue) * (maxStretchRatio - 1.0) + 1.0;
    } else {
        stretchRatio = 0.4 * pow((1. - t), powValue) * pow(2.0, powValue) * (maxStretchRatio - 1.0) + 1.0;
    }
    stretchRatio = (stretchRatio - 1.0) * 0.5 + 1.0;
    uv.y = (uv.y - 0.5) / stretchRatio + 0.5;
    
    return uv; 
}

float normpdf(float x) {
    return exp(-20. * pow(x - .5, 2.));
}

float easeCubicInOut(float t) {
    t = t * 2.0; if (t < 1.0) return 0.5 * t * t * t;
    return 0.5 * ((t -= 2.0) * t * t + 2.0);
}

void main() {
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);
    
    float d = 25.;
    float f = frame + 1.0;
    if (f > d) {
        f = d;
    }

    float division = 0.32;
    float t = easeCubicInOut(f / d);

    vec2 direction = vec2(0., 10. * normpdf(t));
    vec2 speed = vec2(0., sin(t * PI));
    if (t < division) {
        uv.y += t * 3.;
        vec2 st = stretchUV(uv, t);
        gl_FragColor = motionBlur(inputImageTexture, st, speed);      
    } else {
        uv2.y += t * 3.;
        vec2 st = stretchUV(uv2, t);
        gl_FragColor = motionBlur(inputImageTexture2, st, speed);
    }
}
