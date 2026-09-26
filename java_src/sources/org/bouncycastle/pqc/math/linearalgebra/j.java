package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes10.dex */
public class j {
    public static final char RANDOM_IRREDUCIBLE_POLYNOMIAL = 'I';
    private int[] coefficients;
    private int degree;
    private b field;

    public j(b bVar) {
        this.field = bVar;
        this.degree = -1;
        this.coefficients = new int[1];
    }

    private int[] a(int[] iArr, int[] iArr2) {
        int[] iArr3;
        if (iArr.length < iArr2.length) {
            iArr3 = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
        } else {
            iArr3 = new int[iArr.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            iArr = iArr2;
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr3[length] = this.field.a(iArr3[length], iArr[length]);
        }
        return iArr3;
    }

    private static int c(int[] iArr) {
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        return length;
    }

    private void d() {
        int length = this.coefficients.length;
        do {
            this.degree = length - 1;
            length = this.degree;
            if (length < 0) {
                return;
            }
        } while (this.coefficients[length] == 0);
    }

    private int[] e(int i10, SecureRandom secureRandom) {
        int[] iArr = new int[i10 + 1];
        iArr[i10] = 1;
        iArr[0] = this.field.g(secureRandom);
        for (int i11 = 1; i11 < i10; i11++) {
            iArr[i11] = this.field.f(secureRandom);
        }
        while (!m(iArr)) {
            int iA = m.a(secureRandom, i10);
            if (iA == 0) {
                iArr[0] = this.field.g(secureRandom);
            } else {
                iArr[iA] = this.field.f(secureRandom);
            }
        }
        return iArr;
    }

    private int[] g(int[] iArr, int[] iArr2) {
        if (c(iArr) == -1) {
            return iArr2;
        }
        while (c(iArr2) != -1) {
            int[] iArrO = o(iArr, iArr2);
            int length = iArr2.length;
            int[] iArr3 = new int[length];
            System.arraycopy(iArr2, 0, iArr3, 0, length);
            int length2 = iArrO.length;
            int[] iArr4 = new int[length2];
            System.arraycopy(iArrO, 0, iArr4, 0, length2);
            iArr2 = iArr4;
            iArr = iArr3;
        }
        return s(iArr, this.field.h(k(iArr)));
    }

    private static int k(int[] iArr) {
        int iC = c(iArr);
        if (iC == -1) {
            return 0;
        }
        return iArr[iC];
    }

    private static boolean l(int[] iArr, int[] iArr2) {
        int iC = c(iArr);
        if (iC != c(iArr2)) {
            return false;
        }
        for (int i10 = 0; i10 <= iC; i10++) {
            if (iArr[i10] != iArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    private boolean m(int[] iArr) {
        if (iArr[0] == 0) {
            return false;
        }
        int iC = c(iArr) >> 1;
        int[] iArrV = {0, 1};
        int[] iArr2 = {0, 1};
        int iD = this.field.d();
        for (int i10 = 0; i10 < iC; i10++) {
            for (int i11 = iD - 1; i11 >= 0; i11--) {
                iArrV = p(iArrV, iArrV, iArr);
            }
            iArrV = v(iArrV);
            if (c(g(a(iArrV, iArr2), iArr)) != 0) {
                return false;
            }
        }
        return true;
    }

    private int[] o(int[] iArr, int[] iArr2) {
        int iC = c(iArr2);
        if (iC == -1) {
            throw new ArithmeticException("Division by zero");
        }
        int length = iArr.length;
        int[] iArrA = new int[length];
        int iH = this.field.h(k(iArr2));
        System.arraycopy(iArr, 0, iArrA, 0, length);
        while (iC <= c(iArrA)) {
            iArrA = a(s(t(iArr2, c(iArrA) - iC), this.field.j(k(iArrA), iH)), iArrA);
        }
        return iArrA;
    }

    private int[] p(int[] iArr, int[] iArr2, int[] iArr3) {
        return o(u(iArr, iArr2), iArr3);
    }

    private int[] s(int[] iArr, int i10) {
        int iC = c(iArr);
        if (iC == -1 || i10 == 0) {
            return new int[1];
        }
        if (i10 == 1) {
            return e.a(iArr);
        }
        int[] iArr2 = new int[iC + 1];
        while (iC >= 0) {
            iArr2[iC] = this.field.j(iArr[iC], i10);
            iC--;
        }
        return iArr2;
    }

    private static int[] t(int[] iArr, int i10) {
        int iC = c(iArr);
        if (iC == -1) {
            return new int[1];
        }
        int[] iArr2 = new int[iC + i10 + 1];
        System.arraycopy(iArr, 0, iArr2, i10, iC + 1);
        return iArr2;
    }

    private int[] u(int[] iArr, int[] iArr2) {
        if (c(iArr) < c(iArr2)) {
            iArr2 = iArr;
            iArr = iArr2;
        }
        int[] iArrV = v(iArr);
        int[] iArrV2 = v(iArr2);
        if (iArrV2.length == 1) {
            return s(iArrV, iArrV2[0]);
        }
        int length = iArrV.length;
        int length2 = iArrV2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        if (length2 != length) {
            int[] iArr4 = new int[length2];
            int i10 = length - length2;
            int[] iArr5 = new int[i10];
            System.arraycopy(iArrV, 0, iArr4, 0, length2);
            System.arraycopy(iArrV, length2, iArr5, 0, i10);
            return a(u(iArr4, iArrV2), t(u(iArr5, iArrV2), length2));
        }
        int i11 = (length + 1) >>> 1;
        int i12 = length - i11;
        int[] iArr6 = new int[i11];
        int[] iArr7 = new int[i11];
        int[] iArr8 = new int[i12];
        int[] iArr9 = new int[i12];
        System.arraycopy(iArrV, 0, iArr6, 0, i11);
        System.arraycopy(iArrV, i11, iArr8, 0, i12);
        System.arraycopy(iArrV2, 0, iArr7, 0, i11);
        System.arraycopy(iArrV2, i11, iArr9, 0, i12);
        int[] iArrA = a(iArr6, iArr8);
        int[] iArrA2 = a(iArr7, iArr9);
        int[] iArrU = u(iArr6, iArr7);
        int[] iArrU2 = u(iArrA, iArrA2);
        int[] iArrU3 = u(iArr8, iArr9);
        return a(t(a(a(a(iArrU2, iArrU), iArrU3), t(iArrU3, i11)), i11), iArrU);
    }

    private static int[] v(int[] iArr) {
        int iC = c(iArr);
        if (iC == -1) {
            return new int[1];
        }
        int i10 = iC + 1;
        if (iArr.length == i10) {
            return e.a(iArr);
        }
        int[] iArr2 = new int[i10];
        System.arraycopy(iArr, 0, iArr2, 0, i10);
        return iArr2;
    }

    public void b(j jVar) {
        this.coefficients = a(this.coefficients, jVar.coefficients);
        d();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof j)) {
            j jVar = (j) obj;
            if (this.field.equals(jVar.field) && this.degree == jVar.degree && l(this.coefficients, jVar.coefficients)) {
                return true;
            }
        }
        return false;
    }

    public int f(int i10) {
        int[] iArr = this.coefficients;
        int i11 = this.degree;
        int iJ = iArr[i11];
        for (int i12 = i11 - 1; i12 >= 0; i12--) {
            iJ = this.field.j(iJ, i10) ^ this.coefficients[i12];
        }
        return iJ;
    }

    public int h(int i10) {
        if (i10 < 0 || i10 > this.degree) {
            return 0;
        }
        return this.coefficients[i10];
    }

    public int hashCode() {
        int iHashCode = this.field.hashCode();
        int i10 = 0;
        while (true) {
            int[] iArr = this.coefficients;
            if (i10 >= iArr.length) {
                return iHashCode;
            }
            iHashCode = (iHashCode * 31) + iArr[i10];
            i10++;
        }
    }

    public int i() {
        int[] iArr = this.coefficients;
        int length = iArr.length - 1;
        if (iArr[length] == 0) {
            return -1;
        }
        return length;
    }

    public byte[] j() {
        int i10 = 8;
        int i11 = 1;
        while (this.field.d() > i10) {
            i11++;
            i10 += 8;
        }
        byte[] bArr = new byte[this.coefficients.length * i11];
        int i12 = 0;
        for (int i13 = 0; i13 < this.coefficients.length; i13++) {
            int i14 = 0;
            while (i14 < i10) {
                bArr[i12] = (byte) (this.coefficients[i13] >>> i14);
                i14 += 8;
                i12++;
            }
        }
        return bArr;
    }

    public j n(j jVar) {
        return new j(this.field, o(this.coefficients, jVar.coefficients));
    }

    public void q(int i10) {
        if (!this.field.i(i10)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        this.coefficients = s(this.coefficients, i10);
        d();
    }

    public j r(int i10) {
        if (!this.field.i(i10)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        return new j(this.field, s(this.coefficients, i10));
    }

    public String toString() {
        String str = " Polynomial over " + this.field.toString() + ": \n";
        for (int i10 = 0; i10 < this.coefficients.length; i10++) {
            str = str + this.field.b(this.coefficients[i10]) + "Y^" + i10 + org.slf4j.c.ANY_NON_NULL_MARKER;
        }
        return str + ";";
    }

    public j(b bVar, int i10) {
        this.field = bVar;
        this.degree = i10;
        int[] iArr = new int[i10 + 1];
        this.coefficients = iArr;
        iArr[i10] = 1;
    }

    public j(b bVar, int i10, char c7, SecureRandom secureRandom) {
        this.field = bVar;
        if (c7 == 'I') {
            this.coefficients = e(i10, secureRandom);
            d();
        } else {
            throw new IllegalArgumentException(" Error: type " + c7 + " is not defined for GF2smallmPolynomial");
        }
    }

    public j(b bVar, byte[] bArr) {
        this.field = bVar;
        int i10 = 8;
        int i11 = 1;
        while (bVar.d() > i10) {
            i11++;
            i10 += 8;
        }
        if (bArr.length % i11 != 0) {
            throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
        }
        this.coefficients = new int[bArr.length / i11];
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int[] iArr = this.coefficients;
            if (i12 >= iArr.length) {
                if (iArr.length != 1 && iArr[iArr.length - 1] == 0) {
                    throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
                }
                d();
                return;
            }
            int i14 = 0;
            while (i14 < i10) {
                int[] iArr2 = this.coefficients;
                iArr2[i12] = ((bArr[i13] & 255) << i14) ^ iArr2[i12];
                i14 += 8;
                i13++;
            }
            if (!this.field.i(this.coefficients[i12])) {
                throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
            }
            i12++;
        }
    }

    public j(b bVar, int[] iArr) {
        this.field = bVar;
        this.coefficients = v(iArr);
        d();
    }

    public j(c cVar) {
        this(cVar.a(), cVar.b());
    }

    public j(j jVar) {
        this.field = jVar.field;
        this.degree = jVar.degree;
        this.coefficients = e.a(jVar.coefficients);
    }
}
