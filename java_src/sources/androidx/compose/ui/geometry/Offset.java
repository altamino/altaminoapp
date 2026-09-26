package androidx.compose.ui.geometry;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import i.a;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.m;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class Offset {
    private final long packedValue;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = OffsetKt.a(0.0f, 0.0f);
    private static final long Infinite = OffsetKt.a(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
    private static final long Unspecified = OffsetKt.a(Float.NaN, Float.NaN);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return Offset.Infinite;
        }

        public final long b() {
            return Offset.Unspecified;
        }

        public final long c() {
            return Offset.Zero;
        }
    }

    public static final /* synthetic */ Offset d(long j6) {
        return new Offset(j6);
    }

    public static long g(long j6) {
        return j6;
    }

    public static boolean i(long j6, Object obj) {
        return (obj instanceof Offset) && j6 == ((Offset) obj).u();
    }

    public static final boolean j(long j6, long j10) {
        return j6 == j10;
    }

    public static int o(long j6) {
        return a.a(j6);
    }

    public boolean equals(Object obj) {
        return i(this.packedValue, obj);
    }

    public int hashCode() {
        return o(this.packedValue);
    }

    public final /* synthetic */ long u() {
        return this.packedValue;
    }

    public static final float m(long j6) {
        if (j6 == Unspecified) {
            throw new IllegalStateException("Offset is unspecified".toString());
        }
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 >> 32));
    }

    public static final float n(long j6) {
        if (j6 == Unspecified) {
            throw new IllegalStateException("Offset is unspecified".toString());
        }
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 & 4294967295L));
    }

    @NotNull
    public String toString() {
        return t(this.packedValue);
    }

    private /* synthetic */ Offset(long j6) {
        this.packedValue = j6;
    }

    @Stable
    public static final float e(long j6) {
        return m(j6);
    }

    @Stable
    public static final float f(long j6) {
        return n(j6);
    }

    @Stable
    public static final long h(long j6, float f) {
        return OffsetKt.a(m(j6) / f, n(j6) / f);
    }

    @Stable
    public static final float k(long j6) {
        return (float) Math.sqrt((m(j6) * m(j6)) + (n(j6) * n(j6)));
    }

    @Stable
    public static final float l(long j6) {
        return (m(j6) * m(j6)) + (n(j6) * n(j6));
    }

    @Stable
    public static final boolean p(long j6) {
        if (!Float.isNaN(m(j6)) && !Float.isNaN(n(j6))) {
            return true;
        }
        throw new IllegalStateException("Offset argument contained a NaN value.".toString());
    }

    @Stable
    public static final long q(long j6, long j10) {
        return OffsetKt.a(m(j6) - m(j10), n(j6) - n(j10));
    }

    @Stable
    public static final long r(long j6, long j10) {
        return OffsetKt.a(m(j6) + m(j10), n(j6) + n(j10));
    }

    @Stable
    public static final long s(long j6, float f) {
        return OffsetKt.a(m(j6) * f, n(j6) * f);
    }

    @NotNull
    public static String t(long j6) {
        if (OffsetKt.c(j6)) {
            return "Offset(" + GeometryUtilsKt.a(m(j6), 1) + ", " + GeometryUtilsKt.a(n(j6), 1) + ')';
        }
        return "Offset.Unspecified";
    }
}
