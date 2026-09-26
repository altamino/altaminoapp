precision highp float;
varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI 3.14159265359

highp vec2 centerCrop(highp vec2 coord, highp vec2 inSize, highp vec2 outSize)
{
    highp float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    highp vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

/* Easing Quint InOut equation */
/* Adapted from Robert Penner easing equations */
highp float easeQuintInOut(highp float t) {
    t = t * 2.0; if (t < 1.0) return 0.5 * t * t * t * t * t;
    return 0.5 * ((t -= 2.0) * t * t * t * t + 2.0);
}

highp vec4 quadMotionBlur(mediump int channelIndex, highp vec2 uv, highp vec2 speed, mediump int quadSection) {
    highp vec3 color = vec3(0.0);
    highp float total = 0.0;
    highp float offset = .4;
    highp float count = 30.0;
    highp float weightBase = 2.0;
    for (highp float t = 0.0; t < count; t++) {
        highp float percent = (t + offset) / count;
        highp float weight = weightBase * (percent - percent * percent);
        highp vec2 uv1 = uv + speed * percent;
        highp vec2 uvs = vec2(0.0);
        if (channelIndex == 0) {
            if (uv1.x > 1.) {
                uvs.x = 1. + fract(uv1.x);
            } else if (uv1.x < 0.) {
                uvs.x = 1. - fract(uv1.x);
            } else {
                uvs.x = uv1.x;
            }
            if (uv1.y > 1.) {
                uvs.y = 1. - fract(uv1.y);
            } else if (uv1.y < 0.) {
                uvs.y = 1. + fract(uv1.y);
            } else {
                uvs.y = uv1.y;
            }
            color += texture2D(inputImageTexture, uvs).rgb * weight;
        } else {
            if (uv1.x > 1.) {
                uvs.x = 1. - fract(uv1.x);
            } else {
                uvs.x = fract(uv1.x);
            }
            if (uv1.y < 0.) {
                uvs.y = 1. - fract(uv1.y);
            } else {
                uvs.y = fract(uv1.y);
            }
            color += texture2D(inputImageTexture2, uvs).rgb * weight;
        }
        total += weight;
    }
    return vec4(color / total, 1.0);
}

void main() {
    float timeBase = 53.;
    float f = frame + 1.;
    if (f > timeBase) {
        f = timeBase;
    }
    float fraction = easeQuintInOut(f / timeBase);
    mediump int channelIndex = (fraction >= 0.5) ? 1 : 0;
    highp vec2 textCoords = (channelIndex == 0) ? textureCoordinate : textureCoordinate;
    highp vec2 inSize = (channelIndex == 0) ? inputSize : inputSize2;
    highp vec2 uv = centerCrop(textCoords, inSize, outputSize);
    uv.x -= fraction * 2.;
    uv.y += fraction * 2.;

    highp float blur = 0.5;
    highp vec2 uv1 = uv;
    highp float delta = (channelIndex == 0) ? blur * fraction * 2. : blur * (1. - fraction) * 2.;
    uv1.x -= delta;
    uv1.y += delta;
    highp vec2 speed = uv1 - uv;

    highp vec4 quadMirrorVec[4];
    quadMirrorVec[0] = quadMotionBlur(channelIndex, uv, speed, 0);
    quadMirrorVec[1] = quadMotionBlur(channelIndex, vec2(1. - abs(fract(uv.x)), uv.y), vec2(-speed.x, speed.y), 1);
    quadMirrorVec[2] = quadMotionBlur(channelIndex, vec2(uv.x, 1. - fract(uv.y)), vec2(speed.x, -speed.y), 2);
    quadMirrorVec[3] = quadMotionBlur(channelIndex, vec2(1. - abs(fract(uv.x)), 1. - fract(uv.y)), vec2(-speed.x, -speed.y), 3);
    highp vec4 color;
    if (channelIndex == 0) {
        color = (uv.y >= 1. && uv.x >= 0.) ? quadMirrorVec[2] :
        (uv.y >= 1. && uv.x < 0.) ? quadMirrorVec[3] :
        (uv.y < 1. && uv.x >= 0.) ? quadMirrorVec[0] : quadMirrorVec[1];
    } else {
        color = (uv.y >= 2. && uv.x >= -1.) ? quadMirrorVec[1] :
        (uv.y >= 2. && uv.x < -1.) ? quadMirrorVec[0] :
        (uv.y < 2. && uv.x >= -1.) ? quadMirrorVec[3] : quadMirrorVec[2];
    }

    gl_FragColor = vec4(color.rgb, 1.0);
}
