package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes10.dex */
public class i {
    private int[] perm;

    public i(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("invalid length");
        }
        this.perm = new int[i10];
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            this.perm[i11] = i11;
        }
    }

    private boolean c(int[] iArr) {
        int length = iArr.length;
        boolean[] zArr = new boolean[length];
        for (int i10 : iArr) {
            if (i10 < 0 || i10 >= length || zArr[i10]) {
                return false;
            }
            zArr[i10] = true;
        }
        return true;
    }

    public byte[] a() {
        int length = this.perm.length;
        int iA = f.a(length - 1);
        byte[] bArr = new byte[(length * iA) + 4];
        g.a(length, bArr, 0);
        for (int i10 = 0; i10 < length; i10++) {
            g.b(this.perm[i10], bArr, (i10 * iA) + 4, iA);
        }
        return bArr;
    }

    public int[] b() {
        return e.a(this.perm);
    }

    public boolean equals(Object obj) {
        if (obj instanceof i) {
            return e.b(this.perm, ((i) obj).perm);
        }
        return false;
    }

    public int hashCode() {
        return org.bouncycastle.util.a.p(this.perm);
    }

    public String toString() {
        String str = "[" + this.perm[0];
        for (int i10 = 1; i10 < this.perm.length; i10++) {
            str = str + ", " + this.perm[i10];
        }
        return str + "]";
    }

    public i(int i10, SecureRandom secureRandom) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("invalid length");
        }
        this.perm = new int[i10];
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = i11;
        }
        int i12 = i10;
        for (int i13 = 0; i13 < i10; i13++) {
            int iA = m.a(secureRandom, i12);
            i12--;
            this.perm[i13] = iArr[iA];
            iArr[iA] = iArr[i12];
        }
    }

    public i(byte[] bArr) {
        if (bArr.length <= 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        int iE = g.e(bArr, 0);
        int iA = f.a(iE - 1);
        if (bArr.length != (iE * iA) + 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        this.perm = new int[iE];
        for (int i10 = 0; i10 < iE; i10++) {
            this.perm[i10] = g.f(bArr, (i10 * iA) + 4, iA);
        }
        if (!c(this.perm)) {
            throw new IllegalArgumentException("invalid encoding");
        }
    }

    public i(int[] iArr) {
        if (!c(iArr)) {
            throw new IllegalArgumentException("array is not a permutation vector");
        }
        this.perm = e.a(iArr);
    }
}
