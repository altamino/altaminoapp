package com.airbnb.lottie.model;

import com.airbnb.lottie.model.animatable.m;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class k {
    private final float scaleX;
    private final float scaleY;

    public static class a implements m.a<k> {
        public static final a INSTANCE = new a();

        @Override // com.airbnb.lottie.model.animatable.m.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public k a(Object obj, float f) {
            JSONArray jSONArray = (JSONArray) obj;
            return new k((((float) jSONArray.optDouble(0, 1.0d)) / 100.0f) * f, (((float) jSONArray.optDouble(1, 1.0d)) / 100.0f) * f);
        }

        private a() {
        }
    }

    public k(float f, float f6) {
        this.scaleX = f;
        this.scaleY = f6;
    }

    public float a() {
        return this.scaleX;
    }

    public float b() {
        return this.scaleY;
    }

    public k() {
        this(1.0f, 1.0f);
    }

    public String toString() {
        return a() + "x" + b();
    }
}
