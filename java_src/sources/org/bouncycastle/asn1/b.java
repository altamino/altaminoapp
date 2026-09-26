package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public abstract class b extends z {
    static final m0 TYPE = new a(b.class, 30);
    final char[] string;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return b.w(r1Var.z());
        }
    }

    b(String str) {
        if (str == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        this.string = str.toCharArray();
    }

    static b w(byte[] bArr) {
        return new g1(bArr);
    }

    static b x(char[] cArr) {
        return new g1(cArr);
    }

    @Override // org.bouncycastle.asn1.z
    final boolean b(z zVar) {
        if (zVar instanceof b) {
            return org.bouncycastle.util.a.b(this.string, ((b) zVar).string);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public final int hashCode() {
        return org.bouncycastle.util.a.o(this.string);
    }

    @Override // org.bouncycastle.asn1.z
    final void j(x xVar, boolean z6) throws IOException {
        int length = this.string.length;
        xVar.s(z6, 30);
        xVar.k(length * 2);
        byte[] bArr = new byte[8];
        int i10 = length & (-4);
        int i11 = 0;
        while (i11 < i10) {
            char[] cArr = this.string;
            char c7 = cArr[i11];
            char c10 = cArr[i11 + 1];
            char c11 = cArr[i11 + 2];
            char c12 = cArr[i11 + 3];
            i11 += 4;
            bArr[0] = (byte) (c7 >> '\b');
            bArr[1] = (byte) c7;
            bArr[2] = (byte) (c10 >> '\b');
            bArr[3] = (byte) c10;
            bArr[4] = (byte) (c11 >> '\b');
            bArr[5] = (byte) c11;
            bArr[6] = (byte) (c12 >> '\b');
            bArr[7] = (byte) c12;
            xVar.j(bArr, 0, 8);
        }
        if (i11 < length) {
            int i12 = 0;
            do {
                char c13 = this.string[i11];
                i11++;
                int i13 = i12 + 1;
                bArr[i12] = (byte) (c13 >> '\b');
                i12 += 2;
                bArr[i13] = (byte) c13;
            } while (i11 < length);
            xVar.j(bArr, 0, i12);
        }
    }

    @Override // org.bouncycastle.asn1.z
    final boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    final int r(boolean z6) {
        return x.g(z6, this.string.length * 2);
    }

    public String toString() {
        return y();
    }

    public final String y() {
        return new String(this.string);
    }

    b(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        int length = bArr.length;
        if ((length & 1) != 0) {
            throw new IllegalArgumentException("malformed BMPString encoding encountered");
        }
        int i10 = length / 2;
        char[] cArr = new char[i10];
        for (int i11 = 0; i11 != i10; i11++) {
            int i12 = i11 * 2;
            cArr[i11] = (char) ((bArr[i12 + 1] & 255) | (bArr[i12] << 8));
        }
        this.string = cArr;
    }

    b(char[] cArr) {
        if (cArr == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        this.string = cArr;
    }
}
