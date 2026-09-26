precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI_TWO 1.570796327

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeCubicInOut(float t) {
    t = t * 2.0; if (t < 1.0) return 0.5 * t * t * t;
    return 0.5 * ((t -= 2.0) * t * t + 2.0);
}

float easeCubicOut(float t) {
    return ((t = t - 1.0) * t * t + 1.0);
}

vec4 zoomBlur(sampler2D sampler, vec2 uv, vec2 samplingOffset) {
    vec4 fragmentColor = vec4(0.);
    fragmentColor += texture2D(sampler, uv) * 0.18;
    fragmentColor += texture2D(sampler, uv + samplingOffset) * 0.15;
    fragmentColor += texture2D(sampler, uv + (2.0 * samplingOffset)) *  0.12;
    fragmentColor += texture2D(sampler, uv + (3.0 * samplingOffset)) * 0.09;
    fragmentColor += texture2D(sampler, uv + (4.0 * samplingOffset)) * 0.05;
    fragmentColor += texture2D(sampler, uv - samplingOffset) * 0.15;
    fragmentColor += texture2D(sampler, uv - (2.0 * samplingOffset)) *  0.12;
    fragmentColor += texture2D(sampler, uv - (3.0 * samplingOffset)) * 0.09;
    fragmentColor += texture2D(sampler, uv - (4.0 * samplingOffset)) * 0.05;
    return fragmentColor;
}

vec2 fieldView(vec2 uv, float process) {
    uv -= 0.5;
    float focal_length = (sin(PI_TWO + process * PI_TWO)) * 0.032;
    float theta = 4.*length(uv);
    float r = focal_length * sin(theta);

    return uv + normalize(uv)*r + 0.5;
}

void main() {
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    float d = 28.;
    float scaleDuration = 15.;
    float f = frame + 1.;
    if (f > d) {
        float dark = min(easeCubicInOut((f - d) / 31.), 1.);
        vec4 color = texture2D(inputImageTexture, uv);
        gl_FragColor = mix(color, vec4(0., 0., 0., 1.), dark);
        return;
    }
    f = min(scaleDuration, f);
    float process = easeCubicOut(f / scaleDuration);
    uv -= 0.5;
    uv /= 2. - sin(process * PI_TWO);
    uv += 0.5;
    uv = fieldView(uv, process);
    vec2 blurCenter = vec2(0.5);
    float blurSize = 1.2 - (process * 1.2);
    vec2 samplingOffset = 1.0/100.0 * (blurCenter - uv) * blurSize;

    gl_FragColor = zoomBlur(inputImageTexture, uv, samplingOffset);
}
