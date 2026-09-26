precision highp float;

varying highp vec2 textureCoordinate;
uniform sampler2D inputImageTexture;
uniform highp vec2 inputSize;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI 3.14159265359

vec2 centerCrop( vec2 coord,  vec2 inSize,  vec2 outSize)
{
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeCircularOut(float t) {
    return sqrt(1.0 - (t = t - 1.0) * t);
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
    float division = 24.;

    if (f > division) {
        f = division;
    }
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    float process = easeCircularOut(f / division); 
    vec2 blurCenter = vec2(0.5);
    float blurSize = 2. - (pow(process, 3.) * 2.);
    uv -= 0.5;
    uv = uv / (3. - 2. * process) + 0.5;
    vec2 samplingOffset = 1.0/100.0 * (blurCenter - uv) * blurSize;
    gl_FragColor = zoomBlur(inputImageTexture, uv, samplingOffset);
}
