package com.google.android.exoplayer2;

import android.util.Pair;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a extends z3 {
    private final int childCount;
    private final boolean isAtomic;
    private final com.google.android.exoplayer2.source.y0 shuffleOrder;

    protected abstract int A(int i10);

    protected abstract Object D(int i10);

    protected abstract int F(int i10);

    protected abstract int G(int i10);

    protected abstract z3 J(int i10);

    protected abstract int y(Object obj);

    protected abstract int z(int i10);

    public static Object B(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object C(Object obj) {
        return ((Pair) obj).first;
    }

    private int H(int i10, boolean z6) {
        if (z6) {
            return this.shuffleOrder.getNextIndex(i10);
        }
        if (i10 < this.childCount - 1) {
            return i10 + 1;
        }
        return -1;
    }

    private int I(int i10, boolean z6) {
        if (z6) {
            return this.shuffleOrder.getPreviousIndex(i10);
        }
        if (i10 > 0) {
            return i10 - 1;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.z3
    public int e(boolean z6) {
        if (this.childCount == 0) {
            return -1;
        }
        if (this.isAtomic) {
            z6 = false;
        }
        int firstIndex = z6 ? this.shuffleOrder.getFirstIndex() : 0;
        while (J(firstIndex).u()) {
            firstIndex = H(firstIndex, z6);
            if (firstIndex == -1) {
                return -1;
            }
        }
        return G(firstIndex) + J(firstIndex).e(z6);
    }

    @Override // com.google.android.exoplayer2.z3
    public final int f(Object obj) {
        int iF;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object objC = C(obj);
        Object objB = B(obj);
        int iY = y(objC);
        if (iY == -1 || (iF = J(iY).f(objB)) == -1) {
            return -1;
        }
        return F(iY) + iF;
    }

    @Override // com.google.android.exoplayer2.z3
    public int g(boolean z6) {
        int i10 = this.childCount;
        if (i10 == 0) {
            return -1;
        }
        if (this.isAtomic) {
            z6 = false;
        }
        int lastIndex = z6 ? this.shuffleOrder.getLastIndex() : i10 - 1;
        while (J(lastIndex).u()) {
            lastIndex = I(lastIndex, z6);
            if (lastIndex == -1) {
                return -1;
            }
        }
        return G(lastIndex) + J(lastIndex).g(z6);
    }

    @Override // com.google.android.exoplayer2.z3
    public int i(int i10, int i11, boolean z6) {
        if (this.isAtomic) {
            if (i11 == 1) {
                i11 = 2;
            }
            z6 = false;
        }
        int iA = A(i10);
        int iG = G(iA);
        int i12 = J(iA).i(i10 - iG, i11 != 2 ? i11 : 0, z6);
        if (i12 != -1) {
            return iG + i12;
        }
        int iH = H(iA, z6);
        while (iH != -1 && J(iH).u()) {
            iH = H(iH, z6);
        }
        if (iH != -1) {
            return G(iH) + J(iH).e(z6);
        }
        if (i11 == 2) {
            return e(z6);
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.z3
    public int p(int i10, int i11, boolean z6) {
        if (this.isAtomic) {
            if (i11 == 1) {
                i11 = 2;
            }
            z6 = false;
        }
        int iA = A(i10);
        int iG = G(iA);
        int iP = J(iA).p(i10 - iG, i11 != 2 ? i11 : 0, z6);
        if (iP != -1) {
            return iG + iP;
        }
        int I = I(iA, z6);
        while (I != -1 && J(I).u()) {
            I = I(I, z6);
        }
        if (I != -1) {
            return G(I) + J(I).g(z6);
        }
        if (i11 == 2) {
            return g(z6);
        }
        return -1;
    }

    public a(boolean z6, com.google.android.exoplayer2.source.y0 y0Var) {
        this.isAtomic = z6;
        this.shuffleOrder = y0Var;
        this.childCount = y0Var.getLength();
    }

    public static Object E(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    @Override // com.google.android.exoplayer2.z3
    public final z3.b k(int i10, z3.b bVar, boolean z6) {
        int iZ = z(i10);
        int iG = G(iZ);
        J(iZ).k(i10 - F(iZ), bVar, z6);
        bVar.windowIndex += iG;
        if (z6) {
            bVar.uid = E(D(iZ), com.google.android.exoplayer2.util.a.e(bVar.uid));
        }
        return bVar;
    }

    @Override // com.google.android.exoplayer2.z3
    public final z3.b l(Object obj, z3.b bVar) {
        Object objC = C(obj);
        Object objB = B(obj);
        int iY = y(objC);
        int iG = G(iY);
        J(iY).l(objB, bVar);
        bVar.windowIndex += iG;
        bVar.uid = obj;
        return bVar;
    }

    @Override // com.google.android.exoplayer2.z3
    public final Object q(int i10) {
        int iZ = z(i10);
        return E(D(iZ), J(iZ).q(i10 - F(iZ)));
    }

    @Override // com.google.android.exoplayer2.z3
    public final z3.d s(int i10, z3.d dVar, long j6) {
        int iA = A(i10);
        int iG = G(iA);
        int iF = F(iA);
        J(iA).s(i10 - iG, dVar, j6);
        Object objD = D(iA);
        if (!z3.d.SINGLE_WINDOW_UID.equals(dVar.uid)) {
            objD = E(objD, dVar.uid);
        }
        dVar.uid = objD;
        dVar.firstPeriodIndex += iF;
        dVar.lastPeriodIndex += iF;
        return dVar;
    }
}
