package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Iterator;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d0 extends z implements Iterable {
    static final m0 TYPE = new a(d0.class, 17);
    protected final f[] elements;
    protected final boolean isSorted;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z c(c0 c0Var) {
            return c0Var.E();
        }
    }

    protected d0() {
        this.elements = g.EMPTY_ELEMENTS;
        this.isSorted = true;
    }

    private static byte[] w(f fVar) {
        try {
            return fVar.g().a("DER");
        } catch (IOException unused) {
            throw new IllegalArgumentException("cannot encode object added to SET");
        }
    }

    public static d0 x(h0 h0Var, boolean z6) {
        return (d0) TYPE.e(h0Var, z6);
    }

    private static boolean y(byte[] bArr, byte[] bArr2) {
        int i10 = bArr[0] & (-33);
        int i11 = bArr2[0] & (-33);
        if (i10 != i11) {
            return i10 < i11;
        }
        int iMin = Math.min(bArr.length, bArr2.length) - 1;
        for (int i12 = 1; i12 < iMin; i12++) {
            byte b7 = bArr[i12];
            byte b10 = bArr2[i12];
            if (b7 != b10) {
                return (b7 & 255) < (b10 & 255);
            }
        }
        return (bArr[iMin] & 255) <= (bArr2[iMin] & 255);
    }

    private static void z(f[] fVarArr) {
        int i10;
        int length = fVarArr.length;
        if (length < 2) {
            return;
        }
        f fVar = fVarArr[0];
        f fVar2 = fVarArr[1];
        byte[] bArrW = w(fVar);
        byte[] bArrW2 = w(fVar2);
        if (y(bArrW2, bArrW)) {
            fVar2 = fVar;
            fVar = fVar2;
            bArrW2 = bArrW;
            bArrW = bArrW2;
        }
        for (int i11 = 2; i11 < length; i11++) {
            f fVar3 = fVarArr[i11];
            byte[] bArrW3 = w(fVar3);
            if (y(bArrW2, bArrW3)) {
                fVarArr[i11 - 2] = fVar;
                fVar = fVar2;
                bArrW = bArrW2;
                fVar2 = fVar3;
                bArrW2 = bArrW3;
            } else if (y(bArrW, bArrW3)) {
                fVarArr[i11 - 2] = fVar;
                fVar = fVar3;
                bArrW = bArrW3;
            } else {
                int i12 = i11 - 1;
                while (true) {
                    i10 = i12 - 1;
                    if (i10 <= 0) {
                        break;
                    }
                    f fVar4 = fVarArr[i12 - 2];
                    if (y(w(fVar4), bArrW3)) {
                        break;
                    }
                    fVarArr[i10] = fVar4;
                    i12 = i10;
                }
                fVarArr[i10] = fVar3;
            }
        }
        fVarArr[length - 2] = fVar;
        fVarArr[length - 1] = fVar2;
    }

    public f[] A() {
        return g.b(this.elements);
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (!(zVar instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) zVar;
        int size = size();
        if (d0Var.size() != size) {
            return false;
        }
        w1 w1Var = (w1) u();
        w1 w1Var2 = (w1) d0Var.u();
        for (int i10 = 0; i10 < size; i10++) {
            z zVarG = w1Var.elements[i10].g();
            z zVarG2 = w1Var2.elements[i10].g();
            if (zVarG != zVarG2 && !zVarG.b(zVarG2)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        int length = this.elements.length;
        int iHashCode = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return iHashCode;
            }
            iHashCode += this.elements[length].g().hashCode();
        }
    }

    @Override // java.lang.Iterable
    public Iterator<f> iterator() {
        return new org.bouncycastle.util.a.C0479a(A());
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return true;
    }

    public int size() {
        return this.elements.length;
    }

    public String toString() {
        int size = size();
        if (size == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(kotlinx.serialization.json.internal.b.BEGIN_LIST);
        int i10 = 0;
        while (true) {
            stringBuffer.append(this.elements[i10]);
            i10++;
            if (i10 >= size) {
                stringBuffer.append(kotlinx.serialization.json.internal.b.END_LIST);
                return stringBuffer.toString();
            }
            stringBuffer.append(", ");
        }
    }

    @Override // org.bouncycastle.asn1.z
    z u() {
        f[] fVarArr;
        if (this.isSorted) {
            fVarArr = this.elements;
        } else {
            fVarArr = (f[]) this.elements.clone();
            z(fVarArr);
        }
        return new w1(true, fVarArr);
    }

    @Override // org.bouncycastle.asn1.z
    z v() {
        return new l2(this.isSorted, this.elements);
    }

    protected d0(f fVar) {
        if (fVar == null) {
            throw new NullPointerException("'element' cannot be null");
        }
        this.elements = new f[]{fVar};
        this.isSorted = true;
    }

    protected d0(g gVar, boolean z6) {
        f[] fVarArrG;
        if (gVar == null) {
            throw new NullPointerException("'elementVector' cannot be null");
        }
        if (!z6 || gVar.f() < 2) {
            fVarArrG = gVar.g();
        } else {
            fVarArrG = gVar.c();
            z(fVarArrG);
        }
        this.elements = fVarArrG;
        this.isSorted = z6 || fVarArrG.length < 2;
    }

    d0(boolean z6, f[] fVarArr) {
        this.elements = fVarArr;
        this.isSorted = z6 || fVarArr.length < 2;
    }

    protected d0(f[] fVarArr, boolean z6) {
        if (org.bouncycastle.util.a.t(fVarArr)) {
            throw new NullPointerException("'elements' cannot be null, or contain null");
        }
        f[] fVarArrB = g.b(fVarArr);
        if (z6 && fVarArrB.length >= 2) {
            z(fVarArrB);
        }
        this.elements = fVarArrB;
        this.isSorted = z6 || fVarArrB.length < 2;
    }
}
