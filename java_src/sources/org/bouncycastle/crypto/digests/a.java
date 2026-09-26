package org.bouncycastle.crypto.digests;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a implements x8.c {
    private static final int BYTE_LENGTH = 64;
    private long byteCount;
    private final byte[] xBuf;
    private int xBufOff;

    protected a() {
        this.xBuf = new byte[4];
        this.xBufOff = 0;
    }

    @Override // x8.c
    public void c(byte b7) {
        byte[] bArr = this.xBuf;
        int i10 = this.xBufOff;
        int i11 = i10 + 1;
        this.xBufOff = i11;
        bArr[i10] = b7;
        if (i11 == bArr.length) {
            j(bArr, 0);
            this.xBufOff = 0;
        }
        this.byteCount++;
    }

    protected void f(a aVar) {
        byte[] bArr = aVar.xBuf;
        System.arraycopy(bArr, 0, this.xBuf, 0, bArr.length);
        this.xBufOff = aVar.xBufOff;
        this.byteCount = aVar.byteCount;
    }

    public void g() {
        long j6 = this.byteCount << 3;
        byte b7 = -128;
        while (true) {
            c(b7);
            if (this.xBufOff == 0) {
                i(j6);
                h();
                return;
            }
            b7 = 0;
        }
    }

    protected abstract void h();

    protected abstract void i(long j6);

    protected abstract void j(byte[] bArr, int i10);

    public void k() {
        this.byteCount = 0L;
        this.xBufOff = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.xBuf;
            if (i10 >= bArr.length) {
                return;
            }
            bArr[i10] = 0;
            i10++;
        }
    }

    @Override // x8.c
    public void update(byte[] bArr, int i10, int i11) {
        int i12 = 0;
        int iMax = Math.max(0, i11);
        if (this.xBufOff != 0) {
            int i13 = 0;
            while (true) {
                if (i13 >= iMax) {
                    i12 = i13;
                    break;
                }
                byte[] bArr2 = this.xBuf;
                int i14 = this.xBufOff;
                int i15 = i14 + 1;
                this.xBufOff = i15;
                int i16 = i13 + 1;
                bArr2[i14] = bArr[i13 + i10];
                if (i15 == 4) {
                    j(bArr2, 0);
                    this.xBufOff = 0;
                    i12 = i16;
                    break;
                }
                i13 = i16;
            }
        }
        int i17 = ((iMax - i12) & (-4)) + i12;
        while (i12 < i17) {
            j(bArr, i10 + i12);
            i12 += 4;
        }
        while (i12 < iMax) {
            byte[] bArr3 = this.xBuf;
            int i18 = this.xBufOff;
            this.xBufOff = i18 + 1;
            bArr3[i18] = bArr[i12 + i10];
            i12++;
        }
        this.byteCount += (long) iMax;
    }

    protected a(a aVar) {
        this.xBuf = new byte[4];
        f(aVar);
    }

    protected a(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        this.xBuf = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.xBufOff = org.bouncycastle.util.f.a(bArr, 4);
        this.byteCount = org.bouncycastle.util.f.b(bArr, 8);
    }
}
