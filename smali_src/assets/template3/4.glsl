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

vec2 centerCrop( vec2 coord,  vec2 inSize,  vec2 outSize)
{
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeQuintOut(float t) {
    return ((t = t - 1.0) * t * t * t * t + 1.0);
}

float easeCubicIn(float t) {
    return t * t * t;
}

vec2 fisheyeMapping(vec2 uv, float process) {
    float focal_length = (sin(process * PI_TWO) - 1.) * 0.034;
    float theta = 3.*length(uv);
    float r = focal_length * sin(theta);
    
    return uv + normalize(uv)*r;
}

vec2 fisheye(vec2 uv, float process) {
    vec2 coords = uv;
    coords -= 0.5;
    vec2 xy = fisheyeMapping(coords, process);
    xy += 0.5;
    return xy;
}

vec2 fieldView(vec2 uv, float process, float startOffset) {
    uv -= 0.5;
    float focal_length = (sin(startOffset + process * PI_TWO)) * 0.068;
    float theta = 6.*length(uv);
    float r = focal_length * sin(theta);
    
    return uv + normalize(uv)*r + 0.5;
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

void main() {
    float f = frame + 1.0;
    float division = 34.;
    
    if (f > division) {
        f = division;
    }
    float stage1 = 5.;
    float stage2 = 12.;
    float stage3 = 34.;
    vec2 inSize = (f <= stage2) ? inputSize : inputSize2;
    vec2 uv = centerCrop(textureCoordinate, inSize, outputSize);
    vec4 fragmentColor = vec4(0.);
    vec2 blurCenter = vec2(0.5);
    if (f <= stage1) {
        float fisheyeProcess = f / stage1;
        uv = fisheye(uv, fisheyeProcess);
        fragmentColor += texture2D(inputImageTexture, uv);
    } else if (f <= stage2) {
        float process = easeCubicIn(f / stage2); 
        uv -= 0.5;
        uv /= (6. * (cos(process * PI_TWO)) + 1.);
        uv += 0.5;
        uv = fieldView(uv, process, 0.);
        float blurSize = process * 7.;
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
        fragmentColor += zoomBlur(inputImageTexture, uv2, samplingOffset);
    } else {
        float fraction = easeQuintOut((f - stage2) / (stage3 - stage2));
        float process = 0.9 + fraction * 0.1;
        uv -= 0.5;
        uv /= (2. * sin(process * PI) + 1.);
        uv += 0.5;
        uv = fieldView(uv, fraction, PI_TWO);
        float blurSize = 1.2 - (fraction * 1.2);
        vec2 samplingOffset = 1.0/100.0 * (blurCenter - uv) * blurSize;
        fragmentColor += zoomBlur(inputImageTexture2, uv, samplingOffset);
    } 

    gl_FragColor = fragmentColor;
}
