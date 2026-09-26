package com.airbnb.lottie.model;

import android.graphics.PointF;
import com.airbnb.lottie.model.animatable.m;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class j implements m.a<PointF> {
    public static final j INSTANCE = new j();

    @Override // com.airbnb.lottie.model.animatable.m.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public PointF a(Object obj, float f) {
        if (obj instanceof JSONArray) {
            return com.airbnb.lottie.utils.b.a((JSONArray) obj, f);
        }
        if (obj instanceof JSONObject) {
            return com.airbnb.lottie.utils.b.b((JSONObject) obj, f);
        }
        throw new IllegalArgumentException("Unable to parse point from " + obj);
    }

    private j() {
    }
}
