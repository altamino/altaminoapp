package androidx.compose.ui.geometry;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class GeometryUtilsKt {
    @NotNull
    public static final String a(float f, int i10) {
        int iMax = Math.max(i10, 0);
        float fPow = (float) Math.pow(10.0f, iMax);
        float f6 = f * fPow;
        int i11 = (int) f6;
        if (f6 - i11 >= 0.5f) {
            i11++;
        }
        float f7 = i11 / fPow;
        return iMax > 0 ? String.valueOf(f7) : String.valueOf((int) f7);
    }
}
