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

float easeQuintInOut(float t) {
    t = t * 2.0; if (t < 1.0) return 0.5 * t * t * t * t * t;
    return 0.5 * ((t -= 2.0) * t * t * t * t + 2.0);
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
    float division = 21.;
    
    if (f > division) {
        f = division;
    }
    float process = easeQuintInOut(f / division); 
    float stage1 = 0.7;
    vec2 inSize = (process <= stage1) ? inputSize : inputSize2;
    vec2 uv = centerCrop(textureCoordinate, inSize, outputSize);
    uv -= 0.5;
    uv /= (0.7 * (sin(process * PI)) + 1.);
    uv += 0.5;
    vec4 fragmentColor = vec4(0.);
    vec2 blurCenter = vec2(0.5);
    if (process <= stage1) {
        vec4 color = texture2D(inputImageTexture, uv);
        fragmentColor += vec4(mix(color.rgb, vec3(1.), sin(process * PI) * 0.8), 1.0);
    } else {
        float blurSize = 2. - ((process - stage1) / (1. - stage1) * 2.);
        vec2 samplingOffset = 1.35/100.0 * (blurCenter - uv) * blurSize;
        fragmentColor += zoomBlur(inputImageTexture2, uv, samplingOffset);
    } 

    gl_FragColor = fragmentColor;
}
