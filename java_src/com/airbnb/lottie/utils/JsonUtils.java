package com.airbnb.lottie.utils;

import android.graphics.PointF;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JsonUtils {
    public static PointF pointFromJsonObject(JSONObject jSONObject, float f) {
        return new PointF(valueFromObject(jSONObject.opt("x")) * f, valueFromObject(jSONObject.opt("y")) * f);
    }

    public static PointF pointFromJsonArray(JSONArray jSONArray, float f) {
        if (jSONArray.length() < 2) {
            throw new IllegalArgumentException("Unable to parse point for " + jSONArray);
        }
        return new PointF(((float) jSONArray.optDouble(0, 1.0d)) * f, ((float) jSONArray.optDouble(1, 1.0d)) * f);
    }

    public static float valueFromObject(Object obj) {
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
}
