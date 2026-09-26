package com.airbnb.lottie.model.animatable;

import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class a extends o<Integer, Integer> {

    public static final class b {
        /* JADX WARN: Multi-variable type inference failed */
        public static a a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            n.a aVarD = n.b(jSONObject, 1.0f, eVar, com.airbnb.lottie.model.a.INSTANCE).d();
            return new a(aVarD.keyframes, (Integer) aVarD.initialValue);
        }
    }

    private a(List<h0.a<Integer>> list, Integer num) {
        super(list, num);
    }

    @Override // com.airbnb.lottie.model.animatable.o
    public String toString() {
        return "AnimatableColorValue{initialValue=" + this.initialValue + kotlinx.serialization.json.internal.b.END_OBJ;
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<Integer, Integer> a() {
        if (!d()) {
            return new com.airbnb.lottie.animation.keyframe.n(this.initialValue);
        }
        return new com.airbnb.lottie.animation.keyframe.b(this.keyframes);
    }
}
