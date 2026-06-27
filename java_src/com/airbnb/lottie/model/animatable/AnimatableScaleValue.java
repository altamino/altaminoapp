package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ScaleKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.StaticKeyframeAnimation;
import com.airbnb.lottie.model.ScaleXY;
import com.airbnb.lottie.model.animatable.AnimatableValueParser;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatableScaleValue extends BaseAnimatableValue<ScaleXY, ScaleXY> {
    private AnimatableScaleValue() {
        super(new ScaleXY());
    }

    AnimatableScaleValue(List<Keyframe<ScaleXY>> list, ScaleXY scaleXY) {
        super(list, scaleXY);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<ScaleXY, ScaleXY> createAnimation() {
        if (!hasAnimation()) {
            return new StaticKeyframeAnimation(this.initialValue);
        }
        return new ScaleKeyframeAnimation(this.keyframes);
    }

    static final class Factory {
        /* JADX WARN: Multi-variable type inference failed */
        static AnimatableScaleValue newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            AnimatableValueParser.Result json = AnimatableValueParser.newInstance(jSONObject, 1.0f, lottieComposition, ScaleXY.Factory.INSTANCE).parseJson();
            return new AnimatableScaleValue(json.keyframes, (ScaleXY) json.initialValue);
        }

        static AnimatableScaleValue newInstance() {
            return new AnimatableScaleValue();
        }
    }
}
