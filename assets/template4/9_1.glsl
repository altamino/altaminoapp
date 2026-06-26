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

vec4 motionBlur(sampler2D sampler, vec2 uv, vec2 speed, float t) {
    vec3 color = vec3(0.0);
    float total = 0.0;
    float offset = .4;
    float scale = 1. + sin(t * PI) * 0.2;
    for (float t = 0.0; t < 30.0; t++) {
        float percent = (t + offset) / 30.0;
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

float easeQuartInOut(float t) {
    t = t * 2.0; if (t < 1.0) return 0.5 * t * t * t * t;
    return -0.5 * ((t -= 2.0) * t * t * t - 2.0);
}

void main() {
    float f = frame + 1.;
    float d = 29.;
    if (f > d) {
        f = d;
    }
    
    float process = easeQuartInOut(f / d);
    float stage1 = 0.75;
    float blur = 0.3;
    float rot = process * ROTATION;
    float maxScale = 2.5;
    vec2 blurCenter = vec2(0.5);

    if (process < stage1) {
        vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
        vec2 uv2 = (uv - 0.5) * inputSize;
        float scaleFrom = 0.7;
        uv2 = mat2(cos(rot), -sin(rot), sin(rot), cos(rot)) * uv2;
        uv2 /= scaleFrom + (process / stage1) * (maxScale - scaleFrom);
        uv2 = uv2 / inputSize + 0.5;
        float delta = abs(inputSize.y * 0.5625 - inputSize.x) / (2. * max(inputSize.x, inputSize.y * 0.5625));
        float dx = step(0., inputSize.x - inputSize.y * 0.5625) * delta;
        float dy = step(0., inputSize.y * 0.5625 - inputSize.x) * delta;
    
        if (uv2.x >= dx && uv2.x <= 1. - dx && uv2.y >= dy && uv2.y <= 1. - dy) {
            float rot2 = ROTATION * (process + blur * process);
            vec2 uv2r = (uv - 0.5) * inputSize;
            uv2r = mat2(cos(rot2), -sin(rot2), sin(rot2), cos(rot2)) * uv2r;
            uv2r /= scaleFrom + ((process + blur * process) / stage1) * (maxScale - scaleFrom);
            uv2r = uv2r / inputSize + 0.5;
            vec2 speed = uv2r - uv2;
            gl_FragColor = motionBlur(inputImageTexture, uv2, speed, process);
        } else {
            gl_FragColor = gaussianBlur_X(inputImageTexture, uv);
        }
    } else {
        vec2 uv = centerCrop(textureCoordinate, inputSize2, outputSize);
        vec2 uv2 = (uv - 0.5) * inputSize2;
        float scaleFrom = maxScale;
        uv2 = mat2(cos(rot), -sin(rot), sin(rot), cos(rot)) * uv2;
        uv2 /= scaleFrom + ((process - stage1) / (1. - stage1)) * (1. - scaleFrom);
        uv2 = uv2 / inputSize2 + 0.5;
        float rot2 = ROTATION * (process + blur * (1. - process));
        vec2 uv2r = (uv - 0.5) * inputSize;
        uv2r = mat2(cos(rot2), -sin(rot2), sin(rot2), cos(rot2)) * uv2r;
        uv2r /= scaleFrom + (((process + blur * (1. - process)) - stage1) / (1. - stage1)) * (1. - scaleFrom);
        uv2r = uv2r / inputSize + 0.5;
        vec2 speed = uv2r - uv2;
        gl_FragColor = motionBlur(inputImageTexture2, uv2, speed, process);
    }
}
