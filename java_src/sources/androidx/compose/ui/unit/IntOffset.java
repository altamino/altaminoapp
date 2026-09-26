package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class IntOffset {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = IntOffsetKt.a(0, 0);
    private final long packedValue;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return IntOffset.Zero;
        }
    }

    public static final /* synthetic */ IntOffset b(long j6) {
        return new IntOffset(j6);
    }

    public static long e(long j6) {
        return j6;
    }

    public static boolean h(long j6, Object obj) {
        return (obj instanceof IntOffset) && j6 == ((IntOffset) obj).n();
    }

    public static final boolean i(long j6, long j10) {
        return j6 == j10;
    }

    public static final int j(long j6) {
        return (int) (j6 >> 32);
    }

    public static final int k(long j6) {
        return (int) (j6 & 4294967295L);
    }

    public static int l(long j6) {
        return i.a.a(j6);
    }

    public boolean equals(Object obj) {
        return h(this.packedValue, obj);
    }

    public int hashCode() {
        return l(this.packedValue);
    }

    public final /* synthetic */ long n() {
        return this.packedValue;
    }

    public static /* synthetic */ long g(long j6, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = j(j6);
        }
        if ((i12 & 2) != 0) {
            i11 = k(j6);
        }
        return f(j6, i10, i11);
    }

    @Stable
    @NotNull
    public static String m(long j6) {
        return '(' + j(j6) + ", " + k(j6) + ')';
    }

    @Stable
    @NotNull
    public String toString() {
        return m(this.packedValue);
    }

    private /* synthetic */ IntOffset(long j6) {
        this.packedValue = j6;
    }

    @Stable
    public static final int c(long j6) {
        return j(j6);
    }

    @Stable
    public static final int d(long j6) {
        return k(j6);
    }

    public static final long f(long j6, int i10, int i11) {
        return IntOffsetKt.a(i10, i11);
    }
}
