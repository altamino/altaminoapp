package com.airbnb.lottie.model.animatable;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class d extends o<Integer, Integer> {

    public static final class b {
        static d a() {
            return new d();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static d b(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            if (jSONObject != null && jSONObject.has("x")) {
                eVar.g("Lottie doesn't support expressions.");
            }
            n.a aVarD = n.b(jSONObject, 1.0f, eVar, c.INSTANCE).d();
            return new d(aVarD.keyframes, (Integer) aVarD.initialValue);
        }
    }

    private static class c implements m.a<Integer> {
        private static final c INSTANCE = new c();

        private c() {
        }

        @Override // com.airbnb.lottie.model.animatable.m.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Integer a(Object obj, float f) {
            return Integer.valueOf(Math.round(com.airbnb.lottie.utils.b.c(obj) * f));
        }
    }

    private d() {
        super(100);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Integer e() {
        return (Integer) this.initialValue;
    }

    d(List<h0.a<Integer>> list, Integer num) {
        super(list, num);
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<Integer, Integer> a() {
        if (!d()) {
            return new com.airbnb.lottie.animation.keyframe.n(this.initialValue);
        }
        return new com.airbnb.lottie.animation.keyframe.e(this.keyframes);
    }
}
