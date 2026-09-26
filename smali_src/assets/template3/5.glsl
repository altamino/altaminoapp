precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
varying highp vec2 textureCoordinate3;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform sampler2D inputImageTexture3;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 inputSize3;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI 3.14159265359
#define PI_TWO 1.570796327

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

vec4 texture(sampler2D sampler, vec2 uv) {
    if (uv.y > 1. || uv.y < 0.) {
        uv.y = fract(uv.y);
    } else {
        uv.y = 1.0 - fract(uv.y);
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

float easeCubicOut(float t) {
    return ((t = t - 1.0) * t * t + 1.0);
}

vec2 fisheyeMapping(vec2 uv, float process) {
    float focal_length = (sin(process * PI_TWO) - 1.) * 0.034;
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
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);
    vec2 uv3 = centerCrop(textureCoordinate, inputSize3, outputSize);

    float d = 23.;
    float f = frame + 1.0;
    if (f > d) {
        f = d;
    }

    float stage1 = 0.2;
    float stage2 = 0.6;
    float t = f / d;

    if (t < stage1) {
        gl_FragColor = texture2D(inputImageTexture, uv);
    } else if (t <= stage2) {
        if (textureCoordinate.y <= 0.5) {
            t = 0.5 + easeCubicOut((t - stage1) / 0.4) / 2.;
            vec2 speed = vec2(0., cos(t * PI_TWO) / 2.);
            uv2.y = uv2.y + 0.25 - t;
            gl_FragColor = motionBlur(inputImageTexture2, uv2, speed);
        } else {
            gl_FragColor = texture2D(inputImageTexture, uv);
        }
    } else {
        if (textureCoordinate.y <= 0.5) {
            uv2.y = uv2.y + 0.25;
            gl_FragColor = texture2D(inputImageTexture2, uv2);
        } else {
            t = 0.5 + easeCubicOut((t - stage2) / 0.4) / 2.;
            vec2 speed = vec2(0., cos(t * PI_TWO) / 2.);
            uv3.y = uv3.y - 0.25 + t;
            gl_FragColor = motionBlur(inputImageTexture3, uv3, speed);
        }
    }
}
