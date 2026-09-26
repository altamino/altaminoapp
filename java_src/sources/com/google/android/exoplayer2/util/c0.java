package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;
import java.nio.charset.Charset;
import java.util.Arrays;
import okio.Utf8;

/* JADX INFO: loaded from: classes7.dex */
public final class c0 {
    private byte[] data;
    private int limit;
    private int position;

    public c0() {
        this.data = o0.EMPTY_BYTE_ARRAY;
    }

    public void M(byte[] bArr) {
        N(bArr, bArr.length);
    }

    public void N(byte[] bArr, int i10) {
        this.data = bArr;
        this.limit = i10;
        this.position = 0;
    }

    public int a() {
        return this.limit - this.position;
    }

    public byte[] d() {
        return this.data;
    }

    public int e() {
        return this.position;
    }

    public int f() {
        return this.limit;
    }

    @Nullable
    public String x() {
        return k((char) 0);
    }

    public String A(int i10) {
        return B(i10, com.google.common.base.e.UTF_8);
    }

    public String B(int i10, Charset charset) {
        String str = new String(this.data, this.position, i10, charset);
        this.position += i10;
        return str;
    }

    public int D() {
        byte[] bArr = this.data;
        int i10 = this.position;
        this.position = i10 + 1;
        return bArr[i10] & 255;
    }

