package org.bouncycastle.math.ec;

import java.util.Hashtable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class f {
    protected static final org.bouncycastle.math.ec.d[] EMPTY_ZS = new org.bouncycastle.math.ec.d[0];
    protected org.bouncycastle.math.ec.c curve;
    protected Hashtable preCompTable;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected org.bouncycastle.math.ec.d f3299x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected org.bouncycastle.math.ec.d f3300y;
    protected org.bouncycastle.math.ec.d[] zs;

    public static abstract class a extends f {
        protected a(org.bouncycastle.math.ec.c cVar, org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2) {
            super(cVar, dVar, dVar2);
        }
    }

    public static abstract class b extends f {
        protected b(org.bouncycastle.math.ec.c cVar, org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2) {
            super(cVar, dVar, dVar2);
        }

        @Override // org.bouncycastle.math.ec.f
        protected boolean e() {
            return d().l();
        }

        protected b(org.bouncycastle.math.ec.c cVar, org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2, org.bouncycastle.math.ec.d[] dVarArr) {
            super(cVar, dVar, dVar2, dVarArr);
        }
    }

    public static class c extends a {
        c(org.bouncycastle.math.ec.c cVar, org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2) {
            super(cVar, dVar, dVar2);
        }

        @Override // org.bouncycastle.math.ec.f
        protected boolean e() {
            org.bouncycastle.math.ec.d dVarJ = j();
            if (dVarJ.h()) {
                return false;
            }
            org.bouncycastle.math.ec.d dVarK = k();
            int iG = g();
            if (iG == 5 || iG == 6) {
                return dVarK.l() != dVarJ.l();
            }
            return dVarK.c(dVarJ).l();
        }

        @Override // org.bouncycastle.math.ec.f
        public org.bouncycastle.math.ec.d m() {
            int iG = g();
            if (iG != 5 && iG != 6) {
                return this.f3300y;
            }
            org.bouncycastle.math.ec.d dVar = this.f3299x;
            org.bouncycastle.math.ec.d dVar2 = this.f3300y;
            if (o() || dVar.h()) {
                return dVar2;
            }
            org.bouncycastle.math.ec.d dVarI = dVar2.a(dVar).i(dVar);
            if (6 != iG) {
                return dVarI;
            }
            org.bouncycastle.math.ec.d dVar3 = this.zs[0];
            return !dVar3.g() ? dVarI.c(dVar3) : dVarI;
        }
    }

    public static class d extends b {
        d(org.bouncycastle.math.ec.c cVar, org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2) {
            super(cVar, dVar, dVar2);
        }

        @Override // org.bouncycastle.math.ec.f
        public org.bouncycastle.math.ec.d n(int i10) {
            return (i10 == 1 && 4 == g()) ? t() : super.n(i10);
        }

        protected org.bouncycastle.math.ec.d s(org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2) {
            org.bouncycastle.math.ec.d dVarF = f().f();
            if (dVarF.h() || dVar.g()) {
                return dVarF;
            }
            if (dVar2 == null) {
                dVar2 = dVar.k();
            }
            org.bouncycastle.math.ec.d dVarK = dVar2.k();
            org.bouncycastle.math.ec.d dVarJ = dVarF.j();
            return dVarJ.b() < dVarF.b() ? dVarK.i(dVarJ).j() : dVarK.i(dVarF);
        }

        protected org.bouncycastle.math.ec.d t() {
            org.bouncycastle.math.ec.d[] dVarArr = this.zs;
            org.bouncycastle.math.ec.d dVar = dVarArr[1];
            if (dVar != null) {
                return dVar;
            }
            org.bouncycastle.math.ec.d dVarS = s(dVarArr[0], null);
            dVarArr[1] = dVarS;
            return dVarS;
        }

        d(org.bouncycastle.math.ec.c cVar, org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2, org.bouncycastle.math.ec.d[] dVarArr) {
            super(cVar, dVar, dVar2, dVarArr);
        }
    }

    protected f(org.bouncycastle.math.ec.c cVar, org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2) {
        this(cVar, dVar, dVar2, i(cVar));
    }

    protected static org.bouncycastle.math.ec.d[] i(org.bouncycastle.math.ec.c cVar) {
        int iH = cVar == null ? 0 : cVar.h();
        if (iH == 0 || iH == 5) {
            return EMPTY_ZS;
        }
        org.bouncycastle.math.ec.d dVarE = cVar.e(org.bouncycastle.math.ec.b.ONE);
        if (iH != 1 && iH != 2) {
            if (iH == 3) {
                return new org.bouncycastle.math.ec.d[]{dVarE, dVarE, dVarE};
            }
            if (iH == 4) {
                return new org.bouncycastle.math.ec.d[]{dVarE, cVar.f()};
            }
            if (iH != 6) {
                throw new IllegalArgumentException("unknown coordinate system");
            }
        }
        return new org.bouncycastle.math.ec.d[]{dVarE};
    }

    protected void a() {
        if (!p()) {
            throw new IllegalStateException("point not in normal form");
        }
    }

    protected f b(org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2) {
        return f().c(j().i(dVar), k().i(dVar2));
    }

    public boolean c(f fVar) {
        f fVarQ;
        if (fVar == null) {
            return false;
        }
        org.bouncycastle.math.ec.c cVarF = f();
        org.bouncycastle.math.ec.c cVarF2 = fVar.f();
        boolean z6 = cVarF == null;
        boolean z10 = cVarF2 == null;
        boolean zO = o();
        boolean zO2 = fVar.o();
        if (zO || zO2) {
            if (zO && zO2) {
                return z6 || z10 || cVarF.d(cVarF2);
            }
            return false;
        }
        if (z6 && z10) {
            fVarQ = this;
        } else if (z6) {
            fVar = fVar.q();
            fVarQ = this;
        } else if (z10) {
            fVarQ = q();
        } else {
            if (!cVarF.d(cVarF2)) {
                return false;
            }
            f[] fVarArr = {this, cVarF.l(fVar)};
            cVarF.m(fVarArr);
            fVarQ = fVarArr[0];
            fVar = fVarArr[1];
        }
        return fVarQ.l().equals(fVar.l()) && fVarQ.m().equals(fVar.m());
    }

    public org.bouncycastle.math.ec.d d() {
        a();
        return m();
    }

    protected abstract boolean e();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            return c((f) obj);
        }
        return false;
    }

    public org.bouncycastle.math.ec.c f() {
        return this.curve;
    }

    protected int g() {
        org.bouncycastle.math.ec.c cVar = this.curve;
        if (cVar == null) {
            return 0;
        }
        return cVar.h();
    }

    public byte[] h(boolean z6) {
        if (o()) {
            return new byte[1];
        }
        f fVarQ = q();
        byte[] bArrD = fVarQ.l().d();
        if (z6) {
            byte[] bArr = new byte[bArrD.length + 1];
            bArr[0] = (byte) (fVarQ.e() ? 3 : 2);
            System.arraycopy(bArrD, 0, bArr, 1, bArrD.length);
            return bArr;
        }
        byte[] bArrD2 = fVarQ.m().d();
        byte[] bArr2 = new byte[bArrD.length + bArrD2.length + 1];
        bArr2[0] = 4;
        System.arraycopy(bArrD, 0, bArr2, 1, bArrD.length);
        System.arraycopy(bArrD2, 0, bArr2, bArrD.length + 1, bArrD2.length);
        return bArr2;
    }

    public int hashCode() {
        org.bouncycastle.math.ec.c cVarF = f();
        int i10 = cVarF == null ? 0 : ~cVarF.hashCode();
        if (o()) {
            return i10;
        }
        f fVarQ = q();
        return (i10 ^ (fVarQ.l().hashCode() * 17)) ^ (fVarQ.m().hashCode() * 257);
    }

    public final org.bouncycastle.math.ec.d j() {
        return this.f3299x;
    }

    public final org.bouncycastle.math.ec.d k() {
        return this.f3300y;
    }

    public org.bouncycastle.math.ec.d l() {
        return this.f3299x;
    }

    public org.bouncycastle.math.ec.d m() {
        return this.f3300y;
    }

    public org.bouncycastle.math.ec.d n(int i10) {
        if (i10 >= 0) {
            org.bouncycastle.math.ec.d[] dVarArr = this.zs;
            if (i10 < dVarArr.length) {
                return dVarArr[i10];
            }
        }
        return null;
    }

    public boolean o() {
        if (this.f3299x != null && this.f3300y != null) {
            org.bouncycastle.math.ec.d[] dVarArr = this.zs;
            if (dVarArr.length <= 0 || !dVarArr[0].h()) {
                return false;
            }
        }
        return true;
    }

    public boolean p() {
        int iG = g();
        return iG == 0 || iG == 5 || o() || this.zs[0].g();
    }

    public f q() {
        int iG;
        if (o() || (iG = g()) == 0 || iG == 5) {
            return this;
        }
        org.bouncycastle.math.ec.d dVarN = n(0);
        if (dVarN.g()) {
            return this;
        }
        if (this.curve == null) {
            throw new IllegalStateException("Detached points must be in affine coordinates");
        }
        org.bouncycastle.math.ec.d dVarO = this.curve.o(x8.b.b());
        return r(dVarN.i(dVarO).f().i(dVarO));
    }

    f r(org.bouncycastle.math.ec.d dVar) {
        int iG = g();
        if (iG != 1) {
            if (iG == 2 || iG == 3 || iG == 4) {
                org.bouncycastle.math.ec.d dVarK = dVar.k();
                return b(dVarK, dVarK.i(dVar));
            }
            if (iG != 6) {
                throw new IllegalStateException("not a projective coordinate system");
            }
        }
        return b(dVar, dVar);
    }

    public String toString() {
        if (o()) {
            return "INF";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        stringBuffer.append(j());
        stringBuffer.append(kotlinx.serialization.json.internal.b.COMMA);
        stringBuffer.append(k());
        for (int i10 = 0; i10 < this.zs.length; i10++) {
            stringBuffer.append(kotlinx.serialization.json.internal.b.COMMA);
            stringBuffer.append(this.zs[i10]);
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    protected f(org.bouncycastle.math.ec.c cVar, org.bouncycastle.math.ec.d dVar, org.bouncycastle.math.ec.d dVar2, org.bouncycastle.math.ec.d[] dVarArr) {
        this.preCompTable = null;
        this.curve = cVar;
        this.f3299x = dVar;
        this.f3300y = dVar2;
        this.zs = dVarArr;
    }
}
