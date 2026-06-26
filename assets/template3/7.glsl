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
#define PI_TWO 1.570796327

highp vec2 centerCrop(highp vec2 coord, highp vec2 inSize, highp vec2 outSize)
{
    highp float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    highp vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeQuartOut(float t) {
    return -1.0 * ((t = t - 1.0) * t * t * t - 1.0);
}

float easeQuadIn(float t) {
    return t * t;
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

vec2 fieldView(vec2 uv, float process, float startOffset) {
    uv -= 0.5;
    float focal_length = (sin(startOffset + process * PI_TWO)) * 0.068;
    float theta = 6.*length(uv);
    float r = focal_length * sin(theta);
    
    return uv + normalize(uv)*r + 0.5;
}

void main() {
    float f= frame + 1.;
    float division = 48.;
    if (f > division) {
        f = division;
    }
    float stage1 = 18.;
    float stage2 = 30.;
    vec4 fragmentColor = vec4(0.);
    if (f <= stage1) {
        float process = easeQuartOut(f / stage1);
        vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
        uv -= 0.5;
        uv /= (2. - process);
        uv += 0.5;
        uv = fieldView(uv, process, PI_TWO);
        vec2 blurCenter = vec2(0.5);
        float blurSize = 1.2 - (process * 1.2);
        vec2 samplingOffset = 1.0/100.0 * (blurCenter - uv) * blurSize;
        fragmentColor += zoomBlur(inputImageTexture, uv, samplingOffset);
    } else if (f <= stage2) {
        float process = easeQuadIn((f - stage1) * 1.2 / (stage2 - stage1));
        vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
        uv -= 0.5;
        uv /= (process + 1.);
        uv += 0.5;
        uv = fieldView(uv, process, 0.);
        vec2 blurCenter = vec2(0.5);
        float blurSize = process * 1.2;
        vec2 samplingOffset = 1.0/100.0 * (blurCenter - uv) * blurSize;
        fragmentColor += zoomBlur(inputImageTexture, uv, samplingOffset);
    } else {
        float process = easeQuartOut((f - stage2) / (division - stage2));
        vec2 uv = centerCrop(textureCoordinate, inputSize2, outputSize);
        uv -= 0.5;
        uv /= (6. * process + 1.);
        uv += 0.5;
        uv = fieldView(uv, process * 1.1, PI_TWO);
        vec2 blurCenter = vec2(0.5);
        float blurSize = 7. - (process * 7.);
        vec2 samplingOffset = 2.0/100.0 * (blurCenter - uv) * blurSize;
        vec2 uv2 = uv * 7.;
        float col = floor(uv2.x);
        if (mod(col, 2.) == 0.) {
            uv2.x = 1. - fract(uv2.x);
        } else {
            uv2.x = fract(uv2.x);
        }
        float row = floor(uv2.y);
        if (mod(row, 2.) == 0.) {
            uv2.y = 1. - fract(uv2.y);
        } else {
            uv2.y = fract(uv2.y);
        }
        fragmentColor += zoomBlur(inputImageTexture2, uv2, samplingOffset);
    }

    gl_FragColor = fragmentColor;
}



