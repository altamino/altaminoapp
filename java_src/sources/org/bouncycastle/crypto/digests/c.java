package org.bouncycastle.crypto.digests;

/* JADX INFO: loaded from: classes10.dex */
public abstract class c implements x8.c {
    private static final int BYTE_LENGTH = 128;
    static final long[] K = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};
    protected long H1;
    protected long H2;
    protected long H3;
    protected long H4;
    protected long H5;
    protected long H6;
    protected long H7;
    protected long H8;
    private long[] W;
    private long byteCount1;
    private long byteCount2;
    private int wOff;
    private byte[] xBuf;
    private int xBufOff;

    protected c() {
        this.xBuf = new byte[8];
        this.W = new long[80];
        this.xBufOff = 0;
        r();
    }

    private long f(long j6, long j10, long j11) {
        return ((~j6) & j11) ^ (j10 & j6);
    }

    private long g(long j6, long j10, long j11) {
        return ((j6 & j11) ^ (j6 & j10)) ^ (j10 & j11);
    }

    private long h(long j6) {
        return (j6 >>> 7) ^ (((j6 << 63) | (j6 >>> 1)) ^ ((j6 << 56) | (j6 >>> 8)));
    }

    private long i(long j6) {
        return (j6 >>> 6) ^ (((j6 << 45) | (j6 >>> 19)) ^ ((j6 << 3) | (j6 >>> 61)));
    }

    private long j(long j6) {
        return ((j6 >>> 39) | (j6 << 25)) ^ (((j6 << 36) | (j6 >>> 28)) ^ ((j6 << 30) | (j6 >>> 34)));
    }

    private long k(long j6) {
        return ((j6 >>> 41) | (j6 << 23)) ^ (((j6 << 50) | (j6 >>> 14)) ^ ((j6 << 46) | (j6 >>> 18)));
    }

    private void l() {
        long j6 = this.byteCount1;
        if (j6 > 2305843009213693951L) {
            this.byteCount2 += j6 >>> 61;
            this.byteCount1 = j6 & 2305843009213693951L;
        }
    }

    @Override // x8.c
    public void c(byte b7) {
        byte[] bArr = this.xBuf;
        int i10 = this.xBufOff;
        int i11 = i10 + 1;
        this.xBufOff = i11;
        bArr[i10] = b7;
        if (i11 == bArr.length) {
            q(bArr, 0);
            this.xBufOff = 0;
        }
        this.byteCount1++;
    }

    protected void m(c cVar) {
        byte[] bArr = cVar.xBuf;
        System.arraycopy(bArr, 0, this.xBuf, 0, bArr.length);
        this.xBufOff = cVar.xBufOff;
        this.byteCount1 = cVar.byteCount1;
        this.byteCount2 = cVar.byteCount2;
        this.H1 = cVar.H1;
        this.H2 = cVar.H2;
        this.H3 = cVar.H3;
        this.H4 = cVar.H4;
        this.H5 = cVar.H5;
        this.H6 = cVar.H6;
        this.H7 = cVar.H7;
        this.H8 = cVar.H8;
        long[] jArr = cVar.W;
        System.arraycopy(jArr, 0, this.W, 0, jArr.length);
        this.wOff = cVar.wOff;
    }

    public void n() {
        l();
        long j6 = this.byteCount1 << 3;
        long j10 = this.byteCount2;
        byte b7 = -128;
        while (true) {
            c(b7);
            if (this.xBufOff == 0) {
                p(j6, j10);
                o();
                return;
            }
            b7 = 0;
        }
    }

    protected void o() {
        l();
        for (int i10 = 16; i10 <= 79; i10++) {
            long[] jArr = this.W;
            long jI = i(jArr[i10 - 2]);
            long[] jArr2 = this.W;
            jArr[i10] = jI + jArr2[i10 - 7] + h(jArr2[i10 - 15]) + this.W[i10 - 16];
        }
        long j6 = this.H1;
        long j10 = this.H2;
        long j11 = this.H3;
        long j12 = this.H4;
        long j13 = this.H5;
        long j14 = this.H6;
        long j15 = this.H7;
        long j16 = j14;
        long j17 = j12;
        int i11 = 0;
        long j18 = j10;
        long j19 = j11;
        long j20 = j13;
        int i12 = 0;
        long j21 = this.H8;
        long j22 = j6;
        long j23 = j15;
        while (i12 < 10) {
            long j24 = j20;
            long jK = k(j20) + f(j20, j16, j23);
            long[] jArr3 = K;
            int i13 = i11 + 1;
            long j25 = j21 + jK + jArr3[i11] + this.W[i11];
            long j26 = j17 + j25;
            long j27 = j25 + j(j22) + g(j22, j18, j19);
            int i14 = i11 + 2;
            long jK2 = j23 + k(j26) + f(j26, j24, j16) + jArr3[i13] + this.W[i13];
            long j28 = j19 + jK2;
            long j29 = jK2 + j(j27) + g(j27, j22, j18);
            int i15 = i11 + 3;
            long jK3 = j16 + k(j28) + f(j28, j26, j24) + jArr3[i14] + this.W[i14];
            long j30 = j18 + jK3;
            long j31 = jK3 + j(j29) + g(j29, j27, j22);
            int i16 = i11 + 4;
            long jK4 = j24 + k(j30) + f(j30, j28, j26) + jArr3[i15] + this.W[i15];
            long j32 = j22 + jK4;
            long j33 = jK4 + j(j31) + g(j31, j29, j27);
            int i17 = i11 + 5;
            long jK5 = j26 + k(j32) + f(j32, j30, j28) + jArr3[i16] + this.W[i16];
            long j34 = j27 + jK5;
            long j35 = jK5 + j(j33) + g(j33, j31, j29);
            int i18 = i11 + 6;
            long jK6 = j28 + k(j34) + f(j34, j32, j30) + jArr3[i17] + this.W[i17];
            long j36 = j29 + jK6;
            long j37 = jK6 + j(j35) + g(j35, j33, j31);
            j23 = j36;
            int i19 = i11 + 7;
            long jK7 = j30 + k(j36) + f(j36, j34, j32) + jArr3[i18] + this.W[i18];
            long j38 = j31 + jK7;
            j16 = j38;
            j18 = jK7 + j(j37) + g(j37, j35, j33);
            i11 += 8;
            long jK8 = j32 + k(j38) + f(j38, j23, j34) + jArr3[i19] + this.W[i19];
            long j39 = jK8 + j(j18) + g(j18, j37, j35);
            i12++;
            j20 = j33 + jK8;
            j19 = j37;
            j21 = j34;
            j17 = j35;
            j22 = j39;
        }
        this.H1 += j22;
        this.H2 += j18;
        this.H3 += j19;
        this.H4 += j17;
        this.H5 += j20;
        this.H6 += j16;
        this.H7 += j23;
        this.H8 += j21;
        this.wOff = 0;
        for (int i20 = 0; i20 < 16; i20++) {
            this.W[i20] = 0;
        }
    }

    protected void p(long j6, long j10) {
        if (this.wOff > 14) {
            o();
        }
        long[] jArr = this.W;
        jArr[14] = j10;
        jArr[15] = j6;
    }

    protected void q(byte[] bArr, int i10) {
        this.W[this.wOff] = org.bouncycastle.util.f.b(bArr, i10);
        int i11 = this.wOff + 1;
        this.wOff = i11;
        if (i11 == 16) {
            o();
        }
    }

    public void r() {
        this.byteCount1 = 0L;
        this.byteCount2 = 0L;
        int i10 = 0;
        this.xBufOff = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr = this.xBuf;
            if (i11 >= bArr.length) {
                break;
            }
            bArr[i11] = 0;
            i11++;
        }
        this.wOff = 0;
        while (true) {
            long[] jArr = this.W;
            if (i10 == jArr.length) {
                return;
            }
            jArr[i10] = 0;
            i10++;
        }
    }

    protected void s(byte[] bArr) {
        int iA = org.bouncycastle.util.f.a(bArr, 8);
        this.xBufOff = iA;
        System.arraycopy(bArr, 0, this.xBuf, 0, iA);
        this.byteCount1 = org.bouncycastle.util.f.b(bArr, 12);
        this.byteCount2 = org.bouncycastle.util.f.b(bArr, 20);
        this.H1 = org.bouncycastle.util.f.b(bArr, 28);
        this.H2 = org.bouncycastle.util.f.b(bArr, 36);
        this.H3 = org.bouncycastle.util.f.b(bArr, 44);
        this.H4 = org.bouncycastle.util.f.b(bArr, 52);
        this.H5 = org.bouncycastle.util.f.b(bArr, 60);
        this.H6 = org.bouncycastle.util.f.b(bArr, 68);
        this.H7 = org.bouncycastle.util.f.b(bArr, 76);
        this.H8 = org.bouncycastle.util.f.b(bArr, 84);
        this.wOff = org.bouncycastle.util.f.a(bArr, 92);
        for (int i10 = 0; i10 < this.wOff; i10++) {
            this.W[i10] = org.bouncycastle.util.f.b(bArr, (i10 * 8) + 96);
        }
    }

    @Override // x8.c
    public void update(byte[] bArr, int i10, int i11) {
        while (this.xBufOff != 0 && i11 > 0) {
            c(bArr[i10]);
            i10++;
            i11--;
        }
        while (i11 > this.xBuf.length) {
            q(bArr, i10);
            byte[] bArr2 = this.xBuf;
            i10 += bArr2.length;
            i11 -= bArr2.length;
            this.byteCount1 += (long) bArr2.length;
        }
        while (i11 > 0) {
            c(bArr[i10]);
            i10++;
            i11--;
        }
    }

    protected c(c cVar) {
        this.xBuf = new byte[8];
        this.W = new long[80];
        m(cVar);
    }
}
