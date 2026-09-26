precision highp float;

varying highp vec2 textureCoordinate;
uniform sampler2D inputImageTexture;
uniform highp vec2 inputSize;
uniform highp vec2 outputSize;
uniform mediump float frame;

vec2 centerCrop(vec2 coord, vec2 inSize, vec2 outSize) {
    float baseScale = 1. / max(outSize.x / inSize.x, outSize.y / inSize.y);
    vec2 oo = vec2(outSize.x / inSize.x, outSize.y / inSize.y) * coord * baseScale + vec2((inSize.x - outSize.x * baseScale) / 2. / inSize.x, (inSize.y - outSize.y * baseScale) / 2. / inSize.y);
    return oo;
}

float calcHorizontalEdge(float base) {
    float baseScale = 1. / max(outputSize.x / inputSize.x, outputSize.y / inputSize.y);
    return base * (outputSize.y / inputSize.y) * baseScale + (inputSize.y - outputSize.y * baseScale) / 2. / inputSize.y;
}

void main() {
	vec2 uv = centerCrop(textureCoordinate, inputSize, outputSize);
    
    float d = 55.;
    float f = frame + 1.;
    if (f > d) {
        f = d;
    }

    float baseScale = 1. / max(outputSize.x / inputSize.x, outputSize.y / inputSize.y);
    float leftEdge = 0.12 * (outputSize.x / inputSize.x) * baseScale + (inputSize.x - outputSize.x * baseScale) / 2. / inputSize.x;
    float rightEdge = 0.88 * (outputSize.x / inputSize.x) * baseScale + (inputSize.x - outputSize.x * baseScale) / 2. / inputSize.x;
    float offsetY = (inputSize.y - outputSize.y * baseScale) / 2. / inputSize.y;
    float process = f / d;
    float stage1 = 0.3;
    float stage2 = 0.49;
    float stage3 = 0.64;
    float judgerY = mod(smoothstep(calcHorizontalEdge(0.06), calcHorizontalEdge(0.94), uv.y), 1.);
    float judgerY1 = smoothstep(calcHorizontalEdge(0.25), calcHorizontalEdge(0.29), uv.y);
    float judgerY2 = smoothstep(calcHorizontalEdge(0.48), calcHorizontalEdge(0.52), uv.y);
    float judgerY3 = smoothstep(calcHorizontalEdge(0.71), calcHorizontalEdge(0.75), uv.y);

    if (judgerY == 0.) {
        gl_FragColor = vec4(0.);
        return;
    }
    vec4 color = vec4(0.);
    if (process <= stage1) {
        uv.x += 1. - (process / stage1);
        if (judgerY1 == 0. && uv.x >= leftEdge && uv.x <= rightEdge) {
            color += texture2D(inputImageTexture, uv);
        }
    } else if (process <= stage2) {
        if (judgerY2 == 0. && mod(judgerY1, 1.) == 0.) {
            if (judgerY1 == 1.) {
                 uv.x -= 1. - ((process - stage1) / (stage2 - stage1));
            }
            if (uv.x >= leftEdge && uv.x <= rightEdge) {
                color += texture2D(inputImageTexture, uv);
            }
        }
    } else if (process <= stage3) {
        if (judgerY3 == 0. && mod(judgerY2, 1.) == 0. && mod(judgerY1, 1.) == 0.) {
            if (judgerY2 == 1.) {
                 uv.x += 1. - ((process - stage2) / (stage3 - stage2));
            }
            if (uv.x >= leftEdge && uv.x <= rightEdge) {
                color += texture2D(inputImageTexture, uv);
            }
        }
    } else {
        if (mod(judgerY3, 1.) == 0. && mod(judgerY2, 1.) == 0. && mod(judgerY1, 1.) == 0.) {
            if (judgerY3 == 1.) {
                 uv.x -= 1. - min(((process - stage3) / (0.76 - stage3)), 1.);
            }
            if (uv.x >= leftEdge && uv.x <= rightEdge) {
                color += texture2D(inputImageTexture, uv);
                float mixRatio = 0.;
                if (f == 37. || f == 39. || f == 41. || f == 43. || f == 45. || f == 47.) {
                    mixRatio = 0.4;
                } else if (f == 38. || f == 42. || f == 46. || f == 49. || f == 51. || f == 53.) {
                    mixRatio = 0.75;
                }
                color = mix(color, vec4(0., 0., 0., 1.), mixRatio);
            }
        }
    }

    gl_FragColor = color;
}