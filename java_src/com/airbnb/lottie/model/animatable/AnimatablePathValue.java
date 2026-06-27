package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PathKeyframe;
import com.airbnb.lottie.animation.keyframe.PathKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.StaticKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.utils.JsonUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatablePathValue implements AnimatableValue<PointF, PointF> {
    private PointF initialPoint;
    private final List<PathKeyframe> keyframes;

    public static AnimatableValue<PointF, PointF> createAnimatablePathOrSplitDimensionPath(JSONObject jSONObject, LottieComposition lottieComposition) {
        if (jSONObject.has("k")) {
            return new AnimatablePathValue(jSONObject.opt("k"), lottieComposition);
        }
        return new AnimatableSplitDimensionPathValue(AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("x"), lottieComposition), AnimatableFloatValue.Factory.newInstance(jSONObject.optJSONObject("y"), lottieComposition));
    }

    AnimatablePathValue() {
        this.keyframes = new ArrayList();
        this.initialPoint = new PointF(0.0f, 0.0f);
    }

    AnimatablePathValue(Object obj, LottieComposition lottieComposition) {
        this.keyframes = new ArrayList();
        if (hasKeyframes(obj)) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                this.keyframes.add(PathKeyframe.Factory.newInstance(jSONArray.optJSONObject(i), lottieComposition, ValueFactory.INSTANCE));
            }
            Keyframe.setEndFrames(this.keyframes);
            return;
        }
        this.initialPoint = JsonUtils.pointFromJsonArray((JSONArray) obj, lottieComposition.getDpScale());
    }

    private boolean hasKeyframes(Object obj) {
        if (!(obj instanceof JSONArray)) {
            return false;
        }
        Object objOpt = ((JSONArray) obj).opt(0);
        return (objOpt instanceof JSONObject) && ((JSONObject) objOpt).has("t");
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<PointF, PointF> createAnimation() {
        if (!hasAnimation()) {
            return new StaticKeyframeAnimation(this.initialPoint);
        }
        return new PathKeyframeAnimation(this.keyframes);
    }

    public boolean hasAnimation() {
        return !this.keyframes.isEmpty();
    }

    public String toString() {
        return "initialPoint=" + this.initialPoint;
    }

    private static class ValueFactory implements AnimatableValue.Factory<PointF> {
        private static final AnimatableValue.Factory<PointF> INSTANCE = new ValueFactory();

        private ValueFactory() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.airbnb.lottie.model.animatable.AnimatableValue.Factory
        public PointF valueFromObject(Object obj, float f) {
            return JsonUtils.pointFromJsonArray((JSONArray) obj, f);
        }
    }
}
