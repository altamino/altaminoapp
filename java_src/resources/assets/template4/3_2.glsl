precision highp float;

varying highp vec2 textureCoordinate;
uniform sampler2D inputImageTexture;
uniform highp vec2 inputSize;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI 3.1415927
#define PI_TWO 1.57
#define ROTATION 6.2831854

float normpdf(float x, float sigma) {
	return 0.39894*exp(-0.5*x*x/(sigma*sigma))/sigma;
}

vec4 gaussianBlur_Y(sampler2D sampler, vec2 uv) {
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
    for (int j=-kSize; j <= kSize; ++j) {
        vec2 cood = uv * outputSize;
        vec3 color = texture2D(sampler, (cood+vec2(0. ,float(j))) / outputSize.xy).rgb;
        final_color += kernel[kSize+j]*color;
    }
    
    return vec4(final_color/Z, 0.9);
}

void main() {
    float f = frame + 1.;
    float d = 35.;
    if (f > d) {
        f = d;
    }

    vec2 uv = textureCoordinate;
    vec2 uv2 = uv - 0.5;
    uv2 = uv2 / 0.7 + 0.5;
    
    if (uv2.x >= 0. && uv2.x <= 1. && uv2.y >= 0. && uv2.y <= 1.) {
        gl_FragColor = texture2D(inputImageTexture, uv);
    } else {
        gl_FragColor = gaussianBlur_Y(inputImageTexture, uv);
    }
}
