package com.airbnb.lottie.model;

import com.airbnb.lottie.model.animatable.AnimatableValue;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class ScaleXY {
    private final float scaleX;
    private final float scaleY;

    public ScaleXY(float f, float f2) {
        this.scaleX = f;
        this.scaleY = f2;
    }

    public ScaleXY() {
        this(1.0f, 1.0f);
    }

    public float getScaleX() {
        return this.scaleX;
    }

    public float getScaleY() {
        return this.scaleY;
    }

    public String toString() {
        return getScaleX() + "x" + getScaleY();
    }

    public static class Factory implements AnimatableValue.Factory<ScaleXY> {
        public static final Factory INSTANCE = new Factory();

        private Factory() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.airbnb.lottie.model.animatable.AnimatableValue.Factory
        public ScaleXY valueFromObject(Object obj, float f) {
            JSONArray jSONArray = (JSONArray) obj;
            return new ScaleXY((((float) jSONArray.optDouble(0, 1.0d)) / 100.0f) * f, (((float) jSONArray.optDouble(1, 1.0d)) / 100.0f) * f);
        }
    }
}
