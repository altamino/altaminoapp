package org.bouncycastle.crypto.digests;

import l9.p;

/* JADX INFO: loaded from: classes10.dex */
public class g extends a {
    private static final int DIGEST_LENGTH = 32;
    static final int[] K = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int H5;
    private int H6;
    private int H7;
    private int H8;
    private int[] X;
    private int xOff;

    public g() {
        this.X = new int[64];
        k();
    }

    private static int l(int i10, int i11, int i12) {
        return ((~i10) & i12) ^ (i11 & i10);
    }

    private static int m(int i10, int i11, int i12) {
        return ((i10 ^ i11) & i12) | (i10 & i11);
    }

    private static int n(int i10) {
        return ((i10 << 10) | (i10 >>> 22)) ^ (((i10 >>> 2) | (i10 << 30)) ^ ((i10 >>> 13) | (i10 << 19)));
    }

    private static int o(int i10) {
        return ((i10 << 7) | (i10 >>> 25)) ^ (((i10 >>> 6) | (i10 << 26)) ^ ((i10 >>> 11) | (i10 << 21)));
    }

    private static int p(int i10) {
        return (i10 >>> 3) ^ (((i10 >>> 7) | (i10 << 25)) ^ ((i10 >>> 18) | (i10 << 14)));
    }

    private static int q(int i10) {
        return (i10 >>> 10) ^ (((i10 >>> 17) | (i10 << 15)) ^ ((i10 >>> 19) | (i10 << 13)));
    }

    private void r(g gVar) {
        super.f(gVar);
        this.H1 = gVar.H1;
        this.H2 = gVar.H2;
        this.H3 = gVar.H3;
        this.H4 = gVar.H4;
        this.H5 = gVar.H5;
        this.H6 = gVar.H6;
        this.H7 = gVar.H7;
        this.H8 = gVar.H8;
        int[] iArr = gVar.X;
        System.arraycopy(iArr, 0, this.X, 0, iArr.length);
        this.xOff = gVar.xOff;
    }

    @Override // x8.c
    public int a(byte[] bArr, int i10) {
        g();
        org.bouncycastle.util.f.c(this.H1, bArr, i10);
        org.bouncycastle.util.f.c(this.H2, bArr, i10 + 4);
        org.bouncycastle.util.f.c(this.H3, bArr, i10 + 8);
        org.bouncycastle.util.f.c(this.H4, bArr, i10 + 12);
        org.bouncycastle.util.f.c(this.H5, bArr, i10 + 16);
        org.bouncycastle.util.f.c(this.H6, bArr, i10 + 20);
        org.bouncycastle.util.f.c(this.H7, bArr, i10 + 24);
        org.bouncycastle.util.f.c(this.H8, bArr, i10 + 28);
        k();
        return 32;
    }

    @Override // x8.c
    public String d() {
        return p.SHA_256;
    }

