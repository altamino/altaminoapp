package com.google.android.exoplayer2.util;

import androidx.core.view.MotionEventCompat;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes7.dex */
public final class b0 {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    public byte[] data;

    public b0() {
        this.data = o0.EMPTY_BYTE_ARRAY;
    }

    public int b() {
        return ((this.byteLimit - this.byteOffset) * 8) - this.bitOffset;
    }

    public int e() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public int h(int i10) {
        int i11;
        if (i10 == 0) {
            return 0;
        }
        this.bitOffset += i10;
        int i12 = 0;
        while (true) {
            i11 = this.bitOffset;
            if (i11 <= 8) {
                break;
            }
            int i13 = i11 - 8;
            this.bitOffset = i13;
            byte[] bArr = this.data;
            int i14 = this.byteOffset;
            this.byteOffset = i14 + 1;
            i12 |= (bArr[i14] & 255) << i13;
        }
        byte[] bArr2 = this.data;
        int i15 = this.byteOffset;
        int i16 = ((-1) >>> (32 - i10)) & (i12 | ((bArr2[i15] & 255) >> (8 - i11)));
        if (i11 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i15 + 1;
        }
        a();
        return i16;
    }

    public void n(byte[] bArr) {
        o(bArr, bArr.length);
    }

    public void o(byte[] bArr, int i10) {
        this.data = bArr;
        this.byteOffset = 0;
        this.bitOffset = 0;
        this.byteLimit = i10;
    }

    private void a() {
        int i10;
        int i11 = this.byteOffset;
        a.g(i11 >= 0 && (i11 < (i10 = this.byteLimit) || (i11 == i10 && this.bitOffset == 0)));
    }

    public void c() {
        if (this.bitOffset == 0) {
            return;
        }
        this.bitOffset = 0;
        this.byteOffset++;
        a();
    }

    public int d() {
        a.g(this.bitOffset == 0);
        return this.byteOffset;
    }

    public void f(int i10, int i11) {
        if (i11 < 32) {
            i10 &= (1 << i11) - 1;
        }
        int iMin = Math.min(8 - this.bitOffset, i11);
        int i12 = this.bitOffset;
        int i13 = (8 - i12) - iMin;
        int i14 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i12) | ((1 << i13) - 1);
        byte[] bArr = this.data;
        int i15 = this.byteOffset;
        byte b7 = (byte) (i14 & bArr[i15]);
        bArr[i15] = b7;
        int i16 = i11 - iMin;
        bArr[i15] = (byte) (b7 | ((i10 >>> i16) << i13));
        int i17 = i15 + 1;
        while (i16 > 8) {
            this.data[i17] = (byte) (i10 >>> (i16 - 8));
            i16 -= 8;
            i17++;
        }
        int i18 = 8 - i16;
        byte[] bArr2 = this.data;
        byte b10 = (byte) (bArr2[i17] & ((1 << i18) - 1));
        bArr2[i17] = b10;
        bArr2[i17] = (byte) (((i10 & ((1 << i16) - 1)) << i18) | b10);
        r(i11);
        a();
    }

    public boolean g() {
        boolean z6 = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        q();
        return z6;
    }

    public void i(byte[] bArr, int i10, int i11) {
        int i12 = (i11 >> 3) + i10;
        while (i10 < i12) {
            byte[] bArr2 = this.data;
            int i13 = this.byteOffset;
            int i14 = i13 + 1;
            this.byteOffset = i14;
            byte b7 = bArr2[i13];
            int i15 = this.bitOffset;
            byte b10 = (byte) (b7 << i15);
            bArr[i10] = b10;
            bArr[i10] = (byte) (((255 & bArr2[i14]) >> (8 - i15)) | b10);
            i10++;
        }
        int i16 = i11 & 7;
        if (i16 == 0) {
            return;
        }
        byte b11 = (byte) (bArr[i12] & (255 >> i16));
        bArr[i12] = b11;
        int i17 = this.bitOffset;
        if (i17 + i16 > 8) {
            byte[] bArr3 = this.data;
            int i18 = this.byteOffset;
            this.byteOffset = i18 + 1;
            bArr[i12] = (byte) (b11 | ((bArr3[i18] & 255) << i17));
            this.bitOffset = i17 - 8;
        }
        int i19 = this.bitOffset + i16;
        this.bitOffset = i19;
        byte[] bArr4 = this.data;
        int i20 = this.byteOffset;
        bArr[i12] = (byte) (((byte) (((255 & bArr4[i20]) >> (8 - i19)) << (8 - i16))) | bArr[i12]);
        if (i19 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i20 + 1;
        }
        a();
    }

    public long j(int i10) {
        return i10 <= 32 ? o0.N0(h(i10)) : o0.M0(h(i10 - 32), h(32));
    }

    public void k(byte[] bArr, int i10, int i11) {
        a.g(this.bitOffset == 0);
        System.arraycopy(this.data, this.byteOffset, bArr, i10, i11);
        this.byteOffset += i11;
        a();
    }

    public String l(int i10, Charset charset) {
        byte[] bArr = new byte[i10];
        k(bArr, 0, i10);
        return new String(bArr, charset);
    }

    public void p(int i10) {
        int i11 = i10 / 8;
        this.byteOffset = i11;
        this.bitOffset = i10 - (i11 * 8);
        a();
    }

    public void q() {
        int i10 = this.bitOffset + 1;
        this.bitOffset = i10;
        if (i10 == 8) {
            this.bitOffset = 0;
            this.byteOffset++;
        }
        a();
    }

    public void r(int i10) {
        int i11 = i10 / 8;
        int i12 = this.byteOffset + i11;
        this.byteOffset = i12;
        int i13 = this.bitOffset + (i10 - (i11 * 8));
        this.bitOffset = i13;
        if (i13 > 7) {
            this.byteOffset = i12 + 1;
            this.bitOffset = i13 - 8;
        }
        a();
    }

    public void s(int i10) {
        a.g(this.bitOffset == 0);
        this.byteOffset += i10;
        a();
    }

    public b0(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public void m(c0 c0Var) {
        o(c0Var.d(), c0Var.f());
        p(c0Var.e() * 8);
    }

    public b0(byte[] bArr, int i10) {
        this.data = bArr;
        this.byteLimit = i10;
    }
}
