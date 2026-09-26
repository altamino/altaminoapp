package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;

/* JADX INFO: loaded from: classes10.dex */
public final class IntOffsetKt {
    @Stable
    public static final long a(int i10, int i11) {
        return IntOffset.e((((long) i11) & 4294967295L) | (((long) i10) << 32));
    }

    @Stable
    public static final long b(long j6, long j10) {
        return OffsetKt.a(Offset.m(j6) - IntOffset.j(j10), Offset.n(j6) - IntOffset.k(j10));
    }

    @Stable
    public static final long c(long j6, long j10) {
        return OffsetKt.a(Offset.m(j6) + IntOffset.j(j10), Offset.n(j6) + IntOffset.k(j10));
    }
}
