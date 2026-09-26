package com.google.zxing.datamatrix.encoder;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class e {
    private final byte[] bits;
    private final CharSequence codewords;
    private final int numcols;
    private final int numrows;

    public final void h() {
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        int i14 = 4;
        while (true) {
            if (i14 == this.numrows && i12 == 0) {
                a(i13);
                i13++;
            }
            if (i14 == this.numrows - 2 && i12 == 0 && this.numcols % 4 != 0) {
                b(i13);
                i13++;
            }
            if (i14 == this.numrows - 2 && i12 == 0 && this.numcols % 8 == 4) {
                c(i13);
                i13++;
            }
            if (i14 == this.numrows + 4 && i12 == 2 && this.numcols % 8 == 0) {
                d(i13);
                i13++;
            }
            while (true) {
                if (i14 < this.numrows && i12 >= 0 && !f(i12, i14)) {
                    j(i14, i12, i13);
                    i13++;
                }
                int i15 = i14 - 2;
                int i16 = i12 + 2;
                if (i15 < 0 || i16 >= this.numcols) {
                    break;
                }
                i14 = i15;
                i12 = i16;
            }
            int i17 = i14 - 1;
            int i18 = i12 + 5;
            while (true) {
                if (i17 >= 0 && i18 < this.numcols && !f(i18, i17)) {
                    j(i17, i18, i13);
                    i13++;
                }
                int i19 = i17 + 2;
                int i20 = i18 - 2;
                i10 = this.numrows;
                if (i19 >= i10 || i20 < 0) {
                    break;
                }
                i17 = i19;
                i18 = i20;
            }
            i14 = i17 + 5;
            i12 = i18 - 1;
            if (i14 >= i10 && i12 >= (i11 = this.numcols)) {
                break;
            }
        }
        if (f(i11 - 1, i10 - 1)) {
            return;
        }
        i(this.numcols - 1, this.numrows - 1, true);
        i(this.numcols - 2, this.numrows - 2, true);
    }

    private void a(int i10) {
        g(this.numrows - 1, 0, i10, 1);
        g(this.numrows - 1, 1, i10, 2);
        g(this.numrows - 1, 2, i10, 3);
        g(0, this.numcols - 2, i10, 4);
        g(0, this.numcols - 1, i10, 5);
        g(1, this.numcols - 1, i10, 6);
        g(2, this.numcols - 1, i10, 7);
        g(3, this.numcols - 1, i10, 8);
    }

    private void b(int i10) {
        g(this.numrows - 3, 0, i10, 1);
        g(this.numrows - 2, 0, i10, 2);
        g(this.numrows - 1, 0, i10, 3);
        g(0, this.numcols - 4, i10, 4);
        g(0, this.numcols - 3, i10, 5);
        g(0, this.numcols - 2, i10, 6);
        g(0, this.numcols - 1, i10, 7);
        g(1, this.numcols - 1, i10, 8);
    }

    private void c(int i10) {
        g(this.numrows - 3, 0, i10, 1);
        g(this.numrows - 2, 0, i10, 2);
        g(this.numrows - 1, 0, i10, 3);
        g(0, this.numcols - 2, i10, 4);
        g(0, this.numcols - 1, i10, 5);
        g(1, this.numcols - 1, i10, 6);
        g(2, this.numcols - 1, i10, 7);
        g(3, this.numcols - 1, i10, 8);
    }

    private void d(int i10) {
        g(this.numrows - 1, 0, i10, 1);
        g(this.numrows - 1, this.numcols - 1, i10, 2);
        g(0, this.numcols - 3, i10, 3);
        g(0, this.numcols - 2, i10, 4);
        g(0, this.numcols - 1, i10, 5);
        g(1, this.numcols - 3, i10, 6);
        g(1, this.numcols - 2, i10, 7);
        g(1, this.numcols - 1, i10, 8);
    }

    private boolean f(int i10, int i11) {
        return this.bits[(i11 * this.numcols) + i10] >= 0;
    }

    private void g(int i10, int i11, int i12, int i13) {
        if (i10 < 0) {
            int i14 = this.numrows;
            i10 += i14;
            i11 += 4 - ((i14 + 4) % 8);
        }
        if (i11 < 0) {
            int i15 = this.numcols;
            i11 += i15;
            i10 += 4 - ((i15 + 4) % 8);
        }
        i(i11, i10, (this.codewords.charAt(i12) & (1 << (8 - i13))) != 0);
    }

    private void i(int i10, int i11, boolean z6) {
        this.bits[(i11 * this.numcols) + i10] = z6 ? (byte) 1 : (byte) 0;
    }

    private void j(int i10, int i11, int i12) {
        int i13 = i10 - 2;
        int i14 = i11 - 2;
        g(i13, i14, i12, 1);
        int i15 = i11 - 1;
        g(i13, i15, i12, 2);
        int i16 = i10 - 1;
        g(i16, i14, i12, 3);
        g(i16, i15, i12, 4);
        g(i16, i11, i12, 5);
        g(i10, i14, i12, 6);
        g(i10, i15, i12, 7);
        g(i10, i11, i12, 8);
    }

    public final boolean e(int i10, int i11) {
        return this.bits[(i11 * this.numcols) + i10] == 1;
    }

    public e(CharSequence charSequence, int i10, int i11) {
        this.codewords = charSequence;
        this.numcols = i10;
        this.numrows = i11;
        byte[] bArr = new byte[i10 * i11];
        this.bits = bArr;
        Arrays.fill(bArr, (byte) -1);
    }
}
