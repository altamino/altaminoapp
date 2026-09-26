package g9;

import org.bouncycastle.pqc.math.linearalgebra.k;

/* JADX INFO: loaded from: classes8.dex */
public class e {
    public static final int DEFAULT_M = 11;
    public static final int DEFAULT_T = 50;
    private x8.c digest;
    private int fieldPoly;
    private int m;
    private int n;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f3229t;

    public e() {
        this(11, 50);
    }

    public e(int i10) {
        this(i10, (x8.c) null);
    }

    public e(int i10, int i11) {
        this(i10, i11, (x8.c) null);
    }

    public e(int i10, int i11, int i12) {
        this(i10, i11, i12, null);
    }

    public e(int i10, int i11, int i12, x8.c cVar) {
        this.m = i10;
        if (i10 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i10 > 32) {
            throw new IllegalArgumentException(" m is too large");
        }
        int i13 = 1 << i10;
        this.n = i13;
        this.f3229t = i11;
        if (i11 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i11 > i13) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        if (k.a(i12) != i10 || !k.d(i12)) {
            throw new IllegalArgumentException("polynomial is not a field polynomial for GF(2^m)");
        }
        this.fieldPoly = i12;
        this.digest = cVar;
    }

    public e(int i10, int i11, x8.c cVar) {
        if (i10 < 1) {
            throw new IllegalArgumentException("m must be positive");
        }
        if (i10 > 32) {
            throw new IllegalArgumentException("m is too large");
        }
        this.m = i10;
        int i12 = 1 << i10;
        this.n = i12;
        if (i11 < 0) {
            throw new IllegalArgumentException("t must be positive");
        }
        if (i11 > i12) {
            throw new IllegalArgumentException("t must be less than n = 2^m");
        }
        this.f3229t = i11;
        this.fieldPoly = k.c(i10);
        this.digest = cVar;
    }

    public e(int i10, x8.c cVar) {
        if (i10 < 1) {
            throw new IllegalArgumentException("key size must be positive");
        }
        this.m = 0;
        this.n = 1;
        while (true) {
            int i11 = this.n;
            if (i11 >= i10) {
                int i12 = i11 >>> 1;
                this.f3229t = i12;
                int i13 = this.m;
                this.f3229t = i12 / i13;
                this.fieldPoly = k.c(i13);
                this.digest = cVar;
                return;
            }
            this.n = i11 << 1;
            this.m++;
        }
    }

    public e(x8.c cVar) {
        this(11, 50, cVar);
    }
}
