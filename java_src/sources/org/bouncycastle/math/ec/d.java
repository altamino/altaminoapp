package org.bouncycastle.math.ec;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes8.dex */
public abstract class d implements org.bouncycastle.math.ec.b {

    public static abstract class a extends d {
    }

    public static abstract class b extends d {
    }

    public static class c extends a {
        public static final int GNB = 1;
        public static final int PPB = 3;
        public static final int TPB = 2;
        private int[] ks;
        private int m;
        private int representation;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        g f3297x;

        c(int i10, int i11, int i12, int i13, BigInteger bigInteger) {
            if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > i10) {
                throw new IllegalArgumentException("x value invalid in F2m field element");
            }
            if (i12 == 0 && i13 == 0) {
                this.representation = 2;
                this.ks = new int[]{i11};
            } else {
                if (i12 >= i13) {
                    throw new IllegalArgumentException("k2 must be smaller than k3");
                }
                if (i12 <= 0) {
                    throw new IllegalArgumentException("k2 must be larger than 0");
                }
                this.representation = 3;
                this.ks = new int[]{i11, i12, i13};
            }
            this.m = i10;
            this.f3297x = new g(bigInteger);
        }

        @Override // org.bouncycastle.math.ec.d
        public d a(d dVar) {
            g gVar = (g) this.f3297x.clone();
            gVar.f(((c) dVar).f3297x, 0);
            return new c(this.m, this.ks, gVar);
        }

        @Override // org.bouncycastle.math.ec.d
        public int b() {
            return this.f3297x.j();
        }

        @Override // org.bouncycastle.math.ec.d
        public d c(d dVar) {
            return i(dVar.f());
        }

        @Override // org.bouncycastle.math.ec.d
        public int e() {
            return this.m;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.m == cVar.m && this.representation == cVar.representation && org.bouncycastle.util.a.c(this.ks, cVar.ks) && this.f3297x.equals(cVar.f3297x);
        }

        @Override // org.bouncycastle.math.ec.d
        public d f() {
            int i10 = this.m;
            int[] iArr = this.ks;
            return new c(i10, iArr, this.f3297x.t(i10, iArr));
        }

        @Override // org.bouncycastle.math.ec.d
        public boolean g() {
            return this.f3297x.r();
        }

        @Override // org.bouncycastle.math.ec.d
        public boolean h() {
            return this.f3297x.s();
        }

        public int hashCode() {
            return (this.f3297x.hashCode() ^ this.m) ^ org.bouncycastle.util.a.p(this.ks);
        }

        @Override // org.bouncycastle.math.ec.d
        public d i(d dVar) {
            int i10 = this.m;
            int[] iArr = this.ks;
            return new c(i10, iArr, this.f3297x.u(((c) dVar).f3297x, i10, iArr));
        }

        @Override // org.bouncycastle.math.ec.d
        public d j() {
            return this;
        }

        @Override // org.bouncycastle.math.ec.d
        public d k() {
            int i10 = this.m;
            int[] iArr = this.ks;
            return new c(i10, iArr, this.f3297x.v(i10, iArr));
        }

        @Override // org.bouncycastle.math.ec.d
        public boolean l() {
            return this.f3297x.H();
        }

        @Override // org.bouncycastle.math.ec.d
        public BigInteger m() {
            return this.f3297x.I();
        }

