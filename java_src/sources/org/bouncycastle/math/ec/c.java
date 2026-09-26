package org.bouncycastle.math.ec;

import java.math.BigInteger;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {
    public static final int COORD_AFFINE = 0;
    public static final int COORD_HOMOGENEOUS = 1;
    public static final int COORD_JACOBIAN = 2;
    public static final int COORD_JACOBIAN_CHUDNOVSKY = 3;
    public static final int COORD_JACOBIAN_MODIFIED = 4;
    public static final int COORD_LAMBDA_AFFINE = 5;
    public static final int COORD_LAMBDA_PROJECTIVE = 6;
    public static final int COORD_SKEWED = 7;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected org.bouncycastle.math.ec.d f3293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected org.bouncycastle.math.ec.d f3294b;
    protected BigInteger cofactor;
    protected int coord = 0;
    protected c9.a endomorphism;
    protected org.bouncycastle.math.field.a field;
    protected e multiplier;
    protected BigInteger order;

    public static abstract class a extends c {
        private BigInteger[] si;

        protected a(int i10, int i11, int i12, int i13) {
            super(p(i10, i11, i12, i13));
            this.si = null;
        }

        private static org.bouncycastle.math.field.a p(int i10, int i11, int i12, int i13) {
            if (i11 == 0) {
                throw new IllegalArgumentException("k1 must be > 0");
            }
            if (i12 == 0) {
                if (i13 == 0) {
                    return org.bouncycastle.math.field.b.a(new int[]{0, i11, i10});
                }
                throw new IllegalArgumentException("k3 must be 0 if k2 == 0");
            }
            if (i12 <= i11) {
                throw new IllegalArgumentException("k2 must be > k1");
            }
            if (i13 > i12) {
                return org.bouncycastle.math.field.b.a(new int[]{0, i11, i12, i13, i10});
            }
            throw new IllegalArgumentException("k3 must be > k2");
        }

        private static BigInteger q(SecureRandom secureRandom, int i10) {
            BigInteger bigIntegerC;
            do {
                bigIntegerC = org.bouncycastle.util.b.c(i10, secureRandom);
            } while (bigIntegerC.signum() <= 0);
            return bigIntegerC;
        }

        @Override // org.bouncycastle.math.ec.c
        public f b(BigInteger bigInteger, BigInteger bigInteger2) {
            org.bouncycastle.math.ec.d dVarE = e(bigInteger);
            org.bouncycastle.math.ec.d dVarE2 = e(bigInteger2);
            int iH = h();
            if (iH == 5 || iH == 6) {
                if (!dVarE.h()) {
                    dVarE2 = dVarE2.c(dVarE).a(dVarE);
                } else if (!dVarE2.k().equals(g())) {
                    throw new IllegalArgumentException();
                }
            }
            return c(dVarE, dVarE2);
        }

        @Override // org.bouncycastle.math.ec.c
        public org.bouncycastle.math.ec.d o(SecureRandom secureRandom) {
            int iJ = j();
            return e(q(secureRandom, iJ)).i(e(q(secureRandom, iJ)));
        }
    }

    public static abstract class b extends c {
        protected b(BigInteger bigInteger) {
            super(org.bouncycastle.math.field.b.b(bigInteger));
        }

        private static BigInteger p(SecureRandom secureRandom, BigInteger bigInteger) {
            while (true) {
                BigInteger bigIntegerC = org.bouncycastle.util.b.c(bigInteger.bitLength(), secureRandom);
                if (bigIntegerC.signum() > 0 && bigIntegerC.compareTo(bigInteger) < 0) {
                    return bigIntegerC;
                }
            }
        }

        @Override // org.bouncycastle.math.ec.c
        public org.bouncycastle.math.ec.d o(SecureRandom secureRandom) {
            BigInteger bigIntegerB = i().b();
            return e(p(secureRandom, bigIntegerB)).i(e(p(secureRandom, bigIntegerB)));
        }
    }

    /* JADX INFO: renamed from: org.bouncycastle.math.ec.c$c, reason: collision with other inner class name */
    public static class C0475c extends a {
        private static final int F2M_DEFAULT_COORDS = 6;
        private f.c infinity;
        private int k1;

        /* JADX INFO: renamed from: k2, reason: collision with root package name */
        private int f3295k2;

        /* JADX INFO: renamed from: k3, reason: collision with root package name */
        private int f3296k3;
        private int m;

        public C0475c(int i10, int i11, int i12, int i13, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i10, i11, i12, i13, bigInteger, bigInteger2, null, null);
        }

        @Override // org.bouncycastle.math.ec.c
        protected f c(org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2) {
            return new f.c(this, dVar, dVar2);
        }

        @Override // org.bouncycastle.math.ec.c
        public org.bouncycastle.math.ec.d e(BigInteger bigInteger) {
            return new org.bouncycastle.math.ec.d.c(this.m, this.k1, this.f3295k2, this.f3296k3, bigInteger);
        }

        @Override // org.bouncycastle.math.ec.c
        public int j() {
            return this.m;
        }

        @Override // org.bouncycastle.math.ec.c
        public f k() {
            return this.infinity;
        }

        public C0475c(int i10, int i11, int i12, int i13, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(i10, i11, i12, i13);
            this.m = i10;
            this.k1 = i11;
            this.f3295k2 = i12;
            this.f3296k3 = i13;
            this.order = bigInteger3;
            this.cofactor = bigInteger4;
            this.infinity = new f.c(this, null, null);
            this.f3293a = e(bigInteger);
            this.f3294b = e(bigInteger2);
            this.coord = 6;
        }

        public C0475c(int i10, int i11, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i10, i11, 0, 0, bigInteger, bigInteger2, null, null);
        }

        public C0475c(int i10, int i11, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this(i10, i11, 0, 0, bigInteger, bigInteger2, bigInteger3, bigInteger4);
        }
    }

    public static class d extends b {
        private static final int FP_DEFAULT_COORDS = 4;
        f.d infinity;
        BigInteger q;
        BigInteger r;

        public d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this(bigInteger, bigInteger2, bigInteger3, null, null);
        }

        @Override // org.bouncycastle.math.ec.c
        protected f c(org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2) {
            return new f.d(this, dVar, dVar2);
        }

        @Override // org.bouncycastle.math.ec.c
        public org.bouncycastle.math.ec.d e(BigInteger bigInteger) {
            return new org.bouncycastle.math.ec.d.C0476d(this.q, this.r, bigInteger);
        }

        @Override // org.bouncycastle.math.ec.c
        public f k() {
            return this.infinity;
        }

        @Override // org.bouncycastle.math.ec.c
        public f l(f fVar) {
            int iH;
            return (this == fVar.f() || h() != 2 || fVar.o() || !((iH = fVar.f().h()) == 2 || iH == 3 || iH == 4)) ? super.l(fVar) : new f.d(this, e(fVar.f3299x.m()), e(fVar.f3300y.m()), new org.bouncycastle.math.ec.d[]{e(fVar.zs[0].m())});
        }

        public d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
            super(bigInteger);
            this.q = bigInteger;
            this.r = org.bouncycastle.math.ec.d.C0476d.n(bigInteger);
            this.infinity = new f.d(this, null, null);
            this.f3293a = e(bigInteger2);
            this.f3294b = e(bigInteger3);
            this.order = bigInteger4;
            this.cofactor = bigInteger5;
            this.coord = 4;
        }
    }

    protected c(org.bouncycastle.math.field.a aVar) {
        this.field = aVar;
    }

    protected void a(f[] fVarArr, int i10, int i11) {
        if (fVarArr == null) {
            throw new IllegalArgumentException("'points' cannot be null");
        }
        if (i10 < 0 || i11 < 0 || i10 > fVarArr.length - i11) {
            throw new IllegalArgumentException("invalid range specified for 'points'");
        }
        for (int i12 = 0; i12 < i11; i12++) {
            f fVar = fVarArr[i10 + i12];
            if (fVar != null && this != fVar.f()) {
                throw new IllegalArgumentException("'points' entries must be null or on this curve");
            }
        }
    }

    public f b(BigInteger bigInteger, BigInteger bigInteger2) {
        return c(e(bigInteger), e(bigInteger2));
    }

    protected abstract f c(org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2);

    public boolean d(c cVar) {
        return this == cVar || (cVar != null && i().equals(cVar.i()) && f().m().equals(cVar.f().m()) && g().m().equals(cVar.g().m()));
    }

    public abstract org.bouncycastle.math.ec.d e(BigInteger bigInteger);

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof c) && d((c) obj));
    }

    public org.bouncycastle.math.ec.d f() {
        return this.f3293a;
    }

    public org.bouncycastle.math.ec.d g() {
        return this.f3294b;
    }

    public int h() {
        return this.coord;
    }

    public int hashCode() {
        return (i().hashCode() ^ org.bouncycastle.util.d.b(f().m().hashCode(), 8)) ^ org.bouncycastle.util.d.b(g().m().hashCode(), 16);
    }

    public org.bouncycastle.math.field.a i() {
        return this.field;
    }

    public abstract int j();

    public abstract f k();

    public f l(f fVar) {
        if (this == fVar.f()) {
            return fVar;
        }
        if (fVar.o()) {
            return k();
        }
        f fVarQ = fVar.q();
        return b(fVarQ.l().m(), fVarQ.m().m());
    }

    public void m(f[] fVarArr) {
        n(fVarArr, 0, fVarArr.length, null);
    }

    public void n(f[] fVarArr, int i10, int i11, org.bouncycastle.math.ec.d dVar) {
        a(fVarArr, i10, i11);
        int iH = h();
        if (iH == 0 || iH == 5) {
            if (dVar != null) {
                throw new IllegalArgumentException("'iso' not valid for affine coordinates");
            }
            return;
        }
        org.bouncycastle.math.ec.d[] dVarArr = new org.bouncycastle.math.ec.d[i11];
        int[] iArr = new int[i11];
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = i10 + i13;
            f fVar = fVarArr[i14];
            if (fVar != null && (dVar != null || !fVar.p())) {
                dVarArr[i12] = fVar.n(0);
                iArr[i12] = i14;
                i12++;
            }
        }
        if (i12 == 0) {
            return;
        }
        org.bouncycastle.math.ec.a.e(dVarArr, 0, i12, dVar);
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = iArr[i15];
            fVarArr[i16] = fVarArr[i16].r(dVarArr[i15]);
        }
    }

    public abstract org.bouncycastle.math.ec.d o(SecureRandom secureRandom);
}
