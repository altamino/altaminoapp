package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.m;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public final class Velocity {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = VelocityKt.a(0.0f, 0.0f);
    private final long packedValue;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return Velocity.Zero;
        }
    }

    public static final /* synthetic */ Velocity b(long j6) {
        return new Velocity(j6);
    }

    public static long c(long j6) {
        return j6;
    }

    public static boolean f(long j6, Object obj) {
        return (obj instanceof Velocity) && j6 == ((Velocity) obj).n();
    }

    public static final boolean g(long j6, long j10) {
        return j6 == j10;
    }

    public static int j(long j6) {
        return i.a.a(j6);
    }

    public boolean equals(Object obj) {
        return f(this.packedValue, obj);
    }

    public int hashCode() {
        return j(this.packedValue);
    }

    public final /* synthetic */ long n() {
        return this.packedValue;
    }

    public static /* synthetic */ long e(long j6, float f, float f6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = h(j6);
        }
        if ((i10 & 2) != 0) {
            f6 = i(j6);
        }
        return d(j6, f, f6);
    }

    public static final float h(long j6) {
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 >> 32));
    }

    public static final float i(long j6) {
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 & 4294967295L));
    }

    @NotNull
    public static String m(long j6) {
        return '(' + h(j6) + ", " + i(j6) + ") px/sec";
    }

    @NotNull
    public String toString() {
        return m(this.packedValue);
    }

    private /* synthetic */ Velocity(long j6) {
        this.packedValue = j6;
    }

    public static final long d(long j6, float f, float f6) {
        return VelocityKt.a(f, f6);
    }

    @Stable
    public static final long k(long j6, long j10) {
        return VelocityKt.a(h(j6) - h(j10), i(j6) - i(j10));
    }

    @Stable
    public static final long l(long j6, long j10) {
        return VelocityKt.a(h(j6) + h(j10), i(j6) + i(j10));
    }
}
