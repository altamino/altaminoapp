package com.airbnb.lottie.model.animatable;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class j extends o<com.airbnb.lottie.model.d, com.airbnb.lottie.model.d> {

    public static final class a {
        /* JADX WARN: Multi-variable type inference failed */
        public static j a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            if (jSONObject != null && jSONObject.has("x")) {
                eVar.g("Lottie doesn't support expressions.");
            }
            n.a aVarD = n.b(jSONObject, 1.0f, eVar, b.INSTANCE).d();
            return new j(aVarD.keyframes, (com.airbnb.lottie.model.d) aVarD.initialValue);
        }
    }

    private static class b implements m.a<com.airbnb.lottie.model.d> {
        private static final b INSTANCE = new b();

        @Override // com.airbnb.lottie.model.animatable.m.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public com.airbnb.lottie.model.d a(Object obj, float f) {
            return com.airbnb.lottie.model.d.a.a((JSONObject) obj);
        }

        private b() {
        }
    }

    @Override // com.airbnb.lottie.model.animatable.m
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public com.airbnb.lottie.animation.keyframe.o a() {
        return new com.airbnb.lottie.animation.keyframe.o(this.keyframes);
    }

    j(List<h0.a<com.airbnb.lottie.model.d>> list, com.airbnb.lottie.model.d dVar) {
        super(list, dVar);
    }
}
