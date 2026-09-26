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

vec2 centerCrop( vec2 coord,  vec2 inSize,  vec2 outSize)
{
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeQuintIn(float t) {
    return t * t * t * t * t;
}

float easeQuadOut(float t) {
    return -1.0 * t * (t - 2.0);
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
    float focal_length = (sin(startOffset + process * PI_TWO)) * 0.084;
    float theta = 6.*length(uv);
    float r = focal_length * sin(theta);
    
    return uv + normalize(uv)*r + 0.5;
}

vec2 fisheyeMapping(vec2 uv, float process) {
    float focal_length = (-0.5+sin(process)) * 0.034;
    float theta = 3.*length(uv);
    // displacement
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

void main() {
    float f = frame + 1.0;
    float division = 56.;
    
    if (f > division) {
        f = division;
    }
    vec2 inSize = (f <= 15.) ? inputSize : inputSize2;
    vec2 uv = centerCrop(textureCoordinate, inSize, outputSize);
    vec4 fragmentColor = vec4(0.);
    if (f <= 15.) {
        float process = easeQuintIn(f / 15.);
        uv -= 0.5;
        uv /= (1.2 * (sin((1. - process) * (- PI / 2.)) + 1.)) + 1.;
        uv += 0.5;
        uv = fieldView(uv, process, 0.);
        vec2 samplingOffset = 1.0/100.0 * (vec2(0.5) - uv) * process;
        fragmentColor += zoomBlur(inputImageTexture, uv, samplingOffset);
    } else {
        float process = easeQuadOut((f - 15.) / 41.); 
        int doFisheye = 0;
        float fisheyeProcess = 0.;
        uv -= 0.5;
        if (process >= 0.5) {
            process = easeQuadIn((f - 15.) / 41.);
            if (process <= 0.5) {
                doFisheye = 1;
                fisheyeProcess = (1. - ((0.5 - process) / (0.5 - easeQuadIn(26. / 41.))));
            }
            process = max(0.5, process);
        }
        uv /= (7. * sin(process * PI) + 1.);
        uv += 0.5;
        vec2 blurCenter = vec2(0.5);
        float blurSize = abs(7. - (process * 14.));
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

        if(doFisheye == 1) {
            uv2 = fisheye(uv2, fisheyeProcess);
        }

        fragmentColor += zoomBlur(inputImageTexture2, uv2, samplingOffset);
    }
    
    gl_FragColor = fragmentColor;
}
