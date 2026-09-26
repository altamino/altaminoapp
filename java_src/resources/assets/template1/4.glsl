precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define ROTATION 0.07156

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeQuadOut(float t) {
    return -1.0 * t * (t - 2.0);
}

void main() {
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    float d = 44.;
    float f = frame + 1.;
    if (f > d) {
        f = d;
    }

    float process = easeQuadOut(f / d);
    float rot = process * ROTATION;
    uv = (uv - 0.5) * inputSize;
    uv = mat2(cos(rot), -sin(rot), sin(rot), cos(rot)) * uv;
    uv /= (1. + process * 0.11);
    uv = uv / inputSize + 0.5;

    gl_FragColor = texture2D(inputImageTexture, uv);
}
