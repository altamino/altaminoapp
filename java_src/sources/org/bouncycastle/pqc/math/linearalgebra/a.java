package org.bouncycastle.pqc.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes10.dex */
public class a extends h {
    private int length;
    private int[][] matrix;

    public a(int i10, char c7) {
        this(i10, c7, new SecureRandom());
    }

    private void c(int i10, SecureRandom secureRandom) {
        this.numRows = i10;
        this.numColumns = i10;
        int i11 = (i10 + 31) >>> 5;
        this.length = i11;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i10, i11);
        for (int i12 = 0; i12 < this.numRows; i12++) {
            int i13 = i12 >>> 5;
            int i14 = i12 & 31;
            int i15 = 31 - i14;
            int i16 = 1 << i14;
            for (int i17 = 0; i17 < i13; i17++) {
                this.matrix[i12][i17] = secureRandom.nextInt();
            }
            this.matrix[i12][i13] = i16 | (secureRandom.nextInt() >>> i15);
            while (true) {
                i13++;
                if (i13 < this.length) {
                    this.matrix[i12][i13] = 0;
                }
            }
        }
    }

    private void d(int i10, SecureRandom secureRandom) {
        this.numRows = i10;
        this.numColumns = i10;
        int i11 = (i10 + 31) >>> 5;
        this.length = i11;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i10, i11);
        a aVar = (a) new a(i10, h.MATRIX_TYPE_RANDOM_LT, secureRandom).i(new a(i10, h.MATRIX_TYPE_RANDOM_UT, secureRandom));
        int[] iArrB = new i(i10, secureRandom).b();
        for (int i12 = 0; i12 < i10; i12++) {
            System.arraycopy(aVar.matrix[i12], 0, this.matrix[iArrB[i12]], 0, this.length);
        }
    }

    private void e(int i10, SecureRandom secureRandom) {
        int i11;
        this.numRows = i10;
        this.numColumns = i10;
        int i12 = (i10 + 31) >>> 5;
        this.length = i12;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i10, i12);
        int i13 = i10 & 31;
        int i14 = i13 == 0 ? -1 : (1 << i13) - 1;
        for (int i15 = 0; i15 < this.numRows; i15++) {
            int i16 = i15 >>> 5;
            int i17 = i15 & 31;
            int i18 = 1 << i17;
            for (int i19 = 0; i19 < i16; i19++) {
                this.matrix[i15][i19] = 0;
            }
            this.matrix[i15][i16] = (secureRandom.nextInt() << i17) | i18;
            while (true) {
                i16++;
                i11 = this.length;
                if (i16 < i11) {
                    this.matrix[i15][i16] = secureRandom.nextInt();
                }
            }
            int[] iArr = this.matrix[i15];
            int i20 = i11 - 1;
            iArr[i20] = iArr[i20] & i14;
        }
    }

    private void f(int i10) {
        this.numRows = i10;
        this.numColumns = i10;
        int i11 = (i10 + 31) >>> 5;
        this.length = i11;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i10, i11);
        for (int i12 = 0; i12 < this.numRows; i12++) {
            for (int i13 = 0; i13 < this.length; i13++) {
                this.matrix[i12][i13] = 0;
            }
        }
        for (int i14 = 0; i14 < this.numRows; i14++) {
            this.matrix[i14][i14 >>> 5] = 1 << (i14 & 31);
        }
    }

    private void g(int i10, int i11) {
        this.numRows = i10;
        this.numColumns = i11;
        int i12 = (i11 + 31) >>> 5;
        this.length = i12;
        this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i10, i12);
        for (int i13 = 0; i13 < this.numRows; i13++) {
            for (int i14 = 0; i14 < this.length; i14++) {
                this.matrix[i13][i14] = 0;
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.numRows != aVar.numRows || this.numColumns != aVar.numColumns || this.length != aVar.length) {
            return false;
        }
        for (int i10 = 0; i10 < this.numRows; i10++) {
            if (!e.b(this.matrix[i10], aVar.matrix[i10])) {
                return false;
            }
        }
        return true;
    }

    public byte[] h() {
        int i10 = (this.numColumns + 7) >>> 3;
        int i11 = this.numRows;
        int i12 = 8;
        byte[] bArr = new byte[(i10 * i11) + 8];
        g.a(i11, bArr, 0);
        g.a(this.numColumns, bArr, 4);
        int i13 = this.numColumns;
        int i14 = i13 >>> 5;
        int i15 = i13 & 31;
        for (int i16 = 0; i16 < this.numRows; i16++) {
            int i17 = 0;
            while (i17 < i14) {
                g.a(this.matrix[i16][i17], bArr, i12);
                i17++;
                i12 += 4;
            }
            int i18 = 0;
            while (i18 < i15) {
                bArr[i12] = (byte) ((this.matrix[i16][i14] >>> i18) & 255);
                i18 += 8;
                i12++;
            }
        }
        return bArr;
    }

    public int hashCode() {
        int iP = (((this.numRows * 31) + this.numColumns) * 31) + this.length;
        for (int i10 = 0; i10 < this.numRows; i10++) {
            iP = (iP * 31) + org.bouncycastle.util.a.p(this.matrix[i10]);
        }
        return iP;
    }

    public h i(h hVar) {
        if (!(hVar instanceof a)) {
            throw new ArithmeticException("matrix is not defined over GF(2)");
        }
        if (hVar.numRows != this.numColumns) {
            throw new ArithmeticException("length mismatch");
        }
        a aVar = (a) hVar;
        a aVar2 = new a(this.numRows, hVar.numColumns);
        int i10 = this.numColumns & 31;
        int i11 = this.length;
        if (i10 != 0) {
            i11--;
        }
        for (int i12 = 0; i12 < this.numRows; i12++) {
            int i13 = 0;
            for (int i14 = 0; i14 < i11; i14++) {
                int i15 = this.matrix[i12][i14];
                for (int i16 = 0; i16 < 32; i16++) {
                    if (((1 << i16) & i15) != 0) {
                        for (int i17 = 0; i17 < aVar.length; i17++) {
                            int[] iArr = aVar2.matrix[i12];
                            iArr[i17] = iArr[i17] ^ aVar.matrix[i13][i17];
                        }
                    }
                    i13++;
                }
            }
            int i18 = this.matrix[i12][this.length - 1];
            for (int i19 = 0; i19 < i10; i19++) {
                if (((1 << i19) & i18) != 0) {
                    for (int i20 = 0; i20 < aVar.length; i20++) {
                        int[] iArr2 = aVar2.matrix[i12];
                        iArr2[i20] = iArr2[i20] ^ aVar.matrix[i13][i20];
                    }
                }
                i13++;
            }
        }
        return aVar2;
    }

    public String toString() {
        int i10 = this.numColumns & 31;
        int i11 = this.length;
        if (i10 != 0) {
            i11--;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i12 = 0; i12 < this.numRows; i12++) {
            stringBuffer.append(i12 + ": ");
            for (int i13 = 0; i13 < i11; i13++) {
                int i14 = this.matrix[i12][i13];
                for (int i15 = 0; i15 < 32; i15++) {
                    if (((i14 >>> i15) & 1) == 0) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append('1');
                    }
                }
                stringBuffer.append(' ');
            }
            int i16 = this.matrix[i12][this.length - 1];
            for (int i17 = 0; i17 < i10; i17++) {
                if (((i16 >>> i17) & 1) == 0) {
                    stringBuffer.append('0');
                } else {
                    stringBuffer.append('1');
                }
            }
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }

    public a(int i10, char c7, SecureRandom secureRandom) {
        if (i10 <= 0) {
            throw new ArithmeticException("Size of matrix is non-positive.");
        }
        if (c7 == 'I') {
            f(i10);
            return;
        }
        if (c7 == 'L') {
            c(i10, secureRandom);
            return;
        }
        if (c7 == 'R') {
            d(i10, secureRandom);
        } else if (c7 == 'U') {
            e(i10, secureRandom);
        } else {
            if (c7 != 'Z') {
                throw new ArithmeticException("Unknown matrix type.");
            }
            g(i10, i10);
        }
    }

    private a(int i10, int i11) {
        if (i11 <= 0 || i10 <= 0) {
            throw new ArithmeticException("size of matrix is non-positive");
        }
        g(i10, i11);
    }

    public a(int i10, int[][] iArr) {
        int[] iArr2 = iArr[0];
        if (iArr2.length != ((i10 + 31) >> 5)) {
            throw new ArithmeticException("Int array does not match given number of columns.");
        }
        this.numColumns = i10;
        this.numRows = iArr.length;
        this.length = iArr2.length;
        int i11 = i10 & 31;
        int i12 = i11 == 0 ? -1 : (1 << i11) - 1;
        for (int i13 = 0; i13 < this.numRows; i13++) {
            int[] iArr3 = iArr[i13];
            int i14 = this.length - 1;
            iArr3[i14] = iArr3[i14] & i12;
        }
        this.matrix = iArr;
    }

    public a(a aVar) {
        this.numColumns = aVar.a();
        this.numRows = aVar.b();
        this.length = aVar.length;
        this.matrix = new int[aVar.matrix.length][];
        int i10 = 0;
        while (true) {
            int[][] iArr = this.matrix;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = e.a(aVar.matrix[i10]);
            i10++;
        }
    }

    public a(byte[] bArr) {
        if (bArr.length < 9) {
            throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
        }
        this.numRows = g.e(bArr, 0);
        int iE = g.e(bArr, 4);
        this.numColumns = iE;
        int i10 = this.numRows;
        int i11 = ((iE + 7) >>> 3) * i10;
        if (i10 > 0) {
            int i12 = 8;
            if (i11 == bArr.length - 8) {
                int i13 = (iE + 31) >>> 5;
                this.length = i13;
                this.matrix = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i10, i13);
                int i14 = this.numColumns;
                int i15 = i14 >> 5;
                int i16 = i14 & 31;
                for (int i17 = 0; i17 < this.numRows; i17++) {
                    int i18 = 0;
                    while (i18 < i15) {
                        this.matrix[i17][i18] = g.e(bArr, i12);
                        i18++;
                        i12 += 4;
                    }
                    int i19 = 0;
                    while (i19 < i16) {
                        int[] iArr = this.matrix[i17];
                        iArr[i15] = ((bArr[i12] & 255) << i19) ^ iArr[i15];
                        i19 += 8;
                        i12++;
                    }
                }
                return;
            }
        }
        throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
    }
}
