package com.airbnb.lottie.utils;

import android.graphics.PointF;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class b {
    public static PointF b(JSONObject jSONObject, float f) {
        return new PointF(c(jSONObject.opt("x")) * f, c(jSONObject.opt("y")) * f);
    }

    public static float c(Object obj) {
        if (obj instanceof Float) {
            return ((Float) obj).floatValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Double) {
            return (float) ((Double) obj).doubleValue();
        }
        if (obj instanceof JSONArray) {
            return (float) ((JSONArray) obj).optDouble(0);
        }
        return 0.0f;
    }

    public static PointF a(JSONArray jSONArray, float f) {
        if (jSONArray.length() >= 2) {
            return new PointF(((float) jSONArray.optDouble(0, 1.0d)) * f, ((float) jSONArray.optDouble(1, 1.0d)) * f);
        }
        throw new IllegalArgumentException("Unable to parse point for " + jSONArray);
    }
}
