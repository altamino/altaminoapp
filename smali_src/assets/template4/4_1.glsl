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
#define ROTATION 0.175

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

vec4 texture(sampler2D sampler, vec2 uv) {
    if (int(mod(uv.y, 2.)) == 1) {
        uv.y = 1.0 - fract(uv.y);
    } else {
        uv.y = fract(uv.y);
    }
    return texture2D(sampler, uv);
}

vec4 motionBlur(sampler2D sampler, vec2 uv, vec2 speed) {
    vec3 color = vec3(0.0);
    float total = 0.0;
    float offset = .3;
    for (float t = 0.0; t < 30.0; t++) {
        float percent = (t + offset) / 30.0;
        float weight = 2.0 * (percent - percent * percent);
        color += texture(sampler, uv + speed * percent).rgb * weight;
        total += weight;
    }
    return vec4(color / total, 1.0);
}

float easeCubicInOut(float t) {
    t = t * 2.0; if (t < 1.0) return 0.5 * t * t * t;
    return 0.5 * ((t -= 2.0) * t * t + 2.0);
}

float easeQuadOut(float t) {
    return -1.0 * t * (t - 2.0);
}

void main() {
    float f = frame + 1.;
    float d = 19.;
    if (f > d) {
        f = d;
    }
    
    float process = easeCubicInOut(f / d);
    float dropProcess = easeQuadOut(f / d);
    float stage1 = 0.42;

    vec2 inSize = (process < stage1) ? inputSize : inputSize2;
    vec2 uv = centerCrop(textureCoordinate, inSize, outputSize);
    vec2 uv2 = (uv - 0.5) * inSize;
    float rot = dropProcess * ROTATION;
    uv2 = mat2(cos(rot), -sin(rot), sin(rot), cos(rot)) * uv2;
    uv2 = uv2 / (0.7 * inSize) + 0.5;
    uv2.y -= 2.4 * dropProcess;

    float delta = abs(inSize.y * 0.5625 - inSize.x) / (2. * max(inSize.x, inSize.y * 0.5625));
    float dx = step(0., inSize.x - inSize.y * 0.5625) * delta;
    float dy = step(0., inSize.y * 0.5625 - inSize.x) * delta;
    
    if (uv2.x >= dx && uv2.x <= 1. - dx && uv2.y >= dy && uv2.y <= 1. - dy) {
        gl_FragColor = texture2D(inputImageTexture, uv2);
    } else {
        float speed = sin(process * PI) * 0.5;
        uv.y -= process * 2.;
        vec2 uv_gaussian = uv;
        if (int(mod(uv_gaussian.y, 2.)) == 1) {
            uv_gaussian.y = 1.0 - fract(uv_gaussian.y);
        } else {
            uv_gaussian.y = fract(uv_gaussian.y);
        }
        gl_FragColor = (process < stage1) ? gaussianBlur_X(inputImageTexture, uv_gaussian) : motionBlur(inputImageTexture2, uv, vec2(0., speed));
    }
}