    @Override // x8.c
    public int e() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.digests.a
    protected void h() {
        for (int i10 = 16; i10 <= 63; i10++) {
            int[] iArr = this.X;
            int iQ = q(iArr[i10 - 2]);
            int[] iArr2 = this.X;
            iArr[i10] = iQ + iArr2[i10 - 7] + p(iArr2[i10 - 15]) + this.X[i10 - 16];
        }
        int iN = this.H1;
        int iN2 = this.H2;
        int iN3 = this.H3;
        int iN4 = this.H4;
        int i11 = this.H5;
        int i12 = this.H6;
        int i13 = this.H7;
        int i14 = this.H8;
        int i15 = 0;
        for (int i16 = 0; i16 < 8; i16++) {
            int iO = o(i11) + l(i11, i12, i13);
            int[] iArr3 = K;
            int i17 = i14 + iO + iArr3[i15] + this.X[i15];
            int i18 = iN4 + i17;
            int iN5 = i17 + n(iN) + m(iN, iN2, iN3);
            int i19 = i15 + 1;
            int iO2 = i13 + o(i18) + l(i18, i11, i12) + iArr3[i19] + this.X[i19];
            int i20 = iN3 + iO2;
            int iN6 = iO2 + n(iN5) + m(iN5, iN, iN2);
            int i21 = i15 + 2;
            int iO3 = i12 + o(i20) + l(i20, i18, i11) + iArr3[i21] + this.X[i21];
            int i22 = iN2 + iO3;
            int iN7 = iO3 + n(iN6) + m(iN6, iN5, iN);
            int i23 = i15 + 3;
            int iO4 = i11 + o(i22) + l(i22, i20, i18) + iArr3[i23] + this.X[i23];
            int i24 = iN + iO4;
            int iN8 = iO4 + n(iN7) + m(iN7, iN6, iN5);
            int i25 = i15 + 4;
            int iO5 = i18 + o(i24) + l(i24, i22, i20) + iArr3[i25] + this.X[i25];
            i14 = iN5 + iO5;
            iN4 = iO5 + n(iN8) + m(iN8, iN7, iN6);
            int i26 = i15 + 5;
            int iO6 = i20 + o(i14) + l(i14, i24, i22) + iArr3[i26] + this.X[i26];
            i13 = iN6 + iO6;
            iN3 = iO6 + n(iN4) + m(iN4, iN8, iN7);
            int i27 = i15 + 6;
            int iO7 = i22 + o(i13) + l(i13, i14, i24) + iArr3[i27] + this.X[i27];
            i12 = iN7 + iO7;
            iN2 = iO7 + n(iN3) + m(iN3, iN4, iN8);
            int i28 = i15 + 7;
            int iO8 = i24 + o(i12) + l(i12, i13, i14) + iArr3[i28] + this.X[i28];
            i11 = iN8 + iO8;
            iN = iO8 + n(iN2) + m(iN2, iN3, iN4);
            i15 += 8;
        }
        this.H1 += iN;
        this.H2 += iN2;
        this.H3 += iN3;
        this.H4 += iN4;
        this.H5 += i11;
        this.H6 += i12;
        this.H7 += i13;
        this.H8 += i14;
        this.xOff = 0;
        for (int i29 = 0; i29 < 16; i29++) {
            this.X[i29] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.digests.a
    protected void i(long j6) {
        if (this.xOff > 14) {
            h();
        }
        int[] iArr = this.X;
        iArr[14] = (int) (j6 >>> 32);
        iArr[15] = (int) j6;
    }

    @Override // org.bouncycastle.crypto.digests.a
    protected void j(byte[] bArr, int i10) {
        int i11 = (bArr[i10 + 3] & 255) | (bArr[i10] << com.google.common.base.c.CAN) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
        int[] iArr = this.X;
        int i12 = this.xOff;
        iArr[i12] = i11;
        int i13 = i12 + 1;
        this.xOff = i13;
        if (i13 == 16) {
            h();
        }
    }

    @Override // org.bouncycastle.crypto.digests.a
    public void k() {
        super.k();
        this.H1 = 1779033703;
        this.H2 = -1150833019;
        this.H3 = 1013904242;
        this.H4 = -1521486534;
        this.H5 = 1359893119;
        this.H6 = -1694144372;
        this.H7 = 528734635;
        this.H8 = 1541459225;
        this.xOff = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.X;
            if (i10 == iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    public g(g gVar) {
        super(gVar);
        this.X = new int[64];
        r(gVar);
    }

    public g(byte[] bArr) {
        super(bArr);
        this.X = new int[64];
        this.H1 = org.bouncycastle.util.f.a(bArr, 16);
        this.H2 = org.bouncycastle.util.f.a(bArr, 20);
        this.H3 = org.bouncycastle.util.f.a(bArr, 24);
        this.H4 = org.bouncycastle.util.f.a(bArr, 28);
        this.H5 = org.bouncycastle.util.f.a(bArr, 32);
        this.H6 = org.bouncycastle.util.f.a(bArr, 36);
        this.H7 = org.bouncycastle.util.f.a(bArr, 40);
        this.H8 = org.bouncycastle.util.f.a(bArr, 44);
        this.xOff = org.bouncycastle.util.f.a(bArr, 48);
        for (int i10 = 0; i10 != this.xOff; i10++) {
            this.X[i10] = org.bouncycastle.util.f.a(bArr, (i10 * 4) + 52);
        }
    }
}
