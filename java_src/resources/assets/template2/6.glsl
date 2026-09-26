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
#define PI_TWO 1.57

highp vec2 centerCrop(highp vec2 coord, highp vec2 inSize, highp vec2 outSize)
{
    highp float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    highp vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeQuintOut(float t) {
    return ((t = t - 1.0) * t * t * t * t + 1.0);
}

vec2 fieldView(vec2 uv, float process, float startOffset) {
    uv -= 0.5;
    float focal_length = sin(startOffset + process * PI_TWO);
    float focal_length_x = focal_length * 0.084;
    float focal_length_y = focal_length * 0.012;
    float theta_x = 6.*length(uv);
    float theta_y = 0.6*length(uv);
    float rx = focal_length_x * sin(theta_x);
    float ry = focal_length_y * sin(theta_y);
    
    return uv + normalize(uv)*vec2(rx, ry) + 0.5;
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
    float f= frame + 1.;
    float division = 33.;
    if (f > division) {
        f = division;
    }
    float fraction = easeQuintOut(f / division);
    float process = 0.9 + fraction * 0.1;
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    uv -= 0.5;
    uv /= (2. * sin(process * PI) + 1.);
    uv += 0.5;
    uv = fieldView(uv, fraction, PI_TWO);
    vec2 blurCenter = vec2(0.5);
    float blurSize = 1.2 - fraction * 1.2;
    vec2 samplingOffset = 1.0/100.0 * (blurCenter - uv) * blurSize;
    
    gl_FragColor = zoomBlur(inputImageTexture, uv, samplingOffset);
}



