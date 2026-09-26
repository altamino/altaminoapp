package androidx.compose.animation.core;

import kotlin.jvm.internal.k;

/* JADX INFO: loaded from: classes4.dex */
public final class StartOffset {
    private final long value;

    public static long a(int i10, int i11) {
        return b(i10 * i11);
    }

    private static long b(long j6) {
        return j6;
    }

    public static boolean d(long j6, Object obj) {
        return (obj instanceof StartOffset) && j6 == ((StartOffset) obj).h();
    }

    public static final boolean e(long j6, long j10) {
        return j6 == j10;
    }

    public static int f(long j6) {
        return i.a.a(j6);
    }

    public static String g(long j6) {
        return "StartOffset(value=" + j6 + ')';
    }

    public boolean equals(Object obj) {
        return d(this.value, obj);
    }

    public final /* synthetic */ long h() {
        return this.value;
    }

    public int hashCode() {
        return f(this.value);
    }

    public String toString() {
        return g(this.value);
    }

    public static /* synthetic */ long c(int i10, int i11, int i12, k kVar) {
        if ((i12 & 2) != 0) {
            i11 = StartOffsetType.Companion.a();
        }
        return a(i10, i11);
    }
}
