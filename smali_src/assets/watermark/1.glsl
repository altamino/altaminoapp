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
uniform mediump float segmentFrameCount;

#define PI 3.1415927
#define THREE_PI 9.4247778

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

vec4 colorBlend(vec4 base, vec4 overlay) {
    return vec4(mix(base.rgb, overlay.rgb, overlay.a), base.a);
}

void main() {
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    float f = frame + 1.;
    if (f > segmentFrameCount) {
        f = segmentFrameCount;
    }
    float d = min(480., segmentFrameCount);
    float process = fract(f / d);
    vec2 aminoLogoPadding = vec2(5. / outputSize.x, 20. / outputSize.y);
    float leftEdge3 = aminoLogoPadding.x * (1. - step(0.5, process)) + (1. - (inputSize2.x + inputSize3.x) / outputSize.x) * step(0.5, process);
    float rightEdge3 = leftEdge3 + (inputSize3.x / outputSize.x);
    float topEdge3 = aminoLogoPadding.y * (1. - step(0.5, process)) + (1. - aminoLogoPadding.y - inputSize3.y / outputSize.y) * step(0.5, process);
    float bottomEdge3 = topEdge3 + (inputSize3.y / outputSize.y);
    float leftEdge2 = (aminoLogoPadding.x + inputSize3.x / outputSize.x) * (1. - step(0.5, process)) + (1. - inputSize2.x / outputSize.x) * step(0.5, process);
    float rightEdge2 = leftEdge2 + (inputSize2.x / outputSize.x);
    float topEdge2 = (1. - inputSize2.y / outputSize.y) * step(0.5, process);
    float bottomEdge2 = topEdge2 + (inputSize2.y / outputSize.y);
    vec2 uv2 = (textureCoordinate - vec2(leftEdge2, topEdge2)) * outputSize / inputSize2;
    vec2 uv3 = (textureCoordinate - vec2(leftEdge3, topEdge3)) * outputSize / inputSize3;
    vec4 base = texture2D(inputImageTexture, uv);
    if (textureCoordinate.x >= leftEdge2 && textureCoordinate.x <= rightEdge2 && textureCoordinate.y >= topEdge2 && textureCoordinate.y <= bottomEdge2) {
        vec4 overlay = texture2D(inputImageTexture2, uv2);
        gl_FragColor = colorBlend(base, overlay);
    } else if (textureCoordinate.x >= leftEdge3 && textureCoordinate.x <= rightEdge3 && textureCoordinate.y >= topEdge3 && textureCoordinate.y <= bottomEdge3) {
        vec4 overlay = texture2D(inputImageTexture3, uv3);
        gl_FragColor = colorBlend(base, overlay);
    } else {
        gl_FragColor = base;
    }
}
