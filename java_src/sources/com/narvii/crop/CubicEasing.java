package com.narvii.crop;

/* JADX INFO: loaded from: classes10.dex */
public final class CubicEasing {
    public static float easeIn(float f, float f6, float f7, float f10) {
        float f11 = f / f10;
        return (f7 * f11 * f11 * f11) + f6;
    }

    public static float easeInOut(float f, float f6, float f7, float f10) {
        float f11;
        float f12 = f / (f10 / 2.0f);
        float f13 = f7 / 2.0f;
        if (f12 < 1.0f) {
            f11 = f13 * f12 * f12 * f12;
        } else {
            float f14 = f12 - 2.0f;
            f11 = f13 * ((f14 * f14 * f14) + 2.0f);
        }
        return f11 + f6;
    }

    public static float easeOut(float f, float f6, float f7, float f10) {
        float f11 = (f / f10) - 1.0f;
        return (f7 * ((f11 * f11 * f11) + 1.0f)) + f6;
    }
}
