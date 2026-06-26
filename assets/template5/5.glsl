precision highp float;

varying highp vec2 textureCoordinate;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform sampler2D inputImageTexture3;
uniform sampler2D inputImageTexture4;
uniform sampler2D inputImageTexture5;
uniform sampler2D inputImageTexture6;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 inputSize3;
uniform highp vec2 inputSize4;
uniform highp vec2 inputSize5;
uniform highp vec2 inputSize6;
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
    float d = 60.;
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
    float flashInterval = 0.5 / 6.;
    if (textureCoordinate.x <= (1./3.) && textureCoordinate.y <= 0.5) {
        vec2 scaledUV = fract(textureCoordinate * vec2(2., 2.));
        vec2 uv = centerCrop(scaledUV, inputSize, outputSize);
        uv.x += (0.5 - (1. / 3.)) / 2.;
        uv -= 0.5;
        uv = (uv / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture, uv);
        if (process >= 0.5 && process < 0.5 + flashInterval) {
            float gray = dot(texColor.rgb, grayVec);
            gl_FragColor = vec4(vec3(gray), 1.);
        } else {
            gl_FragColor = texColor;
        }
    } else if (textureCoordinate.x > (1./3.) && textureCoordinate.x <= (2./3.) && textureCoordinate.y <= 0.5) {
        vec2 scaledUV = fract((textureCoordinate - vec2(1. / 3., 0.)) * vec2(2., 2.));
        vec2 uv2 = centerCrop(scaledUV, inputSize2, outputSize);
        uv2.x += (0.5 - (1. / 3.)) / 2.;
        uv2 -= 0.5;
        uv2 = (uv2 / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture2, uv2);
        if (process >= 0.5 + flashInterval && process < 0.5 + 2. * flashInterval) {
            float gray = dot(texColor.rgb, grayVec);
            gl_FragColor = vec4(vec3(gray), 1.);
        } else {
            gl_FragColor = texColor;
        }
    } else if (textureCoordinate.x > (2./3.) && textureCoordinate.y <= 0.5) {
        vec2 scaledUV = fract((textureCoordinate - vec2(2. / 3., 0.)) * vec2(2., 2.));
        vec2 uv3 = centerCrop(scaledUV, inputSize3, outputSize);
        uv3.x += (0.5 - (1. / 3.)) / 2.;
        uv3 -= 0.5;
        uv3 = (uv3 / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture3, uv3);
        if (process >= 0.5 + 2. * flashInterval && process < 0.5 + 3. * flashInterval) {
            float gray = dot(texColor.rgb, grayVec);
            gl_FragColor = vec4(vec3(gray), 1.);
        } else {
            gl_FragColor = texColor;
        }
    } else if (textureCoordinate.x <= (1./3.) && textureCoordinate.y > 0.5) {
        vec2 scaledUV = fract(textureCoordinate * vec2(2., 2.));
        vec2 uv4 = centerCrop(scaledUV, inputSize4, outputSize);
        uv4.x += (0.5 - (1. / 3.)) / 2.;
        uv4 -= 0.5;
        uv4 = (uv4 / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture4, uv4);
        if (process >= 0.5 + 3. * flashInterval && process < 0.5 + 4. * flashInterval) {
            float gray = dot(texColor.rgb, grayVec);
            gl_FragColor = vec4(vec3(gray), 1.);
        } else {
            gl_FragColor = texColor;
        }
    } else if (textureCoordinate.x > (1./3.) && textureCoordinate.x <= (2./3.) && textureCoordinate.y > 0.5) {
        vec2 scaledUV = fract((textureCoordinate - vec2(1. / 3., 0.)) * vec2(2., 2.));
        vec2 uv5 = centerCrop(scaledUV, inputSize5, outputSize);
        uv5.x += (0.5 - (1. / 3.)) / 2.;
        uv5 -= 0.5;
        uv5 = (uv5 / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture5, uv5);
        if (process >= 0.5 + 4. * flashInterval && process < 0.5 + 5. * flashInterval) {
            float gray = dot(texColor.rgb, grayVec);
            gl_FragColor = vec4(vec3(gray), 1.);
        } else {
            gl_FragColor = texColor;
        }
    } else {
        vec2 scaledUV = fract((textureCoordinate - vec2(2. / 3., 0.)) * vec2(2., 2.));
        vec2 uv6 = centerCrop(scaledUV, inputSize6, outputSize);
        uv6.x += (0.5 - (1. / 3.)) / 2.;
        uv6 -= 0.5;
        uv6 = (uv6 / scale) + 0.5;
        vec4 texColor = texture2D(inputImageTexture6, uv6);
        if (process >= 0.5 + 5. * flashInterval) {
            float gray = dot(texColor.rgb, grayVec);
            gl_FragColor = vec4(vec3(gray), 1.);
        } else {
            gl_FragColor = texColor;
        }
    }
}
