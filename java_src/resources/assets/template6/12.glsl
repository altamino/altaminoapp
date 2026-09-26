precision highp float;

varying highp vec2 textureCoordinate;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI_TWO 1.57079635
#define TWO_PI	6.283185307179586

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeExpoOut(float t) {
    return (t == 1.0) ? 1.0 : (-pow(2.0, -10.0 * t) + 1.0);
}

vec4 texture(sampler2D sampler, vec2 uv, float mixProgress) {
    uv.x = fract(uv.x);
    vec4 color = texture2D(sampler, uv);
    return vec4(color.rgb, color.a * mixProgress);
}

vec4 motionBlur(sampler2D sampler, vec2 uv, vec2 speed, float mixProgress) {
    vec4 color = vec4(0.0);
    float total = 0.0;
    float offset = .3;
    for (float t = 0.0; t < 30.0; t++) {
        float percent = (t + offset) / 30.0;
        float weight = 2.0 * (percent - percent * percent);
        color += texture(sampler, uv + speed * percent, mixProgress) * weight;
        total += weight;
    }
    return color / total;
}

vec4 texture(float divider, float sectionIndex, float progress, vec2 uvBase, vec2 uvOverlay) {
    vec4 base = texture2D(inputImageTexture, uvBase);
    if (textureCoordinate.y <= divider * (sectionIndex - 1.)) {
        return texture2D(inputImageTexture2, uvOverlay);
    } else if (textureCoordinate.y <= divider * sectionIndex) {
        uvOverlay.x += progress * (1. - 2. * mod(sectionIndex, 2.));
        vec2 speed = vec2(pow(cos(progress * PI_TWO), 1.2), 0.) * 0.4;
        vec4 overlay = motionBlur(inputImageTexture2, uvOverlay, speed, pow(progress, 1.5));
        return vec4(mix(base.rgb, overlay.rgb, overlay.a), base.a);
    } else {
        return base;
    }
}

void main() {
	vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);
    float divider = 1. / 5.;
    float d = 28.;
    float section = 6.;
    float f = frame + 1.;
    if (f > d) {
        f = d;
    }
    float sectionIndex = ceil(f / section);
    float progress = easeExpoOut((f - section * (sectionIndex - 1.)) / section);
    gl_FragColor = texture(divider, sectionIndex, progress, uv, uv2);
}