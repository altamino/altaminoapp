package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.SizeKt;

/* JADX INFO: loaded from: classes8.dex */
public final class IntSizeKt {
    @Stable
    public static final long a(int i10, int i11) {
        return IntSize.c((((long) i11) & 4294967295L) | (((long) i10) << 32));
    }

    @Stable
    public static final long b(long j6) {
        return SizeKt.a(IntSize.g(j6), IntSize.f(j6));
    }
}
