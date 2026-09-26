package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Date;

/* JADX INFO: loaded from: classes10.dex */
public class m1 extends l {
    public m1(String str) {
        super(str);
    }

    private byte[] H() {
        byte[] bArr = this.contents;
        if (bArr[bArr.length - 1] != 90) {
            return bArr;
        }
        if (!D()) {
            byte[] bArr2 = this.contents;
            byte[] bArr3 = new byte[bArr2.length + 4];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length - 1);
            System.arraycopy(org.bouncycastle.util.h.e("0000Z"), 0, bArr3, this.contents.length - 1, 5);
            return bArr3;
        }
        if (!E()) {
            byte[] bArr4 = this.contents;
            byte[] bArr5 = new byte[bArr4.length + 2];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length - 1);
            System.arraycopy(org.bouncycastle.util.h.e("00Z"), 0, bArr5, this.contents.length - 1, 3);
            return bArr5;
        }
        if (!C()) {
            return this.contents;
        }
        int length = this.contents.length - 2;
        while (length > 0 && this.contents[length] == 48) {
            length--;
        }
        byte[] bArr6 = this.contents;
        if (bArr6[length] == 46) {
            byte[] bArr7 = new byte[length + 1];
            System.arraycopy(bArr6, 0, bArr7, 0, length);
            bArr7[length] = 90;
            return bArr7;
        }
        byte[] bArr8 = new byte[length + 2];
        int i10 = length + 1;
        System.arraycopy(bArr6, 0, bArr8, 0, i10);
        bArr8[i10] = 90;
        return bArr8;
    }

    @Override // org.bouncycastle.asn1.l, org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.o(z6, 24, H());
    }

    @Override // org.bouncycastle.asn1.l, org.bouncycastle.asn1.z
    int r(boolean z6) {
        return x.g(z6, H().length);
    }

    @Override // org.bouncycastle.asn1.l, org.bouncycastle.asn1.z
    z u() {
        return this;
    }

    @Override // org.bouncycastle.asn1.l, org.bouncycastle.asn1.z
    z v() {
        return this;
    }

    public m1(Date date) {
        super(date);
    }

    public m1(byte[] bArr) {
        super(bArr);
    }
}
