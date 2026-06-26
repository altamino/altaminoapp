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

float easeQuadOut(float t) {
    return -1.0 * t * (t - 2.0);
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
    float division = 11.;
    
    if (f > division) {
        f = division;
    }
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);
    float process = easeQuadOut(f / division); 
    vec4 fragmentColor = vec4(0.);
    float divider = 0.5 - 0.5 * min(1., f * 2. / division);
    vec2 blurCenter = vec2(0.5);
    float blurSize = 1.5 - (process * 1.5);

    vec4 baseColor = texture2D(inputImageTexture, uv);
    if (textureCoordinate.x >= divider && textureCoordinate.x <= 1. - divider) {
        uv2 -= 0.5;
        uv2 = uv2 / (1. + 0.7 * process) + 0.5;
        vec2 samplingOffset = 1.0/100.0 * (blurCenter - uv2) * blurSize;
        fragmentColor += mix(zoomBlur(inputImageTexture2, uv2, samplingOffset), baseColor, (1. - pow(process, 4.)) * abs(textureCoordinate.x - 0.5) / abs(divider - 0.5));
    } else {
        fragmentColor += baseColor;
    }

    gl_FragColor = fragmentColor;
}
