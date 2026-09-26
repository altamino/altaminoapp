package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes10.dex */
public class b {
    private int degree;
    private int polynomial;

    public b(int i10) {
        this.degree = 0;
        if (i10 >= 32) {
            throw new IllegalArgumentException(" Error: the degree of field is too large ");
        }
        if (i10 < 1) {
            throw new IllegalArgumentException(" Error: the degree of field is non-positive ");
        }
        this.degree = i10;
        this.polynomial = k.c(i10);
    }

    private static String k(int i10) {
        if (i10 == 0) {
            return "0";
        }
        String str = ((byte) (i10 & 1)) == 1 ? "1" : "";
        int i11 = i10 >>> 1;
        int i12 = 1;
        while (i11 != 0) {
            if (((byte) (i11 & 1)) == 1) {
                str = str + "+x^" + i12;
            }
            i11 >>>= 1;
            i12++;
        }
        return str;
    }

    public int a(int i10, int i11) {
        return i10 ^ i11;
    }

    public String b(int i10) {
        StringBuilder sb;
        String str;
        String string = "";
        for (int i11 = 0; i11 < this.degree; i11++) {
            if ((((byte) i10) & 1) == 0) {
                sb = new StringBuilder();
                str = "0";
            } else {
                sb = new StringBuilder();
                str = "1";
            }
            sb.append(str);
            sb.append(string);
            string = sb.toString();
            i10 >>>= 1;
        }
        return string;
    }

    public int c(int i10, int i11) {
        if (i11 == 0) {
            return 1;
        }
        if (i10 == 0) {
            return 0;
        }
        if (i10 == 1) {
            return 1;
        }
        if (i11 < 0) {
            i10 = h(i10);
            i11 = -i11;
        }
        int iJ = 1;
        while (i11 != 0) {
            if ((i11 & 1) == 1) {
                iJ = j(iJ, i10);
            }
            i10 = j(i10, i10);
            i11 >>>= 1;
        }
        return iJ;
    }

    public int d() {
        return this.degree;
    }

    public byte[] e() {
        return g.c(this.polynomial);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof b)) {
            b bVar = (b) obj;
            if (this.degree == bVar.degree && this.polynomial == bVar.polynomial) {
                return true;
            }
        }
        return false;
    }

    public int f(SecureRandom secureRandom) {
        return m.a(secureRandom, 1 << this.degree);
    }

    public int g(SecureRandom secureRandom) {
        int iA = m.a(secureRandom, 1 << this.degree);
        int i10 = 0;
        while (iA == 0 && i10 < 1048576) {
            iA = m.a(secureRandom, 1 << this.degree);
            i10++;
        }
        if (i10 == 1048576) {
            return 1;
        }
        return iA;
    }

    public int h(int i10) {
        return c(i10, (1 << this.degree) - 2);
    }

    public int hashCode() {
        return this.polynomial;
    }

    public boolean i(int i10) {
        int i11 = this.degree;
        if (i11 == 31) {
            return i10 >= 0;
        }
        return i10 >= 0 && i10 < (1 << i11);
    }

    public int j(int i10, int i11) {
        return k.e(i10, i11, this.polynomial);
    }

    public String toString() {
        return "Finite Field GF(2^" + this.degree + ") = GF(2)[X]/<" + k(this.polynomial) + "> ";
    }

    public b(int i10, int i11) {
        this.degree = 0;
        if (i10 != k.a(i11)) {
            throw new IllegalArgumentException(" Error: the degree is not correct");
        }
        if (!k.d(i11)) {
            throw new IllegalArgumentException(" Error: given polynomial is reducible");
        }
        this.degree = i10;
        this.polynomial = i11;
    }

    public b(b bVar) {
        this.degree = 0;
        this.degree = bVar.degree;
        this.polynomial = bVar.polynomial;
    }

    public b(byte[] bArr) {
        this.degree = 0;
        if (bArr.length != 4) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        int iD = g.d(bArr);
        this.polynomial = iD;
        if (!k.d(iD)) {
            throw new IllegalArgumentException("byte array is not an encoded finite field");
        }
        this.degree = k.a(this.polynomial);
    }
}
