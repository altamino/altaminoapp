package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.StaticKeyframeAnimation;
import com.airbnb.lottie.model.ColorFactory;
import com.airbnb.lottie.model.animatable.AnimatableValueParser;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatableColorValue extends BaseAnimatableValue<Integer, Integer> {
    private AnimatableColorValue(List<Keyframe<Integer>> list, Integer num) {
        super(list, num);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<Integer, Integer> createAnimation() {
        if (!hasAnimation()) {
            return new StaticKeyframeAnimation(this.initialValue);
        }
        return new ColorKeyframeAnimation(this.keyframes);
    }

    @Override // com.airbnb.lottie.model.animatable.BaseAnimatableValue
    public String toString() {
        return "AnimatableColorValue{initialValue=" + this.initialValue + '}';
    }

    public static final class Factory {
        /* JADX WARN: Multi-variable type inference failed */
        public static AnimatableColorValue newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            AnimatableValueParser.Result json = AnimatableValueParser.newInstance(jSONObject, 1.0f, lottieComposition, ColorFactory.INSTANCE).parseJson();
            return new AnimatableColorValue(json.keyframes, (Integer) json.initialValue);
        }
    }
}
