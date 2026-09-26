package org.bouncycastle.crypto.digests;

/* JADX INFO: loaded from: classes10.dex */
public class d extends a {
    private static final int DIGEST_LENGTH = 16;
    private static final int S11 = 7;
    private static final int S12 = 12;
    private static final int S13 = 17;
    private static final int S14 = 22;
    private static final int S21 = 5;
    private static final int S22 = 9;
    private static final int S23 = 14;
    private static final int S24 = 20;
    private static final int S31 = 4;
    private static final int S32 = 11;
    private static final int S33 = 16;
    private static final int S34 = 23;
    private static final int S41 = 6;
    private static final int S42 = 10;
    private static final int S43 = 15;
    private static final int S44 = 21;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int[] X;
    private int xOff;

    public d() {
        this.X = new int[16];
        k();
    }

    private int l(int i10, int i11, int i12) {
        return ((~i10) & i12) | (i11 & i10);
    }

    private int m(int i10, int i11, int i12) {
        return (i10 & i12) | (i11 & (~i12));
    }

    private int n(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    private int o(int i10, int i11, int i12) {
        return (i10 | (~i12)) ^ i11;
    }

    private void p(d dVar) {
        super.f(dVar);
        this.H1 = dVar.H1;
        this.H2 = dVar.H2;
        this.H3 = dVar.H3;
        this.H4 = dVar.H4;
        int[] iArr = dVar.X;
        System.arraycopy(iArr, 0, this.X, 0, iArr.length);
        this.xOff = dVar.xOff;
    }

    private int q(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    private void r(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >>> 8);
        bArr[i11 + 2] = (byte) (i10 >>> 16);
        bArr[i11 + 3] = (byte) (i10 >>> 24);
    }

    @Override // x8.c
    public int a(byte[] bArr, int i10) {
        g();
        r(this.H1, bArr, i10);
        r(this.H2, bArr, i10 + 4);
        r(this.H3, bArr, i10 + 8);
        r(this.H4, bArr, i10 + 12);
        k();
        return 16;
    }

    @Override // x8.c
    public String d() {
        return "MD5";
    }

    @Override // x8.c
    public int e() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.digests.a
    protected void h() {
        int i10 = this.H1;
        int i11 = this.H2;
        int i12 = this.H3;
        int i13 = this.H4;
        int iQ = q(((i10 + l(i11, i12, i13)) + this.X[0]) - 680876936, 7) + i11;
        int iQ2 = q(((i13 + l(iQ, i11, i12)) + this.X[1]) - 389564586, 12) + iQ;
        int iQ3 = q(i12 + l(iQ2, iQ, i11) + this.X[2] + 606105819, 17) + iQ2;
        int iQ4 = q(((i11 + l(iQ3, iQ2, iQ)) + this.X[3]) - 1044525330, 22) + iQ3;
        int iQ5 = q(((iQ + l(iQ4, iQ3, iQ2)) + this.X[4]) - 176418897, 7) + iQ4;
        int iQ6 = q(iQ2 + l(iQ5, iQ4, iQ3) + this.X[5] + 1200080426, 12) + iQ5;
        int iQ7 = q(((iQ3 + l(iQ6, iQ5, iQ4)) + this.X[6]) - 1473231341, 17) + iQ6;
        int iQ8 = q(((iQ4 + l(iQ7, iQ6, iQ5)) + this.X[7]) - 45705983, 22) + iQ7;
        int iQ9 = q(iQ5 + l(iQ8, iQ7, iQ6) + this.X[8] + 1770035416, 7) + iQ8;
        int iQ10 = q(((iQ6 + l(iQ9, iQ8, iQ7)) + this.X[9]) - 1958414417, 12) + iQ9;
        int iQ11 = q(((iQ7 + l(iQ10, iQ9, iQ8)) + this.X[10]) - 42063, 17) + iQ10;
        int iQ12 = q(((iQ8 + l(iQ11, iQ10, iQ9)) + this.X[11]) - 1990404162, 22) + iQ11;
        int iQ13 = q(iQ9 + l(iQ12, iQ11, iQ10) + this.X[12] + 1804603682, 7) + iQ12;
        int iQ14 = q(((iQ10 + l(iQ13, iQ12, iQ11)) + this.X[13]) - 40341101, 12) + iQ13;
        int iQ15 = q(((iQ11 + l(iQ14, iQ13, iQ12)) + this.X[14]) - 1502002290, 17) + iQ14;
        int iQ16 = q(iQ12 + l(iQ15, iQ14, iQ13) + this.X[15] + 1236535329, 22) + iQ15;
        int iQ17 = q(((iQ13 + m(iQ16, iQ15, iQ14)) + this.X[1]) - 165796510, 5) + iQ16;
        int iQ18 = q(((iQ14 + m(iQ17, iQ16, iQ15)) + this.X[6]) - 1069501632, 9) + iQ17;
        int iQ19 = q(iQ15 + m(iQ18, iQ17, iQ16) + this.X[11] + 643717713, 14) + iQ18;
        int iQ20 = q(((iQ16 + m(iQ19, iQ18, iQ17)) + this.X[0]) - 373897302, 20) + iQ19;
        int iQ21 = q(((iQ17 + m(iQ20, iQ19, iQ18)) + this.X[5]) - 701558691, 5) + iQ20;
        int iQ22 = q(iQ18 + m(iQ21, iQ20, iQ19) + this.X[10] + 38016083, 9) + iQ21;
        int iQ23 = q(((iQ19 + m(iQ22, iQ21, iQ20)) + this.X[15]) - 660478335, 14) + iQ22;
        int iQ24 = q(((iQ20 + m(iQ23, iQ22, iQ21)) + this.X[4]) - 405537848, 20) + iQ23;
        int iQ25 = q(iQ21 + m(iQ24, iQ23, iQ22) + this.X[9] + 568446438, 5) + iQ24;
        int iQ26 = q(((iQ22 + m(iQ25, iQ24, iQ23)) + this.X[14]) - 1019803690, 9) + iQ25;
        int iQ27 = q(((iQ23 + m(iQ26, iQ25, iQ24)) + this.X[3]) - 187363961, 14) + iQ26;
        int iQ28 = q(iQ24 + m(iQ27, iQ26, iQ25) + this.X[8] + 1163531501, 20) + iQ27;
        int iQ29 = q(((iQ25 + m(iQ28, iQ27, iQ26)) + this.X[13]) - 1444681467, 5) + iQ28;
        int iQ30 = q(((iQ26 + m(iQ29, iQ28, iQ27)) + this.X[2]) - 51403784, 9) + iQ29;
        int iQ31 = q(iQ27 + m(iQ30, iQ29, iQ28) + this.X[7] + 1735328473, 14) + iQ30;
        int iQ32 = q(((iQ28 + m(iQ31, iQ30, iQ29)) + this.X[12]) - 1926607734, 20) + iQ31;
        int iQ33 = q(((iQ29 + n(iQ32, iQ31, iQ30)) + this.X[5]) - 378558, 4) + iQ32;
        int iQ34 = q(((iQ30 + n(iQ33, iQ32, iQ31)) + this.X[8]) - 2022574463, 11) + iQ33;
        int iQ35 = q(iQ31 + n(iQ34, iQ33, iQ32) + this.X[11] + 1839030562, 16) + iQ34;
        int iQ36 = q(((iQ32 + n(iQ35, iQ34, iQ33)) + this.X[14]) - 35309556, 23) + iQ35;
        int iQ37 = q(((iQ33 + n(iQ36, iQ35, iQ34)) + this.X[1]) - 1530992060, 4) + iQ36;
        int iQ38 = q(iQ34 + n(iQ37, iQ36, iQ35) + this.X[4] + 1272893353, 11) + iQ37;
        int iQ39 = q(((iQ35 + n(iQ38, iQ37, iQ36)) + this.X[7]) - 155497632, 16) + iQ38;
        int iQ40 = q(((iQ36 + n(iQ39, iQ38, iQ37)) + this.X[10]) - 1094730640, 23) + iQ39;
        int iQ41 = q(iQ37 + n(iQ40, iQ39, iQ38) + this.X[13] + 681279174, 4) + iQ40;
        int iQ42 = q(((iQ38 + n(iQ41, iQ40, iQ39)) + this.X[0]) - 358537222, 11) + iQ41;
        int iQ43 = q(((iQ39 + n(iQ42, iQ41, iQ40)) + this.X[3]) - 722521979, 16) + iQ42;
        int iQ44 = q(iQ40 + n(iQ43, iQ42, iQ41) + this.X[6] + 76029189, 23) + iQ43;
        int iQ45 = q(((iQ41 + n(iQ44, iQ43, iQ42)) + this.X[9]) - 640364487, 4) + iQ44;
        int iQ46 = q(((iQ42 + n(iQ45, iQ44, iQ43)) + this.X[12]) - 421815835, 11) + iQ45;
        int iQ47 = q(iQ43 + n(iQ46, iQ45, iQ44) + this.X[15] + 530742520, 16) + iQ46;
        int iQ48 = q(((iQ44 + n(iQ47, iQ46, iQ45)) + this.X[2]) - 995338651, 23) + iQ47;
        int iQ49 = q(((iQ45 + o(iQ48, iQ47, iQ46)) + this.X[0]) - 198630844, 6) + iQ48;
        int iQ50 = q(iQ46 + o(iQ49, iQ48, iQ47) + this.X[7] + 1126891415, 10) + iQ49;
        int iQ51 = q(((iQ47 + o(iQ50, iQ49, iQ48)) + this.X[14]) - 1416354905, 15) + iQ50;
        int iQ52 = q(((iQ48 + o(iQ51, iQ50, iQ49)) + this.X[5]) - 57434055, 21) + iQ51;
        int iQ53 = q(iQ49 + o(iQ52, iQ51, iQ50) + this.X[12] + 1700485571, 6) + iQ52;
        int iQ54 = q(((iQ50 + o(iQ53, iQ52, iQ51)) + this.X[3]) - 1894986606, 10) + iQ53;
        int iQ55 = q(((iQ51 + o(iQ54, iQ53, iQ52)) + this.X[10]) - 1051523, 15) + iQ54;
        int iQ56 = q(((iQ52 + o(iQ55, iQ54, iQ53)) + this.X[1]) - 2054922799, 21) + iQ55;
        int iQ57 = q(iQ53 + o(iQ56, iQ55, iQ54) + this.X[8] + 1873313359, 6) + iQ56;
        int iQ58 = q(((iQ54 + o(iQ57, iQ56, iQ55)) + this.X[15]) - 30611744, 10) + iQ57;
        int iQ59 = q(((iQ55 + o(iQ58, iQ57, iQ56)) + this.X[6]) - 1560198380, 15) + iQ58;
        int iQ60 = q(iQ56 + o(iQ59, iQ58, iQ57) + this.X[13] + 1309151649, 21) + iQ59;
        int iQ61 = q(((iQ57 + o(iQ60, iQ59, iQ58)) + this.X[4]) - 145523070, 6) + iQ60;
        int iQ62 = q(((iQ58 + o(iQ61, iQ60, iQ59)) + this.X[11]) - 1120210379, 10) + iQ61;
        int iQ63 = q(iQ59 + o(iQ62, iQ61, iQ60) + this.X[2] + 718787259, 15) + iQ62;
        int iQ64 = q(((iQ60 + o(iQ63, iQ62, iQ61)) + this.X[9]) - 343485551, 21) + iQ63;
        this.H1 += iQ61;
        this.H2 += iQ64;
        this.H3 += iQ63;
        this.H4 += iQ62;
        this.xOff = 0;
        int i14 = 0;
        while (true) {
            int[] iArr = this.X;
            if (i14 == iArr.length) {
                return;
            }
            iArr[i14] = 0;
            i14++;
        }
    }

    @Override // org.bouncycastle.crypto.digests.a
    protected void i(long j6) {
        if (this.xOff > 14) {
            h();
        }
        int[] iArr = this.X;
        iArr[14] = (int) j6;
        iArr[15] = (int) (j6 >>> 32);
    }

    @Override // org.bouncycastle.crypto.digests.a
    protected void j(byte[] bArr, int i10) {
        int[] iArr = this.X;
        int i11 = this.xOff;
        int i12 = i11 + 1;
        this.xOff = i12;
        iArr[i11] = ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        if (i12 == 16) {
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

    public d(d dVar) {
        super(dVar);
        this.X = new int[16];
        p(dVar);
    }

    public d(byte[] bArr) {
        super(bArr);
        this.X = new int[16];
        this.H1 = org.bouncycastle.util.f.a(bArr, 16);
        this.H2 = org.bouncycastle.util.f.a(bArr, 20);
        this.H3 = org.bouncycastle.util.f.a(bArr, 24);
        this.H4 = org.bouncycastle.util.f.a(bArr, 28);
        this.xOff = org.bouncycastle.util.f.a(bArr, 32);
        for (int i10 = 0; i10 != this.xOff; i10++) {
            this.X[i10] = org.bouncycastle.util.f.a(bArr, (i10 * 4) + 36);
        }
    }
}
