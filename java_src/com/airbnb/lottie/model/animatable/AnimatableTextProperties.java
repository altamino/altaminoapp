package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatableTextProperties {
    public final AnimatableColorValue color;
    public final AnimatableColorValue stroke;
    public final AnimatableFloatValue strokeWidth;
    public final AnimatableFloatValue tracking;

    AnimatableTextProperties(AnimatableColorValue animatableColorValue, AnimatableColorValue animatableColorValue2, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2) {
        this.color = animatableColorValue;
        this.stroke = animatableColorValue2;
        this.strokeWidth = animatableFloatValue;
        this.tracking = animatableFloatValue2;
    }

    public static final class Factory {
        public static AnimatableTextProperties newInstance(JSONObject jSONObject, LottieComposition lottieComposition) {
            if (jSONObject == null || !jSONObject.has("a")) {
                return new AnimatableTextProperties(null, null, null, null);
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("a");
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("fc");
            AnimatableColorValue animatableColorValueNewInstance = jSONObjectOptJSONObject2 != null ? AnimatableColorValue.Factory.newInstance(jSONObjectOptJSONObject2, lottieComposition) : null;
            JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("sc");
            AnimatableColorValue animatableColorValueNewInstance2 = jSONObjectOptJSONObject3 != null ? AnimatableColorValue.Factory.newInstance(jSONObjectOptJSONObject3, lottieComposition) : null;
            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject.optJSONObject("sw");
            AnimatableFloatValue animatableFloatValueNewInstance = jSONObjectOptJSONObject4 != null ? AnimatableFloatValue.Factory.newInstance(jSONObjectOptJSONObject4, lottieComposition) : null;
            JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject.optJSONObject("t");
            return new AnimatableTextProperties(animatableColorValueNewInstance, animatableColorValueNewInstance2, animatableFloatValueNewInstance, jSONObjectOptJSONObject5 != null ? AnimatableFloatValue.Factory.newInstance(jSONObjectOptJSONObject5, lottieComposition) : null);
        }
    }
}
