package com.airbnb.lottie.model;

import android.graphics.Color;
import android.support.v4.view.ViewCompat;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class ColorFactory implements AnimatableValue.Factory<Integer> {
    public static final ColorFactory INSTANCE = new ColorFactory();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.model.animatable.AnimatableValue.Factory
    public Integer valueFromObject(Object obj, float f) {
        JSONArray jSONArray = (JSONArray) obj;
        if (jSONArray.length() == 4) {
            boolean z = true;
            for (int i = 0; i < jSONArray.length(); i++) {
                if (jSONArray.optDouble(i) > 1.0d) {
                    z = false;
                }
            }
            float f2 = z ? 255.0f : 1.0f;
            double dOptDouble = jSONArray.optDouble(3);
            double d = f2;
            Double.isNaN(d);
            int i2 = (int) (dOptDouble * d);
            double dOptDouble2 = jSONArray.optDouble(0);
            Double.isNaN(d);
            int i3 = (int) (dOptDouble2 * d);
            double dOptDouble3 = jSONArray.optDouble(1);
            Double.isNaN(d);
            int i4 = (int) (dOptDouble3 * d);
            double dOptDouble4 = jSONArray.optDouble(2);
            Double.isNaN(d);
            return Integer.valueOf(Color.argb(i2, i3, i4, (int) (dOptDouble4 * d)));
        }
        return Integer.valueOf(ViewCompat.MEASURED_STATE_MASK);
    }
}
