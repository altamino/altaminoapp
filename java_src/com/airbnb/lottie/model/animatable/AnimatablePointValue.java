package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.StaticKeyframeAnimation;
import com.airbnb.lottie.model.PointFFactory;
import com.airbnb.lottie.model.animatable.AnimatableValueParser;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatablePointValue extends BaseAnimatableValue<PointF, PointF> {
    private AnimatablePointValue(List<Keyframe<PointF>> list, PointF pointF) {
        super(list, pointF);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<PointF, PointF> createAnimation() {
        if (!hasAnimation()) {
            return new StaticKeyframeAnimation(this.initialValue);
        }
        return new PointKeyframeAnimation(this.keyframes);
    }

    public static final class Factory {
        /* JADX WARN: Multi-variable type inference failed */
        public static AnimatablePointValue newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            AnimatableValueParser.Result json = AnimatableValueParser.newInstance(jSONObject, lottieComposition.getDpScale(), lottieComposition, PointFFactory.INSTANCE).parseJson();
            return new AnimatablePointValue(json.keyframes, (PointF) json.initialValue);
        }
    }
}
