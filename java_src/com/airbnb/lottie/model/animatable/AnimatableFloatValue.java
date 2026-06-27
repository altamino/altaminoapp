package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.StaticKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.animatable.AnimatableValueParser;
import com.airbnb.lottie.utils.JsonUtils;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatableFloatValue extends BaseAnimatableValue<Float, Float> {
    private AnimatableFloatValue() {
        super(Float.valueOf(0.0f));
    }

    private AnimatableFloatValue(List<Keyframe<Float>> list, Float f) {
        super(list, f);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<Float, Float> createAnimation() {
        if (!hasAnimation()) {
            return new StaticKeyframeAnimation(this.initialValue);
        }
        return new FloatKeyframeAnimation(this.keyframes);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.model.animatable.BaseAnimatableValue
    public Float getInitialValue() {
        return (Float) this.initialValue;
    }

    private static class ValueFactory implements AnimatableValue.Factory<Float> {
        static final ValueFactory INSTANCE = new ValueFactory();

        private ValueFactory() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.airbnb.lottie.model.animatable.AnimatableValue.Factory
        public Float valueFromObject(Object obj, float f) {
            return Float.valueOf(JsonUtils.valueFromObject(obj) * f);
        }
    }

    public static final class Factory {
        static AnimatableFloatValue newInstance() {
            return new AnimatableFloatValue();
        }

        public static AnimatableFloatValue newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            return newInstance(jSONObject, lottieComposition, true);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static AnimatableFloatValue newInstance(JSONObject jSONObject, LottieComposition lottieComposition, boolean z) {
            float dpScale = z ? lottieComposition.getDpScale() : 1.0f;
            if (jSONObject != null && jSONObject.has("x")) {
                lottieComposition.addWarning("Lottie doesn't support expressions.");
            }
            AnimatableValueParser.Result json = AnimatableValueParser.newInstance(jSONObject, dpScale, lottieComposition, ValueFactory.INSTANCE).parseJson();
            return new AnimatableFloatValue(json.keyframes, (Float) json.initialValue);
        }
    }
}
