package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import j8.o;

/* JADX INFO: loaded from: classes2.dex */
public final class ConstraintsKt {
    @Stable
    public static final long a(int i10, int i11, int i12, int i13) {
        if (i11 < i10) {
            throw new IllegalArgumentException(("maxWidth(" + i11 + ") must be >= than minWidth(" + i10 + ')').toString());
        }
        if (i13 < i12) {
            throw new IllegalArgumentException(("maxHeight(" + i13 + ") must be >= than minHeight(" + i12 + ')').toString());
        }
        if (i10 >= 0 && i12 >= 0) {
            return Constraints.Companion.b(i10, i11, i12, i13);
        }
        throw new IllegalArgumentException(("minWidth(" + i10 + ") and minHeight(" + i12 + ") must be >= 0").toString());
    }

    public static /* synthetic */ long b(int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = 0;
        }
        if ((i14 & 2) != 0) {
            i11 = Integer.MAX_VALUE;
        }
        if ((i14 & 4) != 0) {
            i12 = 0;
        }
        if ((i14 & 8) != 0) {
            i13 = Integer.MAX_VALUE;
        }
        return a(i10, i11, i12, i13);
    }

    public static /* synthetic */ long j(long j6, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return i(j6, i10, i11);
    }

    private static final int c(int i10, int i11) {
        if (i10 != Integer.MAX_VALUE) {
            return o.e(i10 + i11, 0);
        }
        return i10;
    }

    @Stable
    public static final long d(long j6, long j10) {
        return IntSizeKt.a(o.n(IntSize.g(j10), Constraints.p(j6), Constraints.n(j6)), o.n(IntSize.f(j10), Constraints.o(j6), Constraints.m(j6)));
    }

    public static final long e(long j6, long j10) {
        return a(o.n(Constraints.p(j10), Constraints.p(j6), Constraints.n(j6)), o.n(Constraints.n(j10), Constraints.p(j6), Constraints.n(j6)), o.n(Constraints.o(j10), Constraints.o(j6), Constraints.m(j6)), o.n(Constraints.m(j10), Constraints.o(j6), Constraints.m(j6)));
    }

    @Stable
    public static final int f(long j6, int i10) {
        return o.n(i10, Constraints.o(j6), Constraints.m(j6));
    }

    @Stable
    public static final int g(long j6, int i10) {
        return o.n(i10, Constraints.p(j6), Constraints.n(j6));
    }

    @Stable
    public static final boolean h(long j6, long j10) {
        int iP = Constraints.p(j6);
        int iN = Constraints.n(j6);
        int iG = IntSize.g(j10);
        if (iP <= iG && iG <= iN) {
            int iO = Constraints.o(j6);
            int iM = Constraints.m(j6);
            int iF = IntSize.f(j10);
            if (iO <= iF && iF <= iM) {
                return true;
            }
        }
        return false;
    }

    @Stable
    public static final long i(long j6, int i10, int i11) {
        return a(o.e(Constraints.p(j6) + i10, 0), c(Constraints.n(j6), i10), o.e(Constraints.o(j6) + i11, 0), c(Constraints.m(j6), i11));
    }
}
