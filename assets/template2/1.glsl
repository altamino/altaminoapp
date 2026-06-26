precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 outputSize;
uniform mediump float frame;
#define PI_TWO	1.570796326794897

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeSineOut(float t) {
    return sin(t * PI_TWO);
}

vec2 fieldView(vec2 uv, float process) {
    uv -= 0.5;
    float focal_length = (sin(PI_TWO + process * PI_TWO)) * 0.084;
    float theta = 6.*length(uv);
    float r = focal_length * sin(theta);

    return uv + normalize(uv)*r + 0.5;
}

void main() {
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);

    float f = frame + 1.;
    float division = 25.;
    if (f > division) {
        f = division;
    }
    float process = easeSineOut(f / division);
    uv *= inputSize;
    uv -= inputSize * 0.5;

    float scale = 2.5 - process * 1.5;
    uv /= scale;

    uv += inputSize * 0.5;
    uv /= inputSize;

    uv = fieldView(uv, process);

    gl_FragColor = texture2D(inputImageTexture, uv);
}
