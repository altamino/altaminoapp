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
#define TWO_PI 6.283185307
#define PI_TWO 1.570796327

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeQuadIn(float t) {
    return t * t;
}

vec2 fisheyeMapping(vec2 uv, float process, int channelIndex) {
    float focal_length;
    float fProcess = fract(process);
    if (channelIndex == 0) {
        focal_length = ((process > 1.) ? (sin(fProcess * TWO_PI)) : (cos(process * TWO_PI) - 1.)) * 0.034;
    } else {
        focal_length = (cos(process * process * PI) - 1.) * 0.034;
    }
    float theta = 4.*length(uv);
    // displacement
    float r = focal_length * sin(theta);

    return uv + normalize(uv)*r;
}

vec2 fisheye(vec2 uv, float process, int channelIndex) {
    vec2 coords = uv;
    coords -= 0.5;
    vec2 xy = fisheyeMapping(coords, process, channelIndex);
    xy += 0.5;
    return xy;
}

void main() {
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);

    float d = 20.;
    float f = frame;
    if (f > d) {
        f = d;
    }
    float t = easeQuadIn(f / d);
    if (textureCoordinate.y <= 0.5) {
        uv.y += 0.25;
        uv = fisheye(uv, t * 1.2, 0);
        gl_FragColor = texture2D(inputImageTexture, uv);
    } else {
        uv2.y -= 0.25;
        uv2 = fisheye(uv2, t * 1.1, 1);
        gl_FragColor = texture2D(inputImageTexture2, uv2);
    }
}
