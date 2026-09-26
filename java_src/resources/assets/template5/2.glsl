precision highp float;

varying highp vec2 textureCoordinate;
uniform sampler2D inputImageTexture;
uniform highp vec2 inputSize;
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
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    uv.y *= 2.;
    uv.y = (uv.y <= 1.) ? (uv.y / 2. + 0.25) : ((1. - fract(uv.y)) / 2. + 0.25);
    float d = 59.;
    float f = frame + 1.;
    if (f > d) {
        f = mod(f, d);
    }
    float process = f / d;
    uv -= 0.5;
    if (process <= 0.18 || (process > 0.25 && process <= 0.43)) {
        float offset = 0.25 * step(0.25, process);
        float scale = 1. + 0.2 * sin(((process - offset) / 0.18) * PI);
        uv = (uv / scale);
    } else if (process > 0.52 && process <= 0.88) {
        float scale = 1. + 0.1 * abs(sin(((process - 0.52) / 0.36) * THREE_PI));
        uv = (uv / scale);
    }
    uv += 0.5;
    gl_FragColor = texture2D(inputImageTexture, uv);
}
