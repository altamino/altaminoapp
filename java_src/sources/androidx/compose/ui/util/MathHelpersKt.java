package androidx.compose.ui.util;

import g8.c;

/* JADX INFO: loaded from: classes8.dex */
public final class MathHelpersKt {
    public static final float a(float f, float f6, float f7) {
        return ((1 - f7) * f) + (f7 * f6);
    }

    public static final int b(int i10, int i11, float f) {
        return i10 + c.b(((double) (i11 - i10)) * ((double) f));
    }
}
