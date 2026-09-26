package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class f extends o<PointF, PointF> {

    public static final class b {
        /* JADX WARN: Multi-variable type inference failed */
        public static f a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            n.a aVarD = n.b(jSONObject, eVar.j(), eVar, com.airbnb.lottie.model.j.INSTANCE).d();
            return new f(aVarD.keyframes, (PointF) aVarD.initialValue);
        }
    }

    private f(List<h0.a<PointF>> list, PointF pointF) {
        super(list, pointF);
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a() {
        if (!d()) {
            return new com.airbnb.lottie.animation.keyframe.n(this.initialValue);
        }
        return new com.airbnb.lottie.animation.keyframe.j(this.keyframes);
    }
}
