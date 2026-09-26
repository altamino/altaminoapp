package com.airbnb.lottie.utils;

/* JADX INFO: loaded from: classes8.dex */
public class a {
    public static int c(float f, int i10, int i11) {
        float f6 = ((i10 >> 24) & 255) / 255.0f;
        float fA = a(((i10 >> 16) & 255) / 255.0f);
        float fA2 = a(((i10 >> 8) & 255) / 255.0f);
        float fA3 = a((i10 & 255) / 255.0f);
        float fA4 = a(((i11 >> 16) & 255) / 255.0f);
        float f7 = f6 + (((((i11 >> 24) & 255) / 255.0f) - f6) * f);
        float fA5 = fA2 + ((a(((i11 >> 8) & 255) / 255.0f) - fA2) * f);
        float fA6 = fA3 + (f * (a((i11 & 255) / 255.0f) - fA3));
        return (Math.round(b(fA + ((fA4 - fA) * f)) * 255.0f) << 16) | (Math.round(f7 * 255.0f) << 24) | (Math.round(b(fA5) * 255.0f) << 8) | Math.round(b(fA6) * 255.0f);
    }

    private static float a(float f) {
        if (f <= 0.04045f) {
            return f / 12.92f;
        }
        return (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    private static float b(float f) {
        if (f <= 0.0031308f) {
            return f * 12.92f;
        }
        return (float) ((Math.pow(f, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }
}
