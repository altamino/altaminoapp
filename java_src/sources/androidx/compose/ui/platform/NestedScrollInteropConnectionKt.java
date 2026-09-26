package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;

/* JADX INFO: loaded from: classes9.dex */
public final class NestedScrollInteropConnectionKt {
    private static final float ScrollingAxesThreshold = 0.5f;

    private static final float e(float f) {
        return (float) (f >= 0.0f ? Math.ceil(f) : Math.floor(f));
    }

    private static final float h(int i10) {
        return i10 * (-1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float k(float f) {
        return f * (-1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int j(int i10) {
        return !NestedScrollSource.e(i10, NestedScrollSource.Companion.a()) ? 1 : 0;
    }

    public static final int f(float f) {
        return ((int) e(f)) * (-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int g(long j6) {
        int i10;
        if (Math.abs(Offset.m(j6)) >= 0.5f) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (Math.abs(Offset.n(j6)) >= 0.5f) {
            return i10 | 2;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long i(int[] iArr, long j6) {
        return OffsetKt.a(Offset.m(j6) >= 0.0f ? j8.o.i(h(iArr[0]), Offset.m(j6)) : j8.o.d(h(iArr[0]), Offset.m(j6)), Offset.n(j6) >= 0.0f ? j8.o.i(h(iArr[1]), Offset.n(j6)) : j8.o.d(h(iArr[1]), Offset.n(j6)));
    }
}
