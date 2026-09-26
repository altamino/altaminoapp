package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.m;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class DpOffset {

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
            return DpOffset.Unspecified;
        }

        public final long b() {
            return DpOffset.Zero;
        }
    }

    public static final /* synthetic */ DpOffset c(long j6) {
        return new DpOffset(j6);
    }

    public static long d(long j6) {
        return j6;
    }

    public static boolean e(long j6, Object obj) {
        return (obj instanceof DpOffset) && j6 == ((DpOffset) obj).k();
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

    public final /* synthetic */ long k() {
        return this.packedValue;
    }

    static {
        float f = 0;
        Zero = DpKt.a(Dp.f(f), Dp.f(f));
        Dp.Companion companion = Dp.Companion;
        Unspecified = DpKt.a(companion.b(), companion.b());
    }

    public static final float g(long j6) {
        if (j6 == Unspecified) {
            throw new IllegalStateException("DpOffset is unspecified".toString());
        }
        m mVar = m.INSTANCE;
        return Dp.f(Float.intBitsToFloat((int) (j6 >> 32)));
    }

    public static final float h(long j6) {
        if (j6 == Unspecified) {
            throw new IllegalStateException("DpOffset is unspecified".toString());
        }
        m mVar = m.INSTANCE;
        return Dp.f(Float.intBitsToFloat((int) (j6 & 4294967295L)));
    }

    @Stable
    @NotNull
    public static String j(long j6) {
        if (j6 == Companion.a()) {
            return "DpOffset.Unspecified";
        }
        return '(' + ((Object) Dp.k(g(j6))) + ", " + ((Object) Dp.k(h(j6))) + ')';
    }

    @Stable
    @NotNull
    public String toString() {
        return j(this.packedValue);
    }

    private /* synthetic */ DpOffset(long j6) {
        this.packedValue = j6;
    }
}
