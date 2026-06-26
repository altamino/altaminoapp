precision highp float;

varying highp vec2 textureCoordinate;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform sampler2D inputImageTexture3;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 inputSize3;
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
    vec3 grayVec = vec3( 0.2989, 0.5870, 0.1140);
    float offsetY = 1. / 3.;
    vec2 scaledUV = fract(textureCoordinate * vec2(1., 3.));
    vec2 uv = centerCrop(scaledUV, inputSize, outputSize);
    uv.y = uv.y / 3. + offsetY;
    vec2 uv2 = centerCrop(scaledUV, inputSize2, outputSize);
    uv2.y = uv2.y / 3. + offsetY;
    vec2 uv3 = centerCrop(scaledUV, inputSize3, outputSize);
    uv3.y = uv3.y / 3. + offsetY;
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
    if (textureCoordinate.y >= offsetY && textureCoordinate.y < offsetY * 2.) {
        uv2 -= 0.5;
        uv2 = (uv2 / scale) + 0.5;
        uv2.x = fract(uv2.x - process);
        gl_FragColor = texture2D(inputImageTexture2, uv2);
    } else if (textureCoordinate.y < offsetY) {
        uv -= 0.5;
        uv = (uv / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture, uv);
        gl_FragColor = mix(texColor, vec4(0.05, 0.61, 0.93, 1.), 0.3);
    } else {
        uv3 -= 0.5;
        uv3 = (uv3 / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture3, uv3);
        gl_FragColor = mix(texColor, vec4(0.93, 0.05, 0.55, 1.), 0.3);
    }
}
