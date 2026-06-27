package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.IntegerKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.StaticKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.animatable.AnimatableValueParser;
import com.airbnb.lottie.utils.JsonUtils;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatableIntegerValue extends BaseAnimatableValue<Integer, Integer> {
    private AnimatableIntegerValue() {
        super(100);
    }

    AnimatableIntegerValue(List<Keyframe<Integer>> list, Integer num) {
        super(list, num);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<Integer, Integer> createAnimation() {
        if (!hasAnimation()) {
            return new StaticKeyframeAnimation(this.initialValue);
        }
        return new IntegerKeyframeAnimation(this.keyframes);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.model.animatable.BaseAnimatableValue
    public Integer getInitialValue() {
        return (Integer) this.initialValue;
    }

    public static final class Factory {
        static AnimatableIntegerValue newInstance() {
            return new AnimatableIntegerValue();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static AnimatableIntegerValue newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            if (jSONObject != null && jSONObject.has("x")) {
                lottieComposition.addWarning("Lottie doesn't support expressions.");
            }
            AnimatableValueParser.Result json = AnimatableValueParser.newInstance(jSONObject, 1.0f, lottieComposition, ValueFactory.INSTANCE).parseJson();
            return new AnimatableIntegerValue(json.keyframes, (Integer) json.initialValue);
        }
    }

    private static class ValueFactory implements AnimatableValue.Factory<Integer> {
        private static final ValueFactory INSTANCE = new ValueFactory();

        private ValueFactory() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.airbnb.lottie.model.animatable.AnimatableValue.Factory
        public Integer valueFromObject(Object obj, float f) {
            return Integer.valueOf(Math.round(JsonUtils.valueFromObject(obj) * f));
        }
    }
}