        c(int i10, int[] iArr, g gVar) {
            this.m = i10;
            this.representation = iArr.length == 1 ? 2 : 3;
            this.ks = iArr;
            this.f3297x = gVar;
        }
    }

    /* JADX INFO: renamed from: org.bouncycastle.math.ec.d$d, reason: collision with other inner class name */
    public static class C0476d extends b {
        BigInteger q;
        BigInteger r;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        BigInteger f3298x;

        C0476d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            if (bigInteger3 == null || bigInteger3.signum() < 0 || bigInteger3.compareTo(bigInteger) >= 0) {
                throw new IllegalArgumentException("x value invalid in Fp field element");
            }
            this.q = bigInteger;
            this.r = bigInteger2;
            this.f3298x = bigInteger3;
        }

        static BigInteger n(BigInteger bigInteger) {
            int iBitLength = bigInteger.bitLength();
            if (iBitLength < 96 || bigInteger.shiftRight(iBitLength - 64).longValue() != -1) {
                return null;
            }
            return org.bouncycastle.math.ec.b.ONE.shiftLeft(iBitLength).subtract(bigInteger);
        }

        @Override // org.bouncycastle.math.ec.d
        public d a(d dVar) {
            return new C0476d(this.q, this.r, o(this.f3298x, dVar.m()));
        }

        @Override // org.bouncycastle.math.ec.d
        public d c(d dVar) {
            return new C0476d(this.q, this.r, q(this.f3298x, p(dVar.m())));
        }

        @Override // org.bouncycastle.math.ec.d
        public int e() {
            return this.q.bitLength();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0476d)) {
                return false;
            }
            C0476d c0476d = (C0476d) obj;
            return this.q.equals(c0476d.q) && this.f3298x.equals(c0476d.f3298x);
        }

        @Override // org.bouncycastle.math.ec.d
        public d f() {
            return new C0476d(this.q, this.r, p(this.f3298x));
        }

        public int hashCode() {
            return this.q.hashCode() ^ this.f3298x.hashCode();
        }

        @Override // org.bouncycastle.math.ec.d
        public d i(d dVar) {
            return new C0476d(this.q, this.r, q(this.f3298x, dVar.m()));
        }

        @Override // org.bouncycastle.math.ec.d
        public d j() {
            if (this.f3298x.signum() == 0) {
                return this;
            }
            BigInteger bigInteger = this.q;
            return new C0476d(bigInteger, this.r, bigInteger.subtract(this.f3298x));
        }

        @Override // org.bouncycastle.math.ec.d
        public d k() {
            BigInteger bigInteger = this.q;
            BigInteger bigInteger2 = this.r;
            BigInteger bigInteger3 = this.f3298x;
            return new C0476d(bigInteger, bigInteger2, q(bigInteger3, bigInteger3));
        }

        @Override // org.bouncycastle.math.ec.d
        public BigInteger m() {
            return this.f3298x;
        }

        protected BigInteger o(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger bigIntegerAdd = bigInteger.add(bigInteger2);
            return bigIntegerAdd.compareTo(this.q) >= 0 ? bigIntegerAdd.subtract(this.q) : bigIntegerAdd;
        }

        protected BigInteger p(BigInteger bigInteger) {
            return org.bouncycastle.util.b.d(this.q, bigInteger);
        }

        protected BigInteger q(BigInteger bigInteger, BigInteger bigInteger2) {
            return r(bigInteger.multiply(bigInteger2));
        }

        protected BigInteger r(BigInteger bigInteger) {
            if (this.r == null) {
                return bigInteger.mod(this.q);
            }
            boolean z6 = bigInteger.signum() < 0;
            if (z6) {
                bigInteger = bigInteger.abs();
            }
            int iBitLength = this.q.bitLength();
            boolean zEquals = this.r.equals(org.bouncycastle.math.ec.b.ONE);
            while (bigInteger.bitLength() > iBitLength + 1) {
                BigInteger bigIntegerShiftRight = bigInteger.shiftRight(iBitLength);
                BigInteger bigIntegerSubtract = bigInteger.subtract(bigIntegerShiftRight.shiftLeft(iBitLength));
                if (!zEquals) {
                    bigIntegerShiftRight = bigIntegerShiftRight.multiply(this.r);
                }
                bigInteger = bigIntegerShiftRight.add(bigIntegerSubtract);
            }
            while (bigInteger.compareTo(this.q) >= 0) {
                bigInteger = bigInteger.subtract(this.q);
            }
            return (!z6 || bigInteger.signum() == 0) ? bigInteger : this.q.subtract(bigInteger);
        }
    }

    public abstract d a(d dVar);

    public int b() {
        return m().bitLength();
    }

    public abstract d c(d dVar);

    public byte[] d() {
        return org.bouncycastle.util.b.a((e() + 7) / 8, m());
    }

    public abstract int e();

    public abstract d f();

    public boolean g() {
        return b() == 1;
    }

    public boolean h() {
        return m().signum() == 0;
    }

    public abstract d i(d dVar);

    public abstract d j();

    public abstract d k();

    public boolean l() {
        return m().testBit(0);
    }

    public abstract BigInteger m();

    public String toString() {
        return m().toString(16);
    }
}
