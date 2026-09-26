package com.airbnb.lottie.model.animatable;

import android.graphics.Color;
import android.util.Log;
import androidx.annotation.IntRange;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c extends o<com.airbnb.lottie.model.content.c, com.airbnb.lottie.model.content.c> {

    public static final class b {
        /* JADX WARN: Multi-variable type inference failed */
        public static c a(JSONObject jSONObject, com.airbnb.lottie.e eVar) {
            n.a aVarD = n.b(jSONObject, 1.0f, eVar, new C0112c(jSONObject.optInt("p", jSONObject.optJSONArray("k").length() / 4))).d();
            return new c(aVarD.keyframes, (com.airbnb.lottie.model.content.c) aVarD.initialValue);
        }
    }

    /* JADX INFO: renamed from: com.airbnb.lottie.model.animatable.c$c, reason: collision with other inner class name */
    private static class C0112c implements m.a<com.airbnb.lottie.model.content.c> {
        private final int colorPoints;

        private C0112c(int i10) {
            this.colorPoints = i10;
        }

        private void b(com.airbnb.lottie.model.content.c cVar, JSONArray jSONArray) {
            int i10 = this.colorPoints * 4;
            if (jSONArray.length() <= i10) {
                return;
            }
            int length = (jSONArray.length() - i10) / 2;
            double[] dArr = new double[length];
            double[] dArr2 = new double[length];
            int i11 = 0;
            while (i10 < jSONArray.length()) {
                if (i10 % 2 == 0) {
                    dArr[i11] = jSONArray.optDouble(i10);
                } else {
                    dArr2[i11] = jSONArray.optDouble(i10);
                    i11++;
                }
                i10++;
            }
            for (int i12 = 0; i12 < cVar.c(); i12++) {
                int i13 = cVar.a()[i12];
                cVar.a()[i12] = Color.argb(c(cVar.b()[i12], dArr, dArr2), Color.red(i13), Color.green(i13), Color.blue(i13));
            }
        }

        @IntRange
        private int c(double d, double[] dArr, double[] dArr2) {
            double dG;
            for (int i10 = 1; i10 < dArr.length; i10++) {
                int i11 = i10 - 1;
                double d2 = dArr[i11];
                double d6 = dArr[i10];
                if (d6 >= d) {
                    dG = com.airbnb.lottie.utils.e.g(dArr2[i11], dArr2[i10], (d - d2) / (d6 - d2));
                    return (int) (dG * 255.0d);
                }
            }
            dG = dArr2[dArr2.length - 1];
            return (int) (dG * 255.0d);
        }

        @Override // com.airbnb.lottie.model.animatable.m.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public com.airbnb.lottie.model.content.c a(Object obj, float f) {
            JSONArray jSONArray = (JSONArray) obj;
            int i10 = this.colorPoints;
            float[] fArr = new float[i10];
            int[] iArr = new int[i10];
            com.airbnb.lottie.model.content.c cVar = new com.airbnb.lottie.model.content.c(fArr, iArr);
            if (jSONArray.length() != this.colorPoints * 4) {
                Log.w(com.airbnb.lottie.d.TAG, "Unexpected gradient length: " + jSONArray.length() + ". Expected " + (this.colorPoints * 4) + ". This may affect the appearance of the gradient. Make sure to save your After Effects file before exporting an animation with gradients.");
            }
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < this.colorPoints * 4; i13++) {
                int i14 = i13 / 4;
                double dOptDouble = jSONArray.optDouble(i13);
                int i15 = i13 % 4;
                if (i15 == 0) {
                    fArr[i14] = (float) dOptDouble;
                } else if (i15 == 1) {
                    i11 = (int) (dOptDouble * 255.0d);
                } else if (i15 == 2) {
                    i12 = (int) (dOptDouble * 255.0d);
                } else if (i15 == 3) {
                    iArr[i14] = Color.argb(255, i11, i12, (int) (dOptDouble * 255.0d));
                }
            }
            b(cVar, jSONArray);
            return cVar;
        }
    }

    private c(List<h0.a<com.airbnb.lottie.model.content.c>> list, com.airbnb.lottie.model.content.c cVar) {
        super(list, cVar);
    }

    @Override // com.airbnb.lottie.model.animatable.m
    public com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.c, com.airbnb.lottie.model.content.c> a() {
        if (!d()) {
            return new com.airbnb.lottie.animation.keyframe.n(this.initialValue);
        }
        return new com.airbnb.lottie.animation.keyframe.d(this.keyframes);
    }
}
