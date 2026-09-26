package a8;

/* JADX INFO: loaded from: classes11.dex */
public final class c {
    private static final int e(int i10, int i11) {
        int i12 = i10 % i11;
        return i12 >= 0 ? i12 : i12 + i11;
    }

    private static final long f(long j6, long j10) {
        long j11 = j6 % j10;
        return j11 >= 0 ? j11 : j11 + j10;
    }

    public static final int c(int i10, int i11, int i12) {
        if (i12 > 0) {
            return i10 >= i11 ? i11 : i11 - a(i11, i10, i12);
        }
        if (i12 < 0) {
            return i10 <= i11 ? i11 : i11 + a(i10, i11, -i12);
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    public static final long d(long j6, long j10, long j11) {
        if (j11 > 0) {
            return j6 >= j10 ? j10 : j10 - b(j10, j6, j11);
        }
        if (j11 < 0) {
            return j6 <= j10 ? j10 : j10 + b(j6, j10, -j11);
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    private static final int a(int i10, int i11, int i12) {
        return e(e(i10, i12) - e(i11, i12), i12);
    }

    private static final long b(long j6, long j10, long j11) {
        return f(f(j6, j11) - f(j10, j11), j11);
    }
}
