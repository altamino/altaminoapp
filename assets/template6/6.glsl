precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform sampler2D inputImageTexture3;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 inputSize3;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI_TWO 1.57079635
#define TWO_PI	6.283185307179586

vec2 centerCrop( vec2 coord,  vec2 inSize,  vec2 outSize)
{
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float easeQuintOut(float t) {
    return ((t = t - 1.0) * t * t * t * t + 1.0);
}

float easeQuadOut(float t) {
    return -1.0 * t * (t - 2.0);
}

vec4 texture(sampler2D sampler, vec2 uv, float mixProgress, int isVertical) {
    if (isVertical == 1) {
        uv.y = fract(uv.y);
    } else {
        uv.x = fract(uv.x);
    }
    vec4 color = texture2D(sampler, uv);
    return vec4(color.rgb, color.a * mixProgress);
}

vec4 motionBlur(sampler2D sampler, vec2 uv, vec2 speed, float mixProgress, int isVertical) {
    vec4 color = vec4(0.0);
    float total = 0.0;
    float offset = .3;
    for (float t = 0.0; t < 30.0; t++) {
        float percent = (t + offset) / 30.0;
        float weight = 2.0 * (percent - percent * percent);
        color += texture(sampler, uv + speed * percent, mixProgress, isVertical) * weight;
        total += weight;
    }
    return color / total;
}

vec4 zoomBlur(sampler2D sampler, vec2 uv, vec2 samplingOffset) {
    vec4 fragmentColor = vec4(0.);
    fragmentColor += texture2D(sampler, uv) * 0.18;
    fragmentColor += texture2D(sampler, uv + samplingOffset) * 0.15;
    fragmentColor += texture2D(sampler, uv + (2.0 * samplingOffset)) *  0.12;
    fragmentColor += texture2D(sampler, uv + (3.0 * samplingOffset)) * 0.09;
    fragmentColor += texture2D(sampler, uv + (4.0 * samplingOffset)) * 0.05;
    fragmentColor += texture2D(sampler, uv - samplingOffset) * 0.15;
    fragmentColor += texture2D(sampler, uv - (2.0 * samplingOffset)) *  0.12;
    fragmentColor += texture2D(sampler, uv - (3.0 * samplingOffset)) * 0.09;
    fragmentColor += texture2D(sampler, uv - (4.0 * samplingOffset)) * 0.05;
    return fragmentColor;
}

void main() {
    float f = frame + 1.0;
    float division = 25.;

    if (f > division) {
        f = division;
    }
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);
    vec2 uv3 = centerCrop(textureCoordinate, inputSize3, outputSize);
    float stage1 = 17.;
    if (f <= stage1) {
        float t = f / stage1;
        float process = easeQuadOut(t);
        vec4 fragmentColor = vec4(0.);
        float divider = 0.5 - 0.5 * min(1., 3. * t);
        vec2 blurCenter = vec2(0.5);
        float blurSize = 1.5 - (process * 1.5);

        vec4 baseColor = texture2D(inputImageTexture, uv);
        if (textureCoordinate.x >= divider && textureCoordinate.x <= 1. - divider) {
            uv2 -= 0.5;
            uv2 = uv2 / (1. + 0.2 * process) + 0.5;
            vec2 samplingOffset = 1.0/100.0 * (blurCenter - uv2) * blurSize;
            fragmentColor += mix(zoomBlur(inputImageTexture2, uv2, samplingOffset), baseColor, (1. - pow(process, 2.)) * abs(textureCoordinate.x - 0.5) / abs(divider - 0.5));
        } else {
            fragmentColor += baseColor;
        }

        gl_FragColor = fragmentColor;
    } else {
        float t = (f - stage1) / (division - stage1);
        uv2 -= 0.5;
        uv2 = uv2 / 1.2 + 0.5;
        vec4 base = texture2D(inputImageTexture2, uv2);
        float verticalProgress = easeQuintOut(t);
        uv3 -= 0.5;
        uv3 = uv3 / 1.2 + 0.5;
        uv3.y += verticalProgress;
        vec2 speed = vec2(0., 1. - verticalProgress) * 0.4;
        vec4 overlay = motionBlur(inputImageTexture3, uv3, speed, pow(sin(verticalProgress * PI_TWO), 2.), 1);
        gl_FragColor = vec4(mix(base.rgb, overlay.rgb, overlay.a), base.a);
    }

}
