package org.bouncycastle.crypto.digests;

/* JADX INFO: loaded from: classes10.dex */
public class e extends a {
    private static final int DIGEST_LENGTH = 20;
    private static final int Y1 = 1518500249;
    private static final int Y2 = 1859775393;
    private static final int Y3 = -1894007588;
    private static final int Y4 = -899497514;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int H5;
    private int[] X;
    private int xOff;

    public e() {
        this.X = new int[80];
        k();
    }

    private void l(e eVar) {
        this.H1 = eVar.H1;
        this.H2 = eVar.H2;
        this.H3 = eVar.H3;
        this.H4 = eVar.H4;
        this.H5 = eVar.H5;
        int[] iArr = eVar.X;
        System.arraycopy(iArr, 0, this.X, 0, iArr.length);
        this.xOff = eVar.xOff;
    }

    private int m(int i10, int i11, int i12) {
        return ((~i10) & i12) | (i11 & i10);
    }

    private int n(int i10, int i11, int i12) {
        return (i10 & i12) | (i10 & i11) | (i11 & i12);
    }

    private int o(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    @Override // x8.c
    public int a(byte[] bArr, int i10) {
        g();
        org.bouncycastle.util.f.c(this.H1, bArr, i10);
        org.bouncycastle.util.f.c(this.H2, bArr, i10 + 4);
        org.bouncycastle.util.f.c(this.H3, bArr, i10 + 8);
        org.bouncycastle.util.f.c(this.H4, bArr, i10 + 12);
        org.bouncycastle.util.f.c(this.H5, bArr, i10 + 16);
        k();
        return 20;
    }

    @Override // x8.c
    public String d() {
        return "SHA-1";
    }

    @Override // x8.c
    public int e() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.digests.a
    protected void h() {
        for (int i10 = 16; i10 < 80; i10++) {
            int[] iArr = this.X;
            int i11 = ((iArr[i10 - 3] ^ iArr[i10 - 8]) ^ iArr[i10 - 14]) ^ iArr[i10 - 16];
            iArr[i10] = (i11 >>> 31) | (i11 << 1);
        }
        int iO = this.H1;
        int iO2 = this.H2;
        int i12 = this.H3;
        int i13 = this.H4;
        int i14 = this.H5;
        int i15 = 0;
        for (int i16 = 0; i16 < 4; i16++) {
            int iM = i14 + ((iO << 5) | (iO >>> 27)) + m(iO2, i12, i13) + this.X[i15] + Y1;
            int i17 = (iO2 >>> 2) | (iO2 << 30);
            int iM2 = i13 + ((iM << 5) | (iM >>> 27)) + m(iO, i17, i12) + this.X[i15 + 1] + Y1;
            int i18 = (iO >>> 2) | (iO << 30);
            int iM3 = i12 + ((iM2 << 5) | (iM2 >>> 27)) + m(iM, i18, i17) + this.X[i15 + 2] + Y1;
            i14 = (iM >>> 2) | (iM << 30);
            int i19 = i15 + 4;
            iO2 = i17 + ((iM3 << 5) | (iM3 >>> 27)) + m(iM2, i14, i18) + this.X[i15 + 3] + Y1;
            i13 = (iM2 >>> 2) | (iM2 << 30);
            i15 += 5;
            iO = i18 + ((iO2 << 5) | (iO2 >>> 27)) + m(iM3, i13, i14) + this.X[i19] + Y1;
            i12 = (iM3 >>> 2) | (iM3 << 30);
        }
        for (int i20 = 0; i20 < 4; i20++) {
            int iO3 = i14 + ((iO << 5) | (iO >>> 27)) + o(iO2, i12, i13) + this.X[i15] + Y2;
            int i21 = (iO2 >>> 2) | (iO2 << 30);
            int iO4 = i13 + ((iO3 << 5) | (iO3 >>> 27)) + o(iO, i21, i12) + this.X[i15 + 1] + Y2;
            int i22 = (iO >>> 2) | (iO << 30);
            int iO5 = i12 + ((iO4 << 5) | (iO4 >>> 27)) + o(iO3, i22, i21) + this.X[i15 + 2] + Y2;
            i14 = (iO3 >>> 2) | (iO3 << 30);
            int i23 = i15 + 4;
            iO2 = i21 + ((iO5 << 5) | (iO5 >>> 27)) + o(iO4, i14, i22) + this.X[i15 + 3] + Y2;
            i13 = (iO4 >>> 2) | (iO4 << 30);
            i15 += 5;
            iO = i22 + ((iO2 << 5) | (iO2 >>> 27)) + o(iO5, i13, i14) + this.X[i23] + Y2;
            i12 = (iO5 >>> 2) | (iO5 << 30);
        }
        for (int i24 = 0; i24 < 4; i24++) {
            int iN = i14 + ((iO << 5) | (iO >>> 27)) + n(iO2, i12, i13) + this.X[i15] + Y3;
            int i25 = (iO2 >>> 2) | (iO2 << 30);
            int iN2 = i13 + ((iN << 5) | (iN >>> 27)) + n(iO, i25, i12) + this.X[i15 + 1] + Y3;
            int i26 = (iO >>> 2) | (iO << 30);
            int iN3 = i12 + ((iN2 << 5) | (iN2 >>> 27)) + n(iN, i26, i25) + this.X[i15 + 2] + Y3;
            i14 = (iN >>> 2) | (iN << 30);
            int i27 = i15 + 4;
            iO2 = i25 + ((iN3 << 5) | (iN3 >>> 27)) + n(iN2, i14, i26) + this.X[i15 + 3] + Y3;
            i13 = (iN2 >>> 2) | (iN2 << 30);
            i15 += 5;
            iO = i26 + ((iO2 << 5) | (iO2 >>> 27)) + n(iN3, i13, i14) + this.X[i27] + Y3;
            i12 = (iN3 >>> 2) | (iN3 << 30);
        }
        for (int i28 = 0; i28 <= 3; i28++) {
            int iO6 = i14 + ((iO << 5) | (iO >>> 27)) + o(iO2, i12, i13) + this.X[i15] + Y4;
            int i29 = (iO2 >>> 2) | (iO2 << 30);
            int iO7 = i13 + ((iO6 << 5) | (iO6 >>> 27)) + o(iO, i29, i12) + this.X[i15 + 1] + Y4;
            int i30 = (iO >>> 2) | (iO << 30);
            int iO8 = i12 + ((iO7 << 5) | (iO7 >>> 27)) + o(iO6, i30, i29) + this.X[i15 + 2] + Y4;
            i14 = (iO6 >>> 2) | (iO6 << 30);
            int i31 = i15 + 4;
            iO2 = i29 + ((iO8 << 5) | (iO8 >>> 27)) + o(iO7, i14, i30) + this.X[i15 + 3] + Y4;
            i13 = (iO7 >>> 2) | (iO7 << 30);
            i15 += 5;
            iO = i30 + ((iO2 << 5) | (iO2 >>> 27)) + o(iO8, i13, i14) + this.X[i31] + Y4;
            i12 = (iO8 >>> 2) | (iO8 << 30);
        }
        this.H1 += iO;
        this.H2 += iO2;
        this.H3 += i12;
        this.H4 += i13;
        this.H5 += i14;
        this.xOff = 0;
        for (int i32 = 0; i32 < 16; i32++) {
            this.X[i32] = 0;
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
        this.H1 = 1732584193;
        this.H2 = -271733879;
        this.H3 = -1732584194;
        this.H4 = 271733878;
        this.H5 = -1009589776;
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

    public e(e eVar) {
        super(eVar);
        this.X = new int[80];
        l(eVar);
    }

    public e(byte[] bArr) {
        super(bArr);
        this.X = new int[80];
        this.H1 = org.bouncycastle.util.f.a(bArr, 16);
        this.H2 = org.bouncycastle.util.f.a(bArr, 20);
        this.H3 = org.bouncycastle.util.f.a(bArr, 24);
        this.H4 = org.bouncycastle.util.f.a(bArr, 28);
        this.H5 = org.bouncycastle.util.f.a(bArr, 32);
        this.xOff = org.bouncycastle.util.f.a(bArr, 36);
        for (int i10 = 0; i10 != this.xOff; i10++) {
            this.X[i10] = org.bouncycastle.util.f.a(bArr, (i10 * 4) + 40);
        }
    }
}
