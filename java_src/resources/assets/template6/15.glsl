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

float easeQuartOut(float t) {
    return -1.0 * ((t = t - 1.0) * t * t * t - 1.0);
}

float easeQuintOut(float t) {
    return ((t = t - 1.0) * t * t * t * t + 1.0);
}

vec4 motionBlur(sampler2D sampler, vec2 uv, vec2 speed) {
    vec3 color = vec3(0.0);
    float total = 0.0;
    float offset = .3;
    for (float t = 0.0; t < 30.0; t++) {
        float percent = (t + offset) / 30.0;
        float weight = 2.0 * (percent - percent * percent);
        color += texture2D(sampler, fract(uv + speed * percent)).rgb * weight;
        total += weight;
    }
    return vec4(color / total, 1.0);
}

void main() {
    float f = frame + 1.0;
    float division = 20.;
    float stage1 = 10.;
    
    if (f > division) {
        f = division;
    }
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    if (f <= stage1) {
        float process = easeQuartOut(f / stage1); 
        float uvLength = length(uv);
        float uvTheta = atan(uv.y / uv.x);
        vec2 speed = vec2((1. - process) * cos(uvTheta) * length(uv), (1. - process) * sin(uvTheta) * length(uv));
        uv = uv / (1.7 + 1.3 * process);
        gl_FragColor = motionBlur(inputImageTexture, uv, speed);
    } else {
        float process = easeQuintOut((f - stage1) / (division - stage1));
        vec2 speed = vec2(process - 1., process - 1.);
        uv /= 3.;
        uv += process * 2. / 3.;
        gl_FragColor = motionBlur(inputImageTexture, uv, speed);
    }
}
