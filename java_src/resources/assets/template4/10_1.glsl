precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI 3.1415927
#define PI_TWO 1.57
#define ROTATION 6.2831854

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float normpdf(float x, float sigma) {
	return 0.39894*exp(-0.5*x*x/(sigma*sigma))/sigma;
}

vec4 gaussianBlur_X(sampler2D sampler, vec2 uv) {
    const int mSize = 31;
    const int kSize = (mSize-1)/2;
    float kernel[mSize];
    vec3 final_color = vec3(0.0);
    
    //create the 1-D kernel
    float sigma = 7.0;
    float Z = 0.0;
    for (int j = 0; j <= kSize; ++j) {
        kernel[kSize+j] = kernel[kSize-j] = normpdf(float(j), sigma);
    }
    
    //get the normalization factor (as the gaussian has been clamped)
    for (int j = 0; j < mSize; ++j) {
        Z += kernel[j];
    }
    
    // float co = kernel[int(mod(textureCoordinate.x * outputSize.x, 11.))];
    // gl_FragColor = vec4(co);
    //read out the texels
    for (int i=-kSize; i <= kSize; ++i) {
        vec2 cood = uv * outputSize;
        vec3 color = texture2D(sampler, (cood+vec2(float(i), 0.)) / outputSize.xy).rgb;
        final_color += kernel[kSize+i]*color;
    }
    
    return vec4(final_color/Z, 0.9);
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
    float focal_length = (sin(PI_TWO + process * PI_TWO)) * 0.068;
    float theta = 6.*length(uv);
    float r = focal_length * sin(theta);
    
    return uv + normalize(uv)*r + 0.5;
}

float easeQuartIn(float t) {
    return t * t * t * t;
}

float easeQuartOut(float t) {
    return -1.0 * ((t = t - 1.0) * t * t * t - 1.0);
}

void main() {
    float f = frame + 1.;
    float d = 40.;
    if (f > d) {
        f = d;
    }
    float stage1 = 13.;

    vec2 inSize = (f < stage1) ? inputSize : inputSize2;
    vec2 uv = centerCrop(textureCoordinate, inSize, outputSize);
    vec2 uv2 = uv - 0.5;
    uv2 = uv2 / 0.7 + 0.5;

    float delta = abs(inSize.y * 0.5625 - inSize.x) / (2. * max(inSize.x, inSize.y * 0.5625));
    float dx = step(0., inSize.x - inSize.y * 0.5625) * delta;
    float dy = step(0., inSize.y * 0.5625 - inSize.x) * delta;
    
    if (f <= stage1 && uv2.x >= dx && uv2.x <= 1. - dx && uv2.y >= dy && uv2.y <= 1. - dy) {
        gl_FragColor = texture2D(inputImageTexture, uv2);
    } else if (f <= stage1) {
        float process = easeQuartIn(f / stage1);
        uv = uv - 0.5;
        uv = uv / (1.2 + process) + 0.5;
//        vec2 uv_fieldView = fieldView(uv, process);
        gl_FragColor = gaussianBlur_X(inputImageTexture, uv);
    } else {
        float process = easeQuartOut((f - stage1) / (d - stage1));
        uv = uv - 0.5;
        uv = uv / (2.2 - process * 1.2) + 0.5;
        vec2 blurCenter = vec2(0.5);
        float blurSize = 1. - process;
        vec2 samplingOffset = 1.0/100.0 * (blurCenter - uv) * blurSize;
//        vec2 uv_fieldView = fieldView(uv, process);
        gl_FragColor = zoomBlur(inputImageTexture2, uv, samplingOffset);
    }
}
