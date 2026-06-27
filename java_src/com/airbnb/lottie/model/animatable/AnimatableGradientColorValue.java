package com.airbnb.lottie.model.animatable;

import android.graphics.Color;
import android.util.Log;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.GradientColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.StaticKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.animatable.AnimatableValueParser;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.utils.MiscUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatableGradientColorValue extends BaseAnimatableValue<GradientColor, GradientColor> {
    private AnimatableGradientColorValue(List<Keyframe<GradientColor>> list, GradientColor gradientColor) {
        super(list, gradientColor);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<GradientColor, GradientColor> createAnimation() {
        if (!hasAnimation()) {
            return new StaticKeyframeAnimation(this.initialValue);
        }
        return new GradientColorKeyframeAnimation(this.keyframes);
    }

    public static final class Factory {
        /* JADX WARN: Multi-variable type inference failed */
        public static AnimatableGradientColorValue newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            AnimatableValueParser.Result json = AnimatableValueParser.newInstance(jSONObject, 1.0f, lottieComposition, new ValueFactory(jSONObject.optInt(TtmlNode.TAG_P, jSONObject.optJSONArray("k").length() / 4))).parseJson();
            return new AnimatableGradientColorValue(json.keyframes, (GradientColor) json.initialValue);
        }
    }

    private static class ValueFactory implements AnimatableValue.Factory<GradientColor> {
        private final int colorPoints;

        private ValueFactory(int i) {
            this.colorPoints = i;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.airbnb.lottie.model.animatable.AnimatableValue.Factory
        public GradientColor valueFromObject(Object obj, float f) {
            JSONArray jSONArray = (JSONArray) obj;
            int i = this.colorPoints;
            float[] fArr = new float[i];
            int[] iArr = new int[i];
            GradientColor gradientColor = new GradientColor(fArr, iArr);
            if (jSONArray.length() != this.colorPoints * 4) {
                Log.w(L.TAG, "Unexpected gradient length: " + jSONArray.length() + ". Expected " + (this.colorPoints * 4) + ". This may affect the appearance of the gradient. Make sure to save your After Effects file before exporting an animation with gradients.");
            }
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < this.colorPoints * 4; i4++) {
                int i5 = i4 / 4;
                double dOptDouble = jSONArray.optDouble(i4);
                int i6 = i4 % 4;
                if (i6 == 0) {
                    fArr[i5] = (float) dOptDouble;
                } else if (i6 == 1) {
                    i2 = (int) (dOptDouble * 255.0d);
                } else if (i6 == 2) {
                    i3 = (int) (dOptDouble * 255.0d);
                } else if (i6 == 3) {
                    iArr[i5] = Color.argb(255, i2, i3, (int) (dOptDouble * 255.0d));
                }
            }
            addOpacityStopsToGradientIfNeeded(gradientColor, jSONArray);
            return gradientColor;
        }

        private void addOpacityStopsToGradientIfNeeded(GradientColor gradientColor, JSONArray jSONArray) {
            int i = this.colorPoints * 4;
            if (jSONArray.length() <= i) {
                return;
            }
            int length = (jSONArray.length() - i) / 2;
            double[] dArr = new double[length];
            double[] dArr2 = new double[length];
            int i2 = 0;
            while (i < jSONArray.length()) {
                if (i % 2 == 0) {
                    dArr[i2] = jSONArray.optDouble(i);
                } else {
                    dArr2[i2] = jSONArray.optDouble(i);
                    i2++;
                }
                i++;
            }
            for (int i3 = 0; i3 < gradientColor.getSize(); i3++) {
                int i4 = gradientColor.getColors()[i3];
                gradientColor.getColors()[i3] = Color.argb(getOpacityAtPosition(gradientColor.getPositions()[i3], dArr, dArr2), Color.red(i4), Color.green(i4), Color.blue(i4));
            }
        }

        private int getOpacityAtPosition(double d, double[] dArr, double[] dArr2) {
            double dLerp;
            int i = 1;
            while (true) {
                if (i < dArr.length) {
                    int i2 = i - 1;
                    double d2 = dArr[i2];
                    double d3 = dArr[i];
                    if (dArr[i] >= d) {
                        dLerp = MiscUtils.lerp(dArr2[i2], dArr2[i], (d - d2) / (d3 - d2));
                        break;
                    }
                    i++;
                } else {
                    dLerp = dArr2[dArr2.length - 1];
                    break;
                }
            }
            return (int) (dLerp * 255.0d);
        }
    }
}
