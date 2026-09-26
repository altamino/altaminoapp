precision highp float;

varying highp vec2 textureCoordinate;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform sampler2D inputImageTexture3;
uniform sampler2D inputImageTexture4;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 inputSize3;
uniform highp vec2 inputSize4;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI 3.1415927
#define THREE_PI 9.4247778

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

void main() {
    vec2 scaledUV = fract(textureCoordinate * 2.);
    vec2 uv = centerCrop(scaledUV, inputSize, outputSize);
    vec2 uv2 = centerCrop(vec2(1. - scaledUV.x, scaledUV.y), inputSize2, outputSize);
    vec2 uv3 = centerCrop(vec2(scaledUV.x, 1. - scaledUV.y), inputSize3, outputSize);
    vec2 uv4 = centerCrop(vec2(1. - scaledUV.x, 1. - scaledUV.y), inputSize4, outputSize);
    float d = 62.;
    float f = frame + 1.;
    if (f > d) {
        f = d;
    }
    float process = f / d;
    float scale = 1.;
    if (process <= 0.18 || (process > 0.25 && process <= 0.43)) {
        float offset = 0.25 * step(0.25, process);
        scale = 1. + 0.2 * sin(((process - offset)  / 0.18) * PI);
    } else if (process > 0.52 && process <= 0.88) {
        scale = 1. + 0.1 * abs(sin(((process - 0.52) / 0.36) * THREE_PI));
    }
    if (textureCoordinate.x <= 0.5 && textureCoordinate.y <= 0.5) {
        uv -= 0.5;
        uv = (uv / scale) + 0.5;
        gl_FragColor = texture2D(inputImageTexture, uv);
    } else if (textureCoordinate.x > 0.5 && textureCoordinate.y <= 0.5) {
        uv2 -= 0.5;
        uv2 = (uv2 / scale) + 0.5;
        gl_FragColor = texture2D(inputImageTexture2, uv2);
    } else if (textureCoordinate.x <= 0.5 && textureCoordinate.y > 0.5) {
        uv3 -= 0.5;
        uv3 = (uv3 / scale) + 0.5;
        gl_FragColor = texture2D(inputImageTexture3, uv3);
    } else {
        uv4 -= 0.5;
        uv4 = (uv4 / scale) + 0.5;
        gl_FragColor = texture2D(inputImageTexture4, uv4);
    }
}
