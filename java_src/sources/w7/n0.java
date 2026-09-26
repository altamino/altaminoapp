package w7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class n0 {
    public static final double c(int i10) {
        return ((double) (Integer.MAX_VALUE & i10)) + (((double) ((i10 >>> 31) << 30)) * ((double) 2));
    }

    public static final double e(long j6) {
        return ((j6 >>> 11) * ((double) 2048)) + (j6 & 2047);
    }

    public static final int b(int i10, int i11) {
        return kotlin.jvm.internal.t.l(i10 ^ Integer.MIN_VALUE, i11 ^ Integer.MIN_VALUE);
    }

    public static final int d(long j6, long j10) {
        return kotlin.jvm.internal.t.m(j6 ^ Long.MIN_VALUE, j10 ^ Long.MIN_VALUE);
    }

    @NotNull
    public static final String f(long j6) {
        return g(j6, 10);
    }

    @NotNull
    public static final String g(long j6, int i10) {
        if (j6 >= 0) {
            String string = Long.toString(j6, kotlin.text.b.a(i10));
            kotlin.jvm.internal.t.i(string, "toString(...)");
            return string;
        }
        long j10 = i10;
        long j11 = ((j6 >>> 1) / j10) << 1;
        long j12 = j6 - (j11 * j10);
        if (j12 >= j10) {
            j12 -= j10;
            j11++;
        }
        StringBuilder sb = new StringBuilder();
        String string2 = Long.toString(j11, kotlin.text.b.a(i10));
        kotlin.jvm.internal.t.i(string2, "toString(...)");
        sb.append(string2);
        String string3 = Long.toString(j12, kotlin.text.b.a(i10));
        kotlin.jvm.internal.t.i(string3, "toString(...)");
        sb.append(string3);
        return sb.toString();
    }

    public static final int a(double d) {
        if (Double.isNaN(d) || d <= c(0)) {
            return 0;
        }
        if (d >= c(-1)) {
            return -1;
        }
        if (d <= 2.147483647E9d) {
            return d0.b((int) d);
        }
        return d0.b(d0.b((int) (d - ((double) Integer.MAX_VALUE))) + d0.b(Integer.MAX_VALUE));
    }
}
