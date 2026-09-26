package androidx.compose.ui.geometry;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import i.a;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.m;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class Size {
    private final long packedValue;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = SizeKt.a(0.0f, 0.0f);
    private static final long Unspecified = SizeKt.a(Float.NaN, Float.NaN);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return Size.Unspecified;
        }

        public final long b() {
            return Size.Zero;
        }
    }

    public static final /* synthetic */ Size c(long j6) {
        return new Size(j6);
    }

    public static long d(long j6) {
        return j6;
    }

    public static boolean e(long j6, Object obj) {
        return (obj instanceof Size) && j6 == ((Size) obj).m();
    }

    public static final boolean f(long j6, long j10) {
        return j6 == j10;
    }

    public static int j(long j6) {
        return a.a(j6);
    }

    public boolean equals(Object obj) {
        return e(this.packedValue, obj);
    }

    public int hashCode() {
        return j(this.packedValue);
    }

    public final /* synthetic */ long m() {
        return this.packedValue;
    }

    public static final float g(long j6) {
        if (j6 == Unspecified) {
            throw new IllegalStateException("Size is unspecified".toString());
        }
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 & 4294967295L));
    }

    public static final float i(long j6) {
        if (j6 == Unspecified) {
            throw new IllegalStateException("Size is unspecified".toString());
        }
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 >> 32));
    }

    @NotNull
    public static String l(long j6) {
        if (j6 == Companion.a()) {
            return "Size.Unspecified";
        }
        return "Size(" + GeometryUtilsKt.a(i(j6), 1) + ", " + GeometryUtilsKt.a(g(j6), 1) + ')';
    }

    @NotNull
    public String toString() {
        return l(this.packedValue);
    }

    private /* synthetic */ Size(long j6) {
        this.packedValue = j6;
    }

    public static final float h(long j6) {
        return Math.min(Math.abs(i(j6)), Math.abs(g(j6)));
    }

    @Stable
    public static final boolean k(long j6) {
        if (i(j6) > 0.0f && g(j6) > 0.0f) {
            return false;
        }
        return true;
    }
}
