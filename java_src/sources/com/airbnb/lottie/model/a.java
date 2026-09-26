package com.airbnb.lottie.model;

import android.graphics.Color;
import androidx.core.view.ViewCompat;
import com.airbnb.lottie.model.animatable.m;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes9.dex */
public class a implements m.a<Integer> {
    public static final a INSTANCE = new a();

    @Override // com.airbnb.lottie.model.animatable.m.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Integer a(Object obj, float f) {
        JSONArray jSONArray = (JSONArray) obj;
        if (jSONArray.length() != 4) {
            return Integer.valueOf(ViewCompat.MEASURED_STATE_MASK);
        }
        boolean z6 = true;
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            if (jSONArray.optDouble(i10) > 1.0d) {
                z6 = false;
            }
        }
        double d = z6 ? 255.0f : 1.0f;
        return Integer.valueOf(Color.argb((int) (jSONArray.optDouble(3) * d), (int) (jSONArray.optDouble(0) * d), (int) (jSONArray.optDouble(1) * d), (int) (jSONArray.optDouble(2) * d)));
    }
}
