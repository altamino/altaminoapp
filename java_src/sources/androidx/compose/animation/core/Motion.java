package androidx.compose.animation.core;

import kotlin.jvm.internal.m;

/* JADX INFO: loaded from: classes9.dex */
public final class Motion {
    private final long packedValue;

    public static long a(long j6) {
        return j6;
    }

    public static boolean b(long j6, Object obj) {
        return (obj instanceof Motion) && j6 == ((Motion) obj).g();
    }

    public static int e(long j6) {
        return i.a.a(j6);
    }

    public static String f(long j6) {
        return "Motion(packedValue=" + j6 + ')';
    }

    public boolean equals(Object obj) {
        return b(this.packedValue, obj);
    }

    public final /* synthetic */ long g() {
        return this.packedValue;
    }

    public int hashCode() {
        return e(this.packedValue);
    }

    public String toString() {
        return f(this.packedValue);
    }

    public static final float c(long j6) {
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 >> 32));
    }

    public static final float d(long j6) {
        m mVar = m.INSTANCE;
        return Float.intBitsToFloat((int) (j6 & 4294967295L));
    }
}
