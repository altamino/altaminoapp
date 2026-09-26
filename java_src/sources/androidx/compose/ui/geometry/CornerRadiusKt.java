package androidx.compose.ui.geometry;

import androidx.compose.runtime.Stable;

/* JADX INFO: loaded from: classes5.dex */
public final class CornerRadiusKt {
    public static /* synthetic */ long b(float f, float f6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f6 = f;
        }
        return a(f, f6);
    }

    @Stable
    public static final long a(float f, float f6) {
        return CornerRadius.b((((long) Float.floatToIntBits(f6)) & 4294967295L) | (Float.floatToIntBits(f) << 32));
    }
}
