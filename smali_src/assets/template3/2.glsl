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

vec4 texture(sampler2D sampler, vec2 uv, int section) {
    int base = (section == 0) ? 1 : 0;
    if (int(mod(uv.x, 2.)) == base) {
        uv.x = 1.0 - fract(uv.x);
    } else {
        uv.x = fract(uv.x);
    }
    return texture2D(sampler, uv);
}

vec4 motionBlur(sampler2D sampler, vec2 uv, vec2 speed, int section) {
    vec3 color = vec3(0.0);
    float total = 0.0;
    float offset = .3;
    for (float t = 0.0; t < 30.0; t++) {
        float percent = (t + offset) / 30.0;
        float weight = 2.0 * (percent - percent * percent);
        color += texture(sampler, uv + speed * percent, section).rgb * weight;
        total += weight;
    }
    return vec4(color / total, 1.0);
}

float easeQuadOut(float t) {
    return -1.0 * t * (t - 2.0);
}

float easeQuartInOut(float t) {
    t = t * 2.0; if (t < 1.0) return 0.5 * t * t * t * t;
    return -0.5 * ((t -= 2.0) * t * t * t - 2.0);
}

void main() {
	vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);
    
    float d = 21.;
    float f = frame + 1.;
    if (f > d) {
        f = d;
    }

    float division = 0.38;
    float t = easeQuartInOut(f / d);
    float speed = sin(t * PI);

    if (t < division) {
        uv.x -= t * 3.;
        vec4 color = motionBlur(inputImageTexture, uv, vec2(speed, 0.), 0);
        gl_FragColor = vec4(color.rgb * pow(2.0, (speed * 0.5)), 1.0);
    } else {
        uv2.x -= t * 3.;
        vec4 color = motionBlur(inputImageTexture2, uv2, vec2(speed, 0.), 1);
        gl_FragColor = vec4(color.rgb * pow(2.0, (speed * 0.5)), 1.0);
    }    
}
