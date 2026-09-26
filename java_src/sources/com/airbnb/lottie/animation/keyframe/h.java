package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PointF;
import android.view.animation.Interpolator;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class h extends h0.a<PointF> {

    @Nullable
    private Path path;

    @Nullable
    Path h() {
        return this.path;
    }

    public static class b {
        /* JADX WARN: Multi-variable type inference failed */
        public static h a(JSONObject jSONObject, com.airbnb.lottie.e eVar, com.airbnb.lottie.model.animatable.m.a<PointF> aVar) {
            PointF pointFA;
            PointF pointFA2;
            boolean z6;
            T t5;
            h0.a aVarB = h0.a.C0382a.b(jSONObject, eVar, eVar.j(), aVar);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ti");
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(TypedValues.TransitionType.S_TO);
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray2 != null) {
                pointFA = com.airbnb.lottie.utils.b.a(jSONArrayOptJSONArray2, eVar.j());
                pointFA2 = com.airbnb.lottie.utils.b.a(jSONArrayOptJSONArray, eVar.j());
            } else {
                pointFA = null;
                pointFA2 = null;
            }
            h hVar = new h(eVar, (PointF) aVarB.startValue, (PointF) aVarB.endValue, aVarB.interpolator, aVarB.startFrame, aVarB.endFrame);
            T t10 = aVarB.endValue;
            if (t10 != 0 && (t5 = aVarB.startValue) != 0 && ((PointF) t5).equals(((PointF) t10).x, ((PointF) t10).y)) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (hVar.endValue != 0 && !z6) {
                hVar.path = com.airbnb.lottie.utils.f.d((PointF) aVarB.startValue, (PointF) aVarB.endValue, pointFA, pointFA2);
            }
            return hVar;
        }
    }

    private h(com.airbnb.lottie.e eVar, @Nullable PointF pointF, @Nullable PointF pointF2, @Nullable Interpolator interpolator, float f, @Nullable Float f6) {
        super(eVar, pointF, pointF2, interpolator, f, f6);
    }
}
