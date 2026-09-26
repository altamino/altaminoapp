precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
varying highp vec2 textureCoordinate3;
varying highp vec2 textureCoordinate4;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform sampler2D inputImageTexture3;
uniform sampler2D inputImageTexture4;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 inputSize3;
uniform highp vec2 inputSize4;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI 3.14159265359
#define TWO_PI 6.283185307
#define PI_TWO 1.570796327

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

vec4 texture(sampler2D sampler, vec2 uv, int section) {
    int base = (section == 0) ? 1 : 0;
    if (int(mod(uv.x, 2.)) == base) {
        uv.x = 1.0 - fract(uv.x);
    } else {
        uv.x = fract(uv.x);
    }
    return texture2D(sampler, uv);
}

vec4 motionBlur(sampler2D sampler, vec2 uv, vec2 speed, int section) {
    vec3 color = vec3(0.0);
    float total = 0.0;
    float offset = .3;
    for (float t = 0.0; t < 30.0; t++) {
        float percent = (t + offset) / 30.0;
        float weight = 2.0 * (percent - percent * percent);
        color += texture(sampler, uv + speed * percent, section).rgb * weight;
        total += weight;
    }
    return vec4(color / total, 1.0);
}

float easeQuartOut(float t) {
    return -1.0 * ((t = t - 1.0) * t * t * t - 1.0);
}

void main() {
    vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);
    vec2 uv3 = centerCrop(textureCoordinate, inputSize3, outputSize);
    vec2 uv4 = centerCrop(textureCoordinate, inputSize4, outputSize);

    float d = 46.;
    float f = frame;
    if (f > d) {
        f = d;
    }

    if (textureCoordinate.y <= 0.5) {
        float stage1 = 0.3;
        float t = easeQuartOut(f / d);
        float speed = sin(min(t * 1.1, 1.) * PI) / 2.;
        if (t <= stage1) {
            uv.x += t * 3.;
            uv.y += 0.25;
            gl_FragColor = motionBlur(inputImageTexture, uv, vec2(speed, 0.), 0);
            // gl_FragColor = vec4(color.rgb * pow(2.0, (speed * 0.5)), 1.0);
        } else {
            uv2.x += t * 3.;
            uv2.y += 0.25;
            gl_FragColor = motionBlur(inputImageTexture2, uv2, vec2(speed, 0.), 1);
            // gl_FragColor = vec4(color.rgb * pow(2.0, (speed * 0.5)), 1.0);
        }
    } else {
        float stage1 = 0.2;
        float stage2 = 0.4;
        float t = easeQuartOut(f / d);
        float translationProcess = (t - stage1) / (1. - stage1);
        float speed = sin(min(translationProcess * 1.1, 1.) * PI) / 2.;
        if (t <= stage1) {
            uv3.y -= 0.25;
            gl_FragColor = texture2D(inputImageTexture3, uv3);
        } else if (t <= stage2) {
            uv3.x -= translationProcess * 3.;
            uv3.y -= 0.25;
            gl_FragColor = motionBlur(inputImageTexture3, uv3, vec2(speed, 0.), 0);
            // gl_FragColor = vec4(color.rgb * pow(2.0, (speed * 0.5)), 1.0);
        } else {
            uv4.x -= translationProcess * 3.;
            uv4.y -= 0.25;
            gl_FragColor = motionBlur(inputImageTexture4, uv4, vec2(speed, 0.), 1);
            // gl_FragColor = vec4(color.rgb * pow(2.0, (speed * 0.5)), 1.0);
        }
    }
}
