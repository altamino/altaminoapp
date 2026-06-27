package com.airbnb.lottie.model;

import android.graphics.PointF;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.utils.JsonUtils;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class PointFFactory implements AnimatableValue.Factory<PointF> {
    public static final PointFFactory INSTANCE = new PointFFactory();

    private PointFFactory() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.model.animatable.AnimatableValue.Factory
    public PointF valueFromObject(Object obj, float f) {
        if (obj instanceof JSONArray) {
            return JsonUtils.pointFromJsonArray((JSONArray) obj, f);
        }
        if (obj instanceof JSONObject) {
            return JsonUtils.pointFromJsonObject((JSONObject) obj, f);
        }
        throw new IllegalArgumentException("Unable to parse point from " + obj);
    }
}
