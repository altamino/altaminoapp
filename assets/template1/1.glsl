precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI_TWO 1.570796326794897
#define ROTATION 0.0698

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
    float d = 50.;
    float f = frame + 1.;
    if (f > d) {
        f = d;
    }

    if (f <= 10.) {
        float process = easeSineOut(f / 10.);
        uv -= 0.5;
        uv /= 4. - 3. * process;
        uv += 0.5;
        gl_FragColor = texture2D(inputImageTexture, uv);
    } else {
        float process = easeSineOut((f - 10.) / (d - 10.));
        float rot = process * ROTATION;
        uv = (uv - 0.5) * inputSize;
        uv = mat2(cos(rot), -sin(rot), sin(rot), cos(rot)) * uv;
        uv /= (1. + process * 0.125);
        uv = uv / inputSize + 0.5;

        gl_FragColor = texture2D(inputImageTexture, uv);
    }
}
