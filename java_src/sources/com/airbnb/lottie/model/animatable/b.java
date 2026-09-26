package com.airbnb.lottie.model.animatable;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class b extends o<Float, Float> {

    /* JADX INFO: renamed from: com.airbnb.lottie.model.animatable.b$b, reason: collision with other inner class name */
    public static final class C0111b {
        public static b b(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            return c(jSONObject, eVar, true);
        }

        static b a() {
            return new b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static b c(JSONObject jSONObject, com.airbnb.lottie.e eVar, boolean z6) {
            float fJ = z6 ? eVar.j() : 1.0f;
            if (jSONObject != null && jSONObject.has("x")) {
                eVar.g("Lottie doesn't support expressions.");
            }
            n.a aVarD = n.b(jSONObject, fJ, eVar, c.INSTANCE).d();
            return new b(aVarD.keyframes, (Float) aVarD.initialValue);
        }
    }

    private static class c implements m.a<Float> {
        static final c INSTANCE = new c();

        private c() {
        }

        @Override // com.airbnb.lottie.model.animatable.m.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Float a(Object obj, float f) {
            return Float.valueOf(com.airbnb.lottie.utils.b.c(obj) * f);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Float e() {
        return (Float) this.initialValue;
    }

    private b() {
        super(Float.valueOf(0.0f));
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<Float, Float> a() {
        if (!d()) {
            return new com.airbnb.lottie.animation.keyframe.n(this.initialValue);
        }
        return new com.airbnb.lottie.animation.keyframe.c(this.keyframes);
    }

    private b(List<h0.a<Float>> list, Float f) {
        super(list, f);
    }
}
