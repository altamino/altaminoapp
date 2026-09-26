package d9;

import java.math.BigInteger;
import org.bouncycastle.util.f;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {
    private static final long M = 4294967295L;

    public static int[] a(int i10) {
        return new int[i10];
    }

    public static int b(int i10, int[] iArr, int i11) {
        int i12 = i11 ^ iArr[0];
        for (int i13 = 1; i13 < i10; i13++) {
            i12 |= iArr[i13];
        }
        return (((i12 >>> 1) | (i12 & 1)) - 1) >> 31;
    }

    public static int c(int i10, int[] iArr) {
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 |= iArr[i12];
        }
        return (((i11 >>> 1) | (i11 & 1)) - 1) >> 31;
    }

    public static int[] d(int i10, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > i10) {
            throw new IllegalArgumentException();
        }
        int i11 = (i10 + 31) >> 5;
        int[] iArrA = a(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            iArrA[i12] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return iArrA;
    }

    public static BigInteger e(int i10, int[] iArr) {
        byte[] bArr = new byte[i10 << 2];
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = iArr[i11];
            if (i12 != 0) {
                f.c(i12, bArr, ((i10 - 1) - i11) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }
}
