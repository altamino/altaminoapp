package androidx.compose.ui.node;

import kotlin.jvm.internal.m;

/* JADX INFO: loaded from: classes5.dex */
final class DistanceAndInLayer {
    private final long packedValue;

    public static long b(long j6) {
        return j6;
    }

    public static boolean c(long j6, Object obj) {
        return (obj instanceof DistanceAndInLayer) && j6 == ((DistanceAndInLayer) obj).h();
    }

    public static int e(long j6) {
        return i.a.a(j6);
    }

    public static final boolean f(long j6) {
        return ((int) (j6 & 4294967295L)) != 0;
    }

    public static String g(long j6) {
        return "DistanceAndInLayer(packedValue=" + j6 + ')';
    }

    public boolean equals(Object obj) {
        return c(this.packedValue, obj);
    }

    public final /* synthetic */ long h() {
        return this.packedValue;
    }

    public int hashCode() {
        return e(this.packedValue);
    }

    public String toString() {
        return g(this.packedValue);
    }

    public static final float d(long j6) {
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 >> 32));
    }

    public static final int a(long j6, long j10) {
        boolean zF = f(j6);
        if (zF != f(j10)) {
            if (zF) {
                return -1;
            }
            return 1;
        }
        return (int) Math.signum(d(j6) - d(j10));
    }
}
