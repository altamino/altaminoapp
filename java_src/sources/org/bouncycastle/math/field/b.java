package org.bouncycastle.math.field;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes10.dex */
public abstract class b {
    static final a GF_2 = new g(BigInteger.valueOf(2));
    static final a GF_3 = new g(BigInteger.valueOf(3));

    public static f a(int[] iArr) {
        if (iArr[0] != 0) {
            throw new IllegalArgumentException("Irreducible polynomials in GF(2) must have constant term");
        }
        for (int i10 = 1; i10 < iArr.length; i10++) {
            if (iArr[i10] <= iArr[i10 - 1]) {
                throw new IllegalArgumentException("Polynomial exponents must be monotonically increasing");
            }
        }
        return new d(GF_2, new c(iArr));
    }

    public static a b(BigInteger bigInteger) {
        int iBitLength = bigInteger.bitLength();
        if (bigInteger.signum() <= 0 || iBitLength < 2) {
            throw new IllegalArgumentException("'characteristic' must be >= 2");
        }
        if (iBitLength < 3) {
            int iIntValue = bigInteger.intValue();
            if (iIntValue == 2) {
                return GF_2;
            }
            if (iIntValue == 3) {
                return GF_3;
            }
        }
        return new g(bigInteger);
    }
}
