precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define ROTATION 0.7854

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

void main() {
    float f = frame + 1.;
    float d = 20.;
    if (f > d) {
        f = d;
    }
    float rot = 0.;
    float process = f / d;
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = vec2(-1., -1.);
    vec2 uv3 = vec2(-1., -1.);
    vec2 uv4 = vec2(-1., -1.);
    vec2 uv5 = vec2(-1., -1.);
    if (process >= 0.2) {
        rot = 0.25 * ROTATION;
        uv2 = (uv - 0.5) * inputSize;
        uv2 = mat2(cos(rot), -sin(rot), sin(rot), cos(rot)) * uv2;
        uv2 /= 0.8;
        uv2 = uv2 / inputSize + 0.5;
    }
    if (process >= 0.4) {
        rot = 0.5 * ROTATION;
        uv3 = (uv - 0.5) * inputSize;
        uv3 = mat2(cos(rot), -sin(rot), sin(rot), cos(rot)) * uv3;
        uv3 /= 0.6;
        uv3 = uv3 / inputSize + 0.5;
    }
    if (process >= 0.6) {
        rot = 0.75 * ROTATION;
        uv4 = (uv - 0.5) * inputSize;
        uv4 = mat2(cos(rot), -sin(rot), sin(rot), cos(rot)) * uv4;
        uv4 /= 0.4;
        uv4 = uv4 / inputSize + 0.5;
    }
    if (process >= 0.8) {
        rot = ROTATION;
        uv5 = (uv - 0.5) * inputSize;
        uv5 = mat2(cos(rot), -sin(rot), sin(rot), cos(rot)) * uv5;
        uv5 /= 0.2;
        uv5 = uv5 / inputSize + 0.5;
    }
   
    float delta = abs(inputSize.y * 0.5625 - inputSize.x) / (2. * max(inputSize.x, inputSize.y * 0.5625));
    float dx = step(0., inputSize.x - inputSize.y * 0.5625) * delta;
    float dy = step(0., inputSize.y * 0.5625 - inputSize.x) * delta;
    
    if (uv5.x >= dx && uv5.x <= 1. - dx && uv5.y >= dy && uv5.y <= 1. - dy) {
        gl_FragColor = texture2D(inputImageTexture, uv5);
    } else if (uv4.x >= dx && uv4.x <= 1. - dx && uv4.y >= dy && uv4.y <= 1. - dy) {
        gl_FragColor = texture2D(inputImageTexture, uv4);
    } else if (uv3.x >= dx && uv3.x <= 1. - dx && uv3.y >= dy && uv3.y <= 1. - dy) {
        gl_FragColor = texture2D(inputImageTexture, uv3);
    } else if (uv2.x >= dx && uv2.x <= 1. - dx && uv2.y >= dy && uv2.y <= 1. - dy) {
        gl_FragColor = texture2D(inputImageTexture, uv2);
    } else {
        gl_FragColor = texture2D(inputImageTexture, uv);
    }
}
