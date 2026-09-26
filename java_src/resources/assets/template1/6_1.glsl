precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define ROTATION 0.08726

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

float easeQuadOut(float t) {
    return -1.0 * t * (t - 2.0);
}

float easeQuartOut(float t) {
    return -1.0 * ((t = t - 1.0) * t * t * t - 1.0);
}

void main() {
    float f = frame + 1.;
    float d = 93.;
    if (f > d) {
        f = d;
    }
    
    float process = f / d;
    float stage1 = 0.58;
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);

    if (process < stage1) {
        float t = easeQuadOut(process);
        float rot = t * ROTATION;
        uv = (uv - 0.5) * inputSize;
        uv = mat2(cos(rot), -sin(rot), sin(rot), cos(rot)) * uv;
        uv /= (1. + t * 0.15);
        uv = uv / inputSize + 0.5;
        gl_FragColor = texture2D(inputImageTexture, uv);
    } else {
        float t = min(1., easeQuartOut((process - stage1) / (1. - stage1)));
        float scaleTo = (inputSize.y <= inputSize.x) ? 0.41 : 0.41 * (outputSize.y / outputSize.x);
        float scale = 1.15 - (1.15 - scaleTo) * t;
        vec2 uv2 = (uv - 0.5) * inputSize;
        uv2 = mat2(cos(ROTATION), -sin(ROTATION), sin(ROTATION), cos(ROTATION)) * uv2;
        uv2 = uv2 / (scale * inputSize) + 0.5;
        float delta = abs(inputSize.y - inputSize.x) / (2. * max(inputSize.x, inputSize.y));
        float dx = step(0., inputSize.x - inputSize.y) * delta;
        float dy = step(0., inputSize.y - inputSize.x) * delta;
    
        if (uv2.x >= dx && uv2.x <= 1. - dx && uv2.y >= dy && uv2.y <= 1. - dy) {
            gl_FragColor = texture2D(inputImageTexture, uv2);
        } else {
            uv = (uv - 0.5) * inputSize;
            uv = mat2(cos(ROTATION), -sin(ROTATION), sin(ROTATION), cos(ROTATION)) * uv;
            uv = uv / (1.15 * inputSize) + 0.5;
            gl_FragColor = gaussianBlur_X(inputImageTexture, uv);
        }
    }
}
