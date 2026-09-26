precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI_TWO 1.570796326794897
#define ROTATION 0.075

highp vec2 centerCrop(highp vec2 coord, highp vec2 inSize, highp vec2 outSize)
{
    highp float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    highp vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeSineOut(float t) {
    return sin(t * PI_TWO);
}

void main() {
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    float d = 85.;
    float f = frame + 1.;
    if (f > d) {
        f = d;
    }

    if (f <= 46.0) {
        float process = easeSineOut(f / 46.);
        float rot = process * ROTATION;
        uv = (uv - 0.5) * inputSize;
        uv = mat2(cos(rot), -sin(rot), sin(rot), cos(rot)) * uv;
        uv /= (1. + process * 0.115);
        uv = uv / inputSize + 0.5;
        gl_FragColor = texture2D(inputImageTexture, uv);
    } else {
        float process = (f - 46.) / (d - 46.);
        uv = (uv - 0.5) * inputSize;
        uv = mat2(cos(ROTATION), -sin(ROTATION), sin(ROTATION), cos(ROTATION)) * uv;
        uv /= 1.115;
        uv = uv / inputSize + 0.5;
        uv.x += 0.15 * process;
        if (uv.x > 1.) {
            uv.x = 1. - fract(uv.x);
        }
        gl_FragColor = texture2D(inputImageTexture, uv);
    }
}