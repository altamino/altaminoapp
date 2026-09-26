package androidx.compose.ui.geometry;

import androidx.compose.runtime.Immutable;
import i.a;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.m;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
public final class CornerRadius {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Zero = CornerRadiusKt.b(0.0f, 0.0f, 2, null);
    private final long packedValue;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final long a() {
            return CornerRadius.Zero;
        }
    }

    public static long b(long j6) {
        return j6;
    }

    public static boolean c(long j6, Object obj) {
        return (obj instanceof CornerRadius) && j6 == ((CornerRadius) obj).i();
    }

    public static final boolean d(long j6, long j10) {
        return j6 == j10;
    }

    public static int g(long j6) {
        return a.a(j6);
    }

    public boolean equals(Object obj) {
        return c(this.packedValue, obj);
    }

    public int hashCode() {
        return g(this.packedValue);
    }

    public final /* synthetic */ long i() {
        return this.packedValue;
    }

    public static final float e(long j6) {
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 >> 32));
    }

    public static final float f(long j6) {
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 & 4294967295L));
    }

    @NotNull
    public String toString() {
        return h(this.packedValue);
    }

    @NotNull
    public static String h(long j6) {
        if (e(j6) == f(j6)) {
            return "CornerRadius.circular(" + GeometryUtilsKt.a(e(j6), 1) + ')';
        }
        return "CornerRadius.elliptical(" + GeometryUtilsKt.a(e(j6), 1) + ", " + GeometryUtilsKt.a(f(j6), 1) + ')';
    }
}
