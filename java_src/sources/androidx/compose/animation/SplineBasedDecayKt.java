package androidx.compose.animation;

/* JADX INFO: loaded from: classes9.dex */
public final class SplineBasedDecayKt {
    private static final float EndTension = 1.0f;
    private static final float Inflection = 0.35f;
    private static final float P1 = 0.175f;
    private static final float P2 = 0.35000002f;
    private static final float StartTension = 0.5f;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(float[] fArr, float[] fArr2, int i10) {
        float f;
        float f6;
        float f7;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15 = 0.0f;
        float f16 = 0.0f;
        for (int i11 = 0; i11 < i10; i11++) {
            float f17 = i11 / i10;
            float f18 = 1.0f;
            while (true) {
                f = ((f18 - f15) / 2.0f) + f15;
                f6 = 1.0f - f;
                f7 = f * 3.0f * f6;
                f10 = f * f * f;
                float f19 = (((f6 * P1) + (f * P2)) * f7) + f10;
                if (Math.abs(f19 - f17) < 1.0E-5d) {
                    break;
                } else if (f19 > f17) {
                    f18 = f;
                } else {
                    f15 = f;
                }
            }
            float f20 = 0.5f;
            fArr[i11] = (f7 * ((f6 * 0.5f) + f)) + f10;
            float f21 = 1.0f;
            while (true) {
                f11 = ((f21 - f16) / 2.0f) + f16;
                f12 = 1.0f - f11;
                f13 = f11 * 3.0f * f12;
                f14 = f11 * f11 * f11;
                float f22 = (((f12 * f20) + f11) * f13) + f14;
                if (Math.abs(f22 - f17) >= 1.0E-5d) {
                    if (f22 > f17) {
                        f21 = f11;
                    } else {
                        f16 = f11;
                    }
                    f20 = 0.5f;
                }
            }
            fArr2[i11] = (f13 * ((f12 * P1) + (f11 * P2))) + f14;
        }
        fArr2[i10] = 1.0f;
        fArr[i10] = 1.0f;
    }
}
