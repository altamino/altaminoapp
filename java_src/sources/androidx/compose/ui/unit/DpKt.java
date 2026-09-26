package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;

/* JADX INFO: loaded from: classes10.dex */
public final class DpKt {
    @Stable
    public static final long a(float f, float f6) {
        return DpOffset.d((((long) Float.floatToIntBits(f6)) & 4294967295L) | (Float.floatToIntBits(f) << 32));
    }

    @Stable
    public static final long b(float f, float f6) {
        return DpSize.d((((long) Float.floatToIntBits(f6)) & 4294967295L) | (Float.floatToIntBits(f) << 32));
    }
}
