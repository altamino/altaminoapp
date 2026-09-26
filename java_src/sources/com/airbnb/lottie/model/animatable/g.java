package com.airbnb.lottie.model.animatable;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class g extends o<com.airbnb.lottie.model.k, com.airbnb.lottie.model.k> {

    static final class b {
        static g a() {
            return new g();
        }

        /* JADX WARN: Multi-variable type inference failed */
        static g b(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            n.a aVarD = n.b(jSONObject, 1.0f, eVar, com.airbnb.lottie.model.k.a.INSTANCE).d();
            return new g(aVarD.keyframes, (com.airbnb.lottie.model.k) aVarD.initialValue);
        }
    }

    private g() {
        super(new com.airbnb.lottie.model.k());
    }

    g(List<h0.a<com.airbnb.lottie.model.k>> list, com.airbnb.lottie.model.k kVar) {
        super(list, kVar);
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.k, com.airbnb.lottie.model.k> a() {
        if (!d()) {
            return new com.airbnb.lottie.animation.keyframe.n(this.initialValue);
        }
        return new com.airbnb.lottie.animation.keyframe.k(this.keyframes);
    }
}
