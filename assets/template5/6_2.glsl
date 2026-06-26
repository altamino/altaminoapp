precision highp float;

varying highp vec2 textureCoordinate;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform sampler2D inputImageTexture3;
uniform sampler2D inputImageTexture4;
uniform sampler2D inputImageTexture5;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 inputSize3;
uniform highp vec2 inputSize4;
uniform highp vec2 inputSize5;
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
    vec2 uv = textureCoordinate;
    vec3 grayVec = vec3( 0.2989, 0.5870, 0.1140);
    vec2 scaledUV = fract(textureCoordinate * 3.);
    vec2 uv2 = centerCrop(scaledUV, inputSize2, outputSize);
    vec2 uv3 = centerCrop(scaledUV, inputSize3, outputSize);
    vec2 uv4 = centerCrop(scaledUV, inputSize4, outputSize);
    vec2 uv5 = centerCrop(scaledUV, inputSize5, outputSize);

    float d = 61.;
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

    if (textureCoordinate.x > (2./3.) && textureCoordinate.y > (1./3.) && textureCoordinate.y <= (2./3.)) {
        uv2 -= 0.5;
        uv2 = (uv2 / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture2, uv2);
        if (process < 0.6) {
            float gray = dot(texColor.rgb, grayVec);
            gl_FragColor = vec4(vec3(gray), 1.);
        } else {
            gl_FragColor = texColor;
        }
    } else if (textureCoordinate.x <= (1./3.) && textureCoordinate.y > (2./3.)) {
        uv3 -= 0.5;
        uv3 = (uv3 / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture3, uv3);
        if (process < 0.7) {
            float gray = dot(texColor.rgb, grayVec);
            gl_FragColor = vec4(vec3(gray), 1.);
        } else {
            gl_FragColor = texColor;
        }
    } else if (textureCoordinate.x > (1./3.) && textureCoordinate.x <= (2./3.) && textureCoordinate.y > (2./3.)) {
        uv4 -= 0.5;
        uv4 = (uv4 / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture4, uv4);
        if (process < 0.8) {
            float gray = dot(texColor.rgb, grayVec);
            gl_FragColor = vec4(vec3(gray), 1.);
        } else {
            gl_FragColor = texColor;
        }
    } else if (textureCoordinate.x > (2./3.) && textureCoordinate.y > (2./3.)) {
        uv5 -= 0.5;
        uv5 = (uv5 / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture5, uv5);
        if (process < 0.9) {
            float gray = dot(texColor.rgb, grayVec);
            gl_FragColor = vec4(vec3(gray), 1.);
        } else {
            gl_FragColor = texColor;
        }
    } else {
        gl_FragColor = texture2D(inputImageTexture, uv);
    }
}
