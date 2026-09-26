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
#define TWO_PI 6.2831845
#define PI_TEN 0.31415927

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float normpdf(float x) {
    return exp(-20. * pow(x - .5, 2.));
}

float rand(vec2 uv) {
    return fract(sin(dot(uv.xy ,vec2(12.9898,78.233))) * 43758.5453123);
}

vec2 rotateUV(vec2 uv, float rotation, float mid) {
    return vec2(
      cos(rotation) * (uv.x - mid) + sin(rotation) * (uv.y - mid) + mid,
      cos(rotation) * (uv.y - mid) - sin(rotation) * (uv.x - mid) + mid
    );
}

vec4 motionBlur(sampler2D sampler, vec2 uv, vec2 speed, float t) {
    vec3 color = vec3(0.0);
    float total = 0.0;
    float offset = .4;
    float scale = 1. + sin(t * PI) * 0.3;
    for (float i = 0.0; i < 30.0; i++) {
        float percent = (i + offset) / 30.0;
        float weight = 2.0 * (percent - percent * percent);
        vec2 st = (uv + speed * percent) / scale;
        if (st.x > 1.) {
            st.x = 1. - fract(st.x);
        }
        if (st.y > 1.) {
            st.y = 1. - fract(st.y);
        }
        color += texture2D(sampler, st).rgb * weight;
        total += weight;
    }
    return vec4(color / total, 1.0);
}

float easeCubicOut(float t) {
    return ((t = t - 1.0) * t * t + 1.0);
}

void main() {
    float division = 18.;
    float f = frame + 1.;
    float stage1 = 3.;
    float stage2 = 8.;
    if (f > division) {
        f = division;
    }
    float t = (f <= stage1) ? (f / stage1) : easeCubicOut((f - stage1) / (division - stage1));
    float rotation_stage1 = PI_TEN;
    float rotation_stage2 = TWO_PI;

    vec2 uv;
    vec2 size;
    if (f <= stage2) {
        uv = centerCrop(textureCoordinate, inputSize, outputSize);
        size = inputSize;
    } else {
        uv = centerCrop(textureCoordinate, inputSize2, outputSize);
        size = inputSize2;
    }
    uv = (uv - vec2(0.5)) * size;

    float rot1 = 0.;
    if (f <= stage1) {
        rot1 = rotation_stage1 * t;
    } else if (f <= stage2) {
        rot1 = rotation_stage2 * t;
    } else {
        rot1 = -rotation_stage2 + rotation_stage2 * t;
    }
    vec2 uv1 = (f <= stage1) ? uv * mat2(cos(rot1), -sin(rot1), sin(rot1), cos(rot1)) : mat2(cos(rot1), -sin(rot1), sin(rot1), cos(rot1)) * uv;

    float rot2 = 0.;
    float blur = 0.3;
    if (f <= stage1) {
        rot2 = rotation_stage1 * (t + blur * t);
    } else if (f <= stage2) {
        rot2 = rotation_stage2 * (t + blur * t);
    } else {
        rot2 = -rotation_stage2 + rotation_stage2 * (t + blur * (1.0 - t));
    }
    vec2 uv2 = (f <= stage1) ? uv * mat2(cos(rot2), -sin(rot2), sin(rot2), cos(rot2)) : mat2(cos(rot2), -sin(rot2), sin(rot2), cos(rot2)) * uv;

    uv1 = uv1 / size + vec2(0.5);
    uv2 = uv2 / size + vec2(0.5);
    vec2 speed = uv2 - uv1;

    if (f <= stage2) {
        gl_FragColor = motionBlur(inputImageTexture, uv1, speed, (f <= stage1) ? 0. : t);
    } else {
        gl_FragColor = motionBlur(inputImageTexture2, uv1, speed, t);
    }
}
