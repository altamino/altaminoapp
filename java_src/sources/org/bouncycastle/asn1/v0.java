package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public class v0 extends v {
    private static final int DEFAULT_SEGMENT_LIMIT = 1000;
    private final v[] elements;
    private final int segmentLimit;

    public v0(byte[] bArr) {
        this(bArr, 1000);
    }

    static byte[] A(v[] vVarArr) {
        int length = vVarArr.length;
        if (length == 0) {
            return v.EMPTY_OCTETS;
        }
        if (length == 1) {
            return vVarArr[0].string;
        }
        int length2 = 0;
        for (v vVar : vVarArr) {
            length2 += vVar.string.length;
        }
        byte[] bArr = new byte[length2];
        int length3 = 0;
        for (v vVar2 : vVarArr) {
            byte[] bArr2 = vVar2.string;
            System.arraycopy(bArr2, 0, bArr, length3, bArr2.length);
            length3 += bArr2.length;
        }
        return bArr;
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        if (!m()) {
            byte[] bArr = this.string;
            r1.A(xVar, z6, bArr, 0, bArr.length);
            return;
        }
        xVar.s(z6, 36);
        xVar.i(128);
        v[] vVarArr = this.elements;
        if (vVarArr == null) {
            int i10 = 0;
            while (true) {
                byte[] bArr2 = this.string;
                if (i10 >= bArr2.length) {
                    break;
                }
                int iMin = Math.min(bArr2.length - i10, this.segmentLimit);
                r1.A(xVar, true, this.string, i10, iMin);
                i10 += iMin;
            }
        } else {
            xVar.v(vVarArr);
        }
        xVar.i(0);
        xVar.i(0);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return this.elements != null || this.string.length > this.segmentLimit;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) throws IOException {
        if (!m()) {
            return r1.B(z6, this.string.length);
        }
        int iR = z6 ? 4 : 3;
        if (this.elements == null) {
            int length = this.string.length;
            int i10 = this.segmentLimit;
            int i11 = length / i10;
            int iB = iR + (r1.B(true, i10) * i11);
            int length2 = this.string.length - (i11 * this.segmentLimit);
            return length2 > 0 ? iB + r1.B(true, length2) : iB;
        }
        int i12 = 0;
        while (true) {
            v[] vVarArr = this.elements;
            if (i12 >= vVarArr.length) {
                return iR;
            }
            iR += vVarArr[i12].r(true);
            i12++;
        }
    }

    public v0(byte[] bArr, int i10) {
        this(bArr, null, i10);
    }

    private v0(byte[] bArr, v[] vVarArr, int i10) {
        super(bArr);
        this.elements = vVarArr;
        this.segmentLimit = i10;
    }

    public v0(v[] vVarArr) {
        this(vVarArr, 1000);
    }

    public v0(v[] vVarArr, int i10) {
        this(A(vVarArr), vVarArr, i10);
    }
}
