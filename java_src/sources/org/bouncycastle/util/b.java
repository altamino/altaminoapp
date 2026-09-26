package org.bouncycastle.util;

import java.math.BigInteger;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes11.dex */
public final class b {
    private static final int MAX_ITERATIONS = 1000;
    public static final BigInteger ZERO = BigInteger.valueOf(0);
    public static final BigInteger ONE = BigInteger.valueOf(1);
    public static final BigInteger TWO = BigInteger.valueOf(2);
    private static final BigInteger THREE = BigInteger.valueOf(3);
    private static final BigInteger SMALL_PRIMES_PRODUCT = new BigInteger("8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f", 16);
    private static final int MAX_SMALL = BigInteger.valueOf(743).bitLength();

    public static byte[] a(int i10, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i10) {
            return byteArray;
        }
        int i11 = 0;
        if (byteArray[0] == 0 && byteArray.length != 1) {
            i11 = 1;
        }
        int length = byteArray.length - i11;
        if (length > i10) {
            throw new IllegalArgumentException("standard length exceeded for value");
        }
        byte[] bArr = new byte[i10];
        System.arraycopy(byteArray, i11, bArr, i10 - length, length);
        return bArr;
    }

    private static byte[] b(int i10, SecureRandom secureRandom) throws IllegalArgumentException {
        if (i10 < 1) {
            throw new IllegalArgumentException("bitLength must be at least 1");
        }
        int i11 = (i10 + 7) / 8;
        byte[] bArr = new byte[i11];
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & ((byte) (255 >>> ((i11 * 8) - i10))));
        return bArr;
    }

    public static BigInteger c(int i10, SecureRandom secureRandom) {
        return new BigInteger(1, b(i10, secureRandom));
    }

    public static BigInteger d(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger.testBit(0)) {
            throw new IllegalArgumentException("'M' must be odd");
        }
        if (bigInteger.signum() != 1) {
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        if (bigInteger2.signum() < 0 || bigInteger2.compareTo(bigInteger) >= 0) {
            bigInteger2 = bigInteger2.mod(bigInteger);
        }
        int iBitLength = bigInteger.bitLength();
        int[] iArrD = d9.b.d(iBitLength, bigInteger);
        int[] iArrD2 = d9.b.d(iBitLength, bigInteger2);
        int length = iArrD.length;
        int[] iArrA = d9.b.a(length);
        if (d9.a.h(iArrD, iArrD2, iArrA) != 0) {
            return d9.b.e(length, iArrA);
        }
        throw new ArithmeticException("BigInteger not invertible.");
    }
}
