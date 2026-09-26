package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class e implements m<PointF, PointF> {
    private PointF initialPoint;
    private final List<com.airbnb.lottie.animation.keyframe.h> keyframes;

    private static class a implements m.a<PointF> {
        private static final m.a<PointF> INSTANCE = new a();

        @Override // com.airbnb.lottie.model.animatable.m.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public PointF a(Object obj, float f) {
            return com.airbnb.lottie.utils.b.a((JSONArray) obj, f);
        }

        private a() {
        }
    }

    e() {
        this.keyframes = new ArrayList();
        this.initialPoint = new PointF(0.0f, 0.0f);
    }

    public static m<PointF, PointF> b(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
        return jSONObject.has("k") ? new e(jSONObject.opt("k"), eVar) : new i(b.C0111b.b(jSONObject.optJSONObject("x"), eVar), b.C0111b.b(jSONObject.optJSONObject("y"), eVar));
    }

    private boolean d(Object obj) {
        if (!(obj instanceof JSONArray)) {
            return false;
        }
        Object objOpt = ((JSONArray) obj).opt(0);
        return (objOpt instanceof JSONObject) && ((JSONObject) objOpt).has("t");
    }

    public boolean c() {
        return !this.keyframes.isEmpty();
    }

    public String toString() {
        return "initialPoint=" + this.initialPoint;
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a() {
        if (!c()) {
            return new com.airbnb.lottie.animation.keyframe.n(this.initialPoint);
        }
        return new com.airbnb.lottie.animation.keyframe.i(this.keyframes);
    }

    e(Object obj, com.airbnb.lottie.e eVar) {
        this.keyframes = new ArrayList();
        if (d(obj)) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                this.keyframes.add(com.airbnb.lottie.animation.keyframe.h.b.a(jSONArray.optJSONObject(i10), eVar, a.INSTANCE));
            }
            h0.a.f(this.keyframes);
            return;
        }
        this.initialPoint = com.airbnb.lottie.utils.b.a((JSONArray) obj, eVar.j());
    }
}
