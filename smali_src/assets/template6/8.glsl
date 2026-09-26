precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform sampler2D inputImageTexture3;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 inputSize3;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI 3.14159265359
#define TWO_PI 6.2831845

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

vec4 motionBlurVertical(sampler2D sampler, vec2 uv, vec2 speed) {
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

float easeCubicOut(float t) {
    return ((t = t - 1.0) * t * t + 1.0);
}

void main() {
    float division = 34.;
    float f = frame + 1.;
    float stage1 = 20.;
    float stage2 = 32.;
    if (f > division) {
        f = division;
    }
    float t = (f <= stage1) ? easeCubicOut(f / stage1) : easeCubicOut((f - stage1) / (stage2 - stage1));
    float rotation = TWO_PI;

    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);
    vec2 uv3 = centerCrop(textureCoordinate, inputSize3, outputSize);

    if (f <= stage1) {
        float blur = 0.3;
        float rot1 = (t <= 0.3) ? rotation * t : -rotation + rotation * t;
        float rot2 = (t <= 0.3) ? rotation * (t + blur * t) : -rotation + rotation * (t + blur * (1.0 - t));
        vec2 size = (t <= 0.3) ? inputSize : inputSize2;
        vec2 uvs = (t <= 0.3) ? uv : uv2;
        uvs = (uvs - vec2(0.5)) * size;
        uvs = mat2(cos(rot1), -sin(rot1), sin(rot1), cos(rot1)) * uvs;
        uvs = uvs / size + vec2(0.5);
        vec2 uvs1 = (t <= 0.3) ? uv : uv2;
        uvs1 = (uvs1 - vec2(0.5)) * size;
        uvs1 = mat2(cos(rot2), -sin(rot2), sin(rot2), cos(rot2)) * uvs1;
        uvs1 = uvs1 / size + vec2(0.5);
        vec2 speed = uvs1 - uvs;
        gl_FragColor = (t <= 0.3) ? motionBlur(inputImageTexture, uvs, speed, t) : motionBlur(inputImageTexture2, uvs, speed, t);
    } else if (f <= stage2) {
        vec2 uvs = (t <= 0.5) ? uv2 : uv3;
        vec2 speed = vec2(0., sin(t * PI) * 0.5);
        uvs.y -= t;
        gl_FragColor = (t <= 0.5) ? motionBlurVertical(inputImageTexture2, uvs, speed) : motionBlurVertical(inputImageTexture3, uvs, speed);
    } else {
        gl_FragColor = texture2D(inputImageTexture3, uv3);
    }
}
