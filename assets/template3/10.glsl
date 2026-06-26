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
#define PI_TWO 1.570796326794897

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float stepForRatio(float r, float limit) {
    mediump float margin = 10.0;
    return max(1.0 - floor(r * margin) / margin, limit);
}

void main() {
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);
    vec2 uv3 = centerCrop(textureCoordinate, inputSize3, outputSize);
    float f= frame + 1.;
    float division = 34.;
    if (f > division) {
        f = division;
    }
    float stage1 = 5.;
    float stage2 = 10.;
    if (f <= stage1) {
        gl_FragColor = texture2D(inputImageTexture, uv);
    } else if (f <= stage2) {
        gl_FragColor = texture2D(inputImageTexture2, uv2);
    } else {
        float limit = 1.1 - ((f - stage2) / (division - stage2)) * 0.6;
        float limitFloor = floor(limit * 10.) / 10.;
        limit = min(1.0, step(limitFloor, limit + 0.01) * limitFloor);
        uv3 *= inputSize3;
        float rx = (inputSize3.x / 2. - abs(uv3.x - inputSize3.x / 2.)) / inputSize3.x;
        float ry = (inputSize3.y / 2. - abs(uv3.y - inputSize3.y / 2.)) / inputSize3.y;
        float ratio = max(stepForRatio(rx, limit), stepForRatio(ry, limit));
        uv3 -= inputSize3 * 0.5;
        uv3 /= pow(ratio, 2.);
        uv3 += inputSize3 * 0.5;
        uv3 /= inputSize3;
        gl_FragColor = texture2D(inputImageTexture3, uv3);
    }
}
