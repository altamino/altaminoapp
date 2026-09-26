precision highp float;

varying highp vec2 textureCoordinate;
varying highp vec2 textureCoordinate2;
uniform sampler2D inputImageTexture;
uniform sampler2D inputImageTexture2;
uniform highp vec2 inputSize;
uniform highp vec2 inputSize2;
uniform highp vec2 outputSize;
uniform mediump float frame;

#define PI_TEN 0.314159265359
#define PI_TWO 1.570796326794897

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
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

float easeQuadOut(float t) {
    return -1.0 * t * (t - 2.0);
}

float easeCircularOut(float t) {
    return sqrt(1.0 - (t = t - 1.0) * t);
}

void main() {
	vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    vec2 uv2 = centerCrop(textureCoordinate, inputSize2, outputSize);
    
    float d = 27.;
    float f = frame + 1.;
    if (f > d) {
        f = d;
    }
    float process = f / d;
    uv2 -= 0.5;
    uv2 /= 1.5 - 0.5 * easeQuadOut(process);
    uv2 += 0.5;
    vec2 blurCenter = vec2(0.5);
    float blurSize = 1.5 - (process * 1.5);
    vec2 samplingOffset = 1.0/100.0 * (blurCenter - uv2) * blurSize;
    float boundaryProcess = min(1., (easeQuadOut(process) * 1.5));
    float boundaryAngle = boundaryProcess * PI_TWO;
    float coordAngle = 0.;
    if (textureCoordinate.y <= 0.5) {
        coordAngle = (textureCoordinate.y == 0.5) ? PI_TWO : atan(textureCoordinate.x, 0.5 - textureCoordinate.y);       
    } else {
        coordAngle = atan(1. - textureCoordinate.x, textureCoordinate.y - 0.5);
    }
    vec4 baseColor = texture2D(inputImageTexture, uv);
    if (coordAngle > boundaryAngle) {
        gl_FragColor = baseColor;
    } else {
        float mixRatio = (1. - easeQuadOut((boundaryAngle - coordAngle) / boundaryAngle)) * easeCircularOut(1. - boundaryProcess);
        gl_FragColor = mix(zoomBlur(inputImageTexture2, uv2, samplingOffset), baseColor, mixRatio);
    }
}
