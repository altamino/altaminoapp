package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.util.MathHelpersKt;

/* JADX INFO: loaded from: classes8.dex */
public final class TextUnitKt {
    private static final long UNIT_MASK = 1095216660480L;
    private static final long UNIT_TYPE_EM = 8589934592L;
    private static final long UNIT_TYPE_SP = 4294967296L;
    private static final long UNIT_TYPE_UNSPECIFIED = 0;

    @ExperimentalUnitApi
    public static final long a(float f, long j6) {
        return h(j6, f);
    }

    public static final void b(long j6) {
        if (!f(j6)) {
        } else {
            throw new IllegalArgumentException("Cannot perform operation for Unspecified type.".toString());
        }
    }

    public static final void c(long j6, long j10) {
        if (!f(j6) && !f(j10)) {
            if (TextUnitType.g(TextUnit.g(j6), TextUnit.g(j10))) {
                return;
            }
            throw new IllegalArgumentException(("Cannot perform operation for " + ((Object) TextUnitType.i(TextUnit.g(j6))) + " and " + ((Object) TextUnitType.i(TextUnit.g(j10)))).toString());
        }
        throw new IllegalArgumentException("Cannot perform operation for Unspecified type.".toString());
    }

    public static final boolean f(long j6) {
        if (TextUnit.f(j6) == 0) {
            return true;
        }
        return false;
    }

    @Stable
    public static final long g(long j6, long j10, float f) {
        c(j6, j10);
        return h(TextUnit.f(j6), MathHelpersKt.a(TextUnit.h(j6), TextUnit.h(j10), f));
    }

    public static final long h(long j6, float f) {
        return TextUnit.c(j6 | (((long) Float.floatToIntBits(f)) & 4294967295L));
    }

    public static final long d(double d) {
        return h(UNIT_TYPE_SP, (float) d);
    }

    public static final long e(int i10) {
        return h(UNIT_TYPE_SP, i10);
    }
}
