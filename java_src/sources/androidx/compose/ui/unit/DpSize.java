package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.m;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
public final class DpSize {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified;
    private static final long Zero;
    private final long packedValue;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return DpSize.Unspecified;
        }

        public final long b() {
            return DpSize.Zero;
        }
    }

    public static final /* synthetic */ DpSize c(long j6) {
        return new DpSize(j6);
    }

    public static long d(long j6) {
        return j6;
    }

    public static boolean e(long j6, Object obj) {
        return (obj instanceof DpSize) && j6 == ((DpSize) obj).l();
    }

    public static final boolean f(long j6, long j10) {
        return j6 == j10;
    }

    public static int i(long j6) {
        return i.a.a(j6);
    }

    public boolean equals(Object obj) {
        return e(this.packedValue, obj);
    }

    public int hashCode() {
        return i(this.packedValue);
    }

    public final /* synthetic */ long l() {
        return this.packedValue;
    }

    static {
        float f = 0;
        Zero = DpKt.b(Dp.f(f), Dp.f(f));
        Dp.Companion companion = Dp.Companion;
        Unspecified = DpKt.b(companion.b(), companion.b());
    }

    public static final float g(long j6) {
        if (j6 == Unspecified) {
            throw new IllegalStateException("DpSize is unspecified".toString());
        }
        m mVar = m.INSTANCE;
        return Dp.f(Float.intBitsToFloat((int) (j6 & 4294967295L)));
    }

    public static final float h(long j6) {
        if (j6 == Unspecified) {
            throw new IllegalStateException("DpSize is unspecified".toString());
        }
        m mVar = m.INSTANCE;
        return Dp.f(Float.intBitsToFloat((int) (j6 >> 32)));
    }

    @Stable
    @NotNull
    public static String k(long j6) {
        if (j6 == Companion.a()) {
            return "DpSize.Unspecified";
        }
        return ((Object) Dp.k(h(j6))) + " x " + ((Object) Dp.k(g(j6)));
    }

    @Stable
    @NotNull
    public String toString() {
        return k(this.packedValue);
    }

    private /* synthetic */ DpSize(long j6) {
        this.packedValue = j6;
    }

    @Stable
    public static final long j(long j6, float f) {
        return DpKt.b(Dp.f(h(j6) * f), Dp.f(g(j6) * f));
    }
}