    public int E() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = (bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8);
        this.position = i10 + 4;
        return i11;
    }

    public long F() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 3;
        long j6 = ((((long) bArr[i10]) & 255) << 24) | ((((long) bArr[i10 + 1]) & 255) << 16) | ((((long) bArr[i10 + 2]) & 255) << 8);
        this.position = i10 + 4;
        return (((long) bArr[i11]) & 255) | j6;
    }

    public int G() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 2;
        int i12 = ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10] & 255) << 16);
        this.position = i10 + 3;
        return (bArr[i11] & 255) | i12;
    }

    public int J() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 1;
        int i12 = (bArr[i10] & 255) << 8;
        this.position = i10 + 2;
        return (bArr[i11] & 255) | i12;
    }

    public long K() {
        int i10;
        int i11;
        long j6 = this.data[this.position];
        int i12 = 7;
        while (true) {
            if (i12 >= 0) {
                int i13 = 1 << i12;
                if ((((long) i13) & j6) == 0) {
                    if (i12 < 6) {
                        j6 &= (long) (i13 - 1);
                        i11 = 7 - i12;
                        break;
                    }
                    if (i12 == 7) {
                        i11 = 1;
                        break;
                    }
                } else {
                    i12--;
                }
            }
            i11 = 0;
            break;
        }
        if (i11 == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j6);
        }
        for (i10 = 1; i10 < i11; i10++) {
            byte b7 = this.data[this.position + i10];
            if ((b7 & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j6);
            }
            j6 = (j6 << 6) | ((long) (b7 & Utf8.REPLACEMENT_BYTE));
        }
        this.position += i11;
        return j6;
    }

    public void O(int i10) {
        a.a(i10 >= 0 && i10 <= this.data.length);
        this.limit = i10;
    }

    public void P(int i10) {
        a.a(i10 >= 0 && i10 <= this.limit);
        this.position = i10;
    }

    public void Q(int i10) {
        P(this.position + i10);
    }

    public int b() {
        return this.data.length;
    }

    public char g() {
        byte[] bArr = this.data;
        int i10 = this.position;
        return (char) ((bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8));
    }

    public int h() {
        return this.data[this.position] & 255;
    }

    public void i(b0 b0Var, int i10) {
        j(b0Var.data, 0, i10);
        b0Var.p(0);
    }

    public void j(byte[] bArr, int i10, int i11) {
        System.arraycopy(this.data, this.position, bArr, i10, i11);
        this.position += i11;
    }

    public int n() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10] & 255) << 24);
        int i12 = i10 + 3;
        int i13 = i11 | ((bArr[i10 + 2] & 255) << 8);
        this.position = i10 + 4;
        return (bArr[i12] & 255) | i13;
    }

    public int o() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 2;
        int i12 = ((bArr[i10 + 1] & 255) << 8) | (((bArr[i10] & 255) << 24) >> 8);
        this.position = i10 + 3;
        return (bArr[i11] & 255) | i12;
    }

    public int q() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = ((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255);
        int i12 = i10 + 3;
        int i13 = i11 | ((bArr[i10 + 2] & 255) << 16);
        this.position = i10 + 4;
        return ((bArr[i12] & 255) << 24) | i13;
    }

    public long r() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 7;
        long j6 = (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16) | ((((long) bArr[i10 + 3]) & 255) << 24) | ((((long) bArr[i10 + 4]) & 255) << 32) | ((((long) bArr[i10 + 5]) & 255) << 40) | ((((long) bArr[i10 + 6]) & 255) << 48);
        this.position = i10 + 8;
        return ((((long) bArr[i11]) & 255) << 56) | j6;
    }

    public short s() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 1;
        int i12 = bArr[i10] & 255;
        this.position = i10 + 2;
        return (short) (((bArr[i11] & 255) << 8) | i12);
    }

    public long t() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 3;
        long j6 = (((long) bArr[i10]) & 255) | ((((long) bArr[i10 + 1]) & 255) << 8) | ((((long) bArr[i10 + 2]) & 255) << 16);
        this.position = i10 + 4;
        return ((((long) bArr[i11]) & 255) << 24) | j6;
    }

    public int v() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 1;
        int i12 = bArr[i10] & 255;
        this.position = i10 + 2;
        return ((bArr[i11] & 255) << 8) | i12;
    }

    public long w() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 7;
        long j6 = ((((long) bArr[i10]) & 255) << 56) | ((((long) bArr[i10 + 1]) & 255) << 48) | ((((long) bArr[i10 + 2]) & 255) << 40) | ((((long) bArr[i10 + 3]) & 255) << 32) | ((((long) bArr[i10 + 4]) & 255) << 24) | ((((long) bArr[i10 + 5]) & 255) << 16) | ((((long) bArr[i10 + 6]) & 255) << 8);
        this.position = i10 + 8;
        return (((long) bArr[i11]) & 255) | j6;
    }

    public String y(int i10) {
        if (i10 == 0) {
            return "";
        }
        int i11 = this.position;
        int i12 = (i11 + i10) - 1;
        String strB = o0.B(this.data, i11, (i12 >= this.limit || this.data[i12] != 0) ? i10 : i10 - 1);
        this.position += i10;
        return strB;
    }

    public short z() {
        byte[] bArr = this.data;
        int i10 = this.position;
        int i11 = i10 + 1;
        int i12 = (bArr[i10] & 255) << 8;
        this.position = i10 + 2;
        return (short) ((bArr[i11] & 255) | i12);
    }

    public c0(int i10) {
        this.data = new byte[i10];
        this.limit = i10;
    }

    public int C() {
        return (D() << 21) | (D() << 14) | (D() << 7) | D();
    }

    public int H() {
        int iN = n();
        if (iN >= 0) {
            return iN;
        }
        throw new IllegalStateException("Top bit not zero: " + iN);
    }

    public long I() {
        long jW = w();
        if (jW >= 0) {
            return jW;
        }
        throw new IllegalStateException("Top bit not zero: " + jW);
    }

    public void L(int i10) {
        byte[] bArr;
        if (b() < i10) {
            bArr = new byte[i10];
        } else {
            bArr = this.data;
        }
        N(bArr, i10);
    }

    public void c(int i10) {
        if (i10 > b()) {
            this.data = Arrays.copyOf(this.data, i10);
        }
    }

    @Nullable
    public String k(char c7) {
        if (a() == 0) {
            return null;
        }
        int i10 = this.position;
        while (i10 < this.limit && this.data[i10] != c7) {
            i10++;
        }
        byte[] bArr = this.data;
        int i11 = this.position;
        String strB = o0.B(bArr, i11, i10 - i11);
        this.position = i10;
        if (i10 < this.limit) {
            this.position = i10 + 1;
        }
        return strB;
    }

    public double l() {
        return Double.longBitsToDouble(w());
    }

    public float m() {
        return Float.intBitsToFloat(n());
    }

    @Nullable
    public String p() {
        if (a() == 0) {
            return null;
        }
        int i10 = this.position;
        while (i10 < this.limit && !o0.p0(this.data[i10])) {
            i10++;
        }
        int i11 = this.position;
        if (i10 - i11 >= 3) {
            byte[] bArr = this.data;
            if (bArr[i11] == -17 && bArr[i11 + 1] == -69 && bArr[i11 + 2] == -65) {
                this.position = i11 + 3;
            }
        }
        byte[] bArr2 = this.data;
        int i12 = this.position;
        String strB = o0.B(bArr2, i12, i10 - i12);
        this.position = i10;
        int i13 = this.limit;
        if (i10 == i13) {
            return strB;
        }
        byte[] bArr3 = this.data;
        if (bArr3[i10] == 13) {
            int i14 = i10 + 1;
            this.position = i14;
            if (i14 == i13) {
                return strB;
            }
        }
        int i15 = this.position;
        if (bArr3[i15] == 10) {
            this.position = i15 + 1;
        }
        return strB;
    }

    public int u() {
        int iQ = q();
        if (iQ >= 0) {
            return iQ;
        }
        throw new IllegalStateException("Top bit not zero: " + iQ);
    }

    public c0(byte[] bArr) {
        this.data = bArr;
        this.limit = bArr.length;
    }

    public c0(byte[] bArr, int i10) {
        this.data = bArr;
        this.limit = i10;
    }
}
