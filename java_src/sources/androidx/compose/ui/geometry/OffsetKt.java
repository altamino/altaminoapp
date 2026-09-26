package androidx.compose.ui.geometry;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.util.MathHelpersKt;

/* JADX INFO: loaded from: classes10.dex */
public final class OffsetKt {
    public static final boolean c(long j6) {
        return j6 != Offset.Companion.b();
    }

    public static final boolean d(long j6) {
        return j6 == Offset.Companion.b();
    }

    @Stable
    public static final long a(float f, float f6) {
        return Offset.g((((long) Float.floatToIntBits(f6)) & 4294967295L) | (Float.floatToIntBits(f) << 32));
    }

    public static final boolean b(long j6) {
        float fM = Offset.m(j6);
        if (!Float.isInfinite(fM) && !Float.isNaN(fM)) {
            float fN = Offset.n(j6);
            if (!Float.isInfinite(fN) && !Float.isNaN(fN)) {
                return true;
            }
        }
        return false;
    }

    @Stable
    public static final long e(long j6, long j10, float f) {
        return a(MathHelpersKt.a(Offset.m(j6), Offset.m(j10), f), MathHelpersKt.a(Offset.n(j6), Offset.n(j10), f));
    }
}
