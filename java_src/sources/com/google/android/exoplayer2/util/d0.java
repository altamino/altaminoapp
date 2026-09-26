package com.google.android.exoplayer2.util;

/* JADX INFO: loaded from: classes7.dex */
public final class d0 {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    private byte[] data;

    private int f() {
        int i10 = 0;
        while (!d()) {
            i10++;
        }
        return ((1 << i10) - 1) + (i10 > 0 ? e(i10) : 0);
    }

    private boolean j(int i10) {
        if (2 <= i10 && i10 < this.byteLimit) {
            byte[] bArr = this.data;
            if (bArr[i10] == 3 && bArr[i10 - 2] == 0 && bArr[i10 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    private void a() {
        int i10;
        int i11 = this.byteOffset;
        a.g(i11 >= 0 && (i11 < (i10 = this.byteLimit) || (i11 == i10 && this.bitOffset == 0)));
    }

    public boolean b(int i10) {
        int i11 = this.byteOffset;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        int i14 = (this.bitOffset + i10) - (i12 * 8);
        if (i14 > 7) {
            i13++;
            i14 -= 8;
        }
        while (true) {
            i11++;
            if (i11 > i13 || i13 >= this.byteLimit) {
                break;
            }
            if (j(i11)) {
                i13++;
                i11 += 2;
            }
        }
        int i15 = this.byteLimit;
        if (i13 >= i15) {
            return i13 == i15 && i14 == 0;
        }
        return true;
    }

    public boolean c() {
        int i10 = this.byteOffset;
        int i11 = this.bitOffset;
        int i12 = 0;
        while (this.byteOffset < this.byteLimit && !d()) {
            i12++;
        }
        boolean z6 = this.byteOffset == this.byteLimit;
        this.byteOffset = i10;
        this.bitOffset = i11;
        return !z6 && b((i12 * 2) + 1);
    }

    public boolean d() {
        boolean z6 = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        k();
        return z6;
    }

    public int e(int i10) {
        int i11;
        this.bitOffset += i10;
        int i12 = 0;
        while (true) {
            i11 = this.bitOffset;
            int i13 = 2;
            if (i11 <= 8) {
                break;
            }
            int i14 = i11 - 8;
            this.bitOffset = i14;
            byte[] bArr = this.data;
            int i15 = this.byteOffset;
            i12 |= (bArr[i15] & 255) << i14;
            if (!j(i15 + 1)) {
                i13 = 1;
            }
            this.byteOffset = i15 + i13;
        }
        byte[] bArr2 = this.data;
        int i16 = this.byteOffset;
        int i17 = ((-1) >>> (32 - i10)) & (i12 | ((bArr2[i16] & 255) >> (8 - i11)));
        if (i11 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i16 + (j(i16 + 1) ? 2 : 1);
        }
        a();
        return i17;
    }

    public void i(byte[] bArr, int i10, int i11) {
        this.data = bArr;
        this.byteOffset = i10;
        this.byteLimit = i11;
        this.bitOffset = 0;
        a();
    }

    public void k() {
        int i10 = this.bitOffset + 1;
        this.bitOffset = i10;
        if (i10 == 8) {
            this.bitOffset = 0;
            int i11 = this.byteOffset;
            this.byteOffset = i11 + (j(i11 + 1) ? 2 : 1);
        }
        a();
    }

    public void l(int i10) {
        int i11 = this.byteOffset;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        this.byteOffset = i13;
        int i14 = this.bitOffset + (i10 - (i12 * 8));
        this.bitOffset = i14;
        if (i14 > 7) {
            this.byteOffset = i13 + 1;
            this.bitOffset = i14 - 8;
        }
        while (true) {
            i11++;
            if (i11 > this.byteOffset) {
                a();
                return;
            } else if (j(i11)) {
                this.byteOffset++;
                i11 += 2;
            }
        }
    }

    public d0(byte[] bArr, int i10, int i11) {
        i(bArr, i10, i11);
    }

    public int g() {
        int i10;
        int iF = f();
        if (iF % 2 == 0) {
            i10 = -1;
        } else {
            i10 = 1;
        }
        return i10 * ((iF + 1) / 2);
    }

    public int h() {
        return f();
    }
}
