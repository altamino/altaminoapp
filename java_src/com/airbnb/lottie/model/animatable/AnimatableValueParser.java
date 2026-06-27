package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.animation.Keyframe;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AnimatableValueParser<T> {
    private final LottieComposition composition;
    private final JSONObject json;
    private final float scale;
    private final AnimatableValue.Factory<T> valueFactory;

    private AnimatableValueParser(JSONObject jSONObject, float f, LottieComposition lottieComposition, AnimatableValue.Factory<T> factory) {
        this.json = jSONObject;
        this.scale = f;
        this.composition = lottieComposition;
        this.valueFactory = factory;
    }

    static <T> AnimatableValueParser<T> newInstance(JSONObject jSONObject, float f, LottieComposition lottieComposition, AnimatableValue.Factory<T> factory) {
        return new AnimatableValueParser<>(jSONObject, f, lottieComposition, factory);
    }

    Result<T> parseJson() {
        List<Keyframe<T>> keyframes = parseKeyframes();
        return new Result<>(keyframes, parseInitialValue(keyframes));
    }

    private List<Keyframe<T>> parseKeyframes() {
        JSONObject jSONObject = this.json;
        if (jSONObject != null) {
            Object objOpt = jSONObject.opt("k");
            if (hasKeyframes(objOpt)) {
                return Keyframe.Factory.parseKeyframes((JSONArray) objOpt, this.composition, this.scale, this.valueFactory);
            }
            return Collections.emptyList();
        }
        return Collections.emptyList();
    }

    private T parseInitialValue(List<Keyframe<T>> list) {
        if (this.json == null) {
            return null;
        }
        if (!list.isEmpty()) {
            return list.get(0).startValue;
        }
        return this.valueFactory.valueFromObject(this.json.opt("k"), this.scale);
    }

    private static boolean hasKeyframes(Object obj) {
        if (!(obj instanceof JSONArray)) {
            return false;
        }
        Object objOpt = ((JSONArray) obj).opt(0);
        return (objOpt instanceof JSONObject) && ((JSONObject) objOpt).has("t");
    }

    static class Result<T> {
        final T initialValue;
        final List<Keyframe<T>> keyframes;

        Result(List<Keyframe<T>> list, T t) {
            this.keyframes = list;
            this.initialValue = t;
        }
    }
}
