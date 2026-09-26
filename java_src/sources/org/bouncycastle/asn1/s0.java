package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public class s0 extends c {
    private static final int DEFAULT_SEGMENT_LIMIT = 1000;
    private final c[] elements;
    private final int segmentLimit;

    public s0(byte b7, int i10) {
        super(b7, i10);
        this.elements = null;
        this.segmentLimit = 1000;
    }

    static byte[] E(c[] cVarArr) {
        int length = cVarArr.length;
        if (length == 0) {
            return new byte[]{0};
        }
        if (length == 1) {
            return cVarArr[0].contents;
        }
        int i10 = length - 1;
        int length2 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            byte[] bArr = cVarArr[i11].contents;
            if (bArr[0] != 0) {
                throw new IllegalArgumentException("only the last nested bitstring can have padding");
            }
            length2 += bArr.length - 1;
        }
        byte[] bArr2 = cVarArr[i10].contents;
        byte b7 = bArr2[0];
        byte[] bArr3 = new byte[length2 + bArr2.length];
        bArr3[0] = b7;
        int i12 = 1;
        for (c cVar : cVarArr) {
            byte[] bArr4 = cVar.contents;
            int length3 = bArr4.length - 1;
            System.arraycopy(bArr4, 1, bArr3, i12, length3);
            i12 += length3;
        }
        return bArr3;
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        if (!m()) {
            byte[] bArr = this.contents;
            e2.F(xVar, z6, bArr, 0, bArr.length);
            return;
        }
        xVar.s(z6, 35);
        xVar.i(128);
        c[] cVarArr = this.elements;
        if (cVarArr != null) {
            xVar.v(cVarArr);
        } else {
            byte[] bArr2 = this.contents;
            if (bArr2.length >= 2) {
                byte b7 = bArr2[0];
                int length = bArr2.length;
                int i10 = length - 1;
                int i11 = this.segmentLimit - 1;
                while (i10 > i11) {
                    e2.E(xVar, true, (byte) 0, this.contents, length - i10, i11);
                    i10 -= i11;
                }
                e2.E(xVar, true, b7, this.contents, length - i10, i10);
            }
        }
        xVar.i(0);
        xVar.i(0);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return this.elements != null || this.contents.length > this.segmentLimit;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) throws IOException {
        if (!m()) {
            return e2.G(z6, this.contents.length);
        }
        int iR = z6 ? 4 : 3;
        if (this.elements == null) {
            byte[] bArr = this.contents;
            if (bArr.length < 2) {
                return iR;
            }
            int length = bArr.length - 2;
            int i10 = this.segmentLimit;
            int i11 = length / (i10 - 1);
            return iR + (e2.G(true, i10) * i11) + e2.G(true, this.contents.length - (i11 * (this.segmentLimit - 1)));
        }
        int i12 = 0;
        while (true) {
            c[] cVarArr = this.elements;
            if (i12 >= cVarArr.length) {
                return iR;
            }
            iR += cVarArr[i12].r(true);
            i12++;
        }
    }

    public s0(f fVar) throws IOException {
        this(fVar.g().a("DER"), 0);
    }

    public s0(byte[] bArr) {
        this(bArr, 0);
    }

    public s0(byte[] bArr, int i10) {
        this(bArr, i10, 1000);
    }

    public s0(byte[] bArr, int i10, int i11) {
        super(bArr, i10);
        this.elements = null;
        this.segmentLimit = i11;
    }

    public s0(c[] cVarArr) {
        this(cVarArr, 1000);
    }

    public s0(c[] cVarArr, int i10) {
        super(E(cVarArr), false);
        this.elements = cVarArr;
        this.segmentLimit = i10;
    }
}
