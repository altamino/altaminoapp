package org.bouncycastle.util;

/* JADX INFO: loaded from: classes11.dex */
public abstract class f {
    public static int a(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | (bArr[i10] << com.google.common.base.c.CAN) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public static long b(byte[] bArr, int i10) {
        int iA = a(bArr, i10);
        return (((long) a(bArr, i10 + 4)) & 4294967295L) | ((((long) iA) & 4294967295L) << 32);
    }

    public static void c(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) (i10 >>> 24);
        bArr[i11 + 1] = (byte) (i10 >>> 16);
        bArr[i11 + 2] = (byte) (i10 >>> 8);
        bArr[i11 + 3] = (byte) i10;
    }

    public static void d(int i10, byte[] bArr, int i11) {
        bArr[i11] = (byte) i10;
        bArr[i11 + 1] = (byte) (i10 >>> 8);
        bArr[i11 + 2] = (byte) (i10 >>> 16);
        bArr[i11 + 3] = (byte) (i10 >>> 24);
    }

    public static int e(byte[] bArr, int i10) {
        return (bArr[i10 + 3] << com.google.common.base.c.CAN) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static long f(byte[] bArr, int i10) {
        return ((((long) e(bArr, i10 + 4)) & 4294967295L) << 32) | (((long) e(bArr, i10)) & 4294967295L);
    }

    public static short g(byte[] bArr, int i10) {
        return (short) (((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255));
    }

    public static void h(long j6, byte[] bArr, int i10) {
        c((int) (j6 >>> 32), bArr, i10);
        c((int) (j6 & 4294967295L), bArr, i10 + 4);
    }

    public static void i(long j6, byte[] bArr, int i10) {
        d((int) (4294967295L & j6), bArr, i10);
        d((int) (j6 >>> 32), bArr, i10 + 4);
    }

    public static void j(long[] jArr, int i10, int i11, byte[] bArr, int i12) {
        for (int i13 = 0; i13 < i11; i13++) {
            i(jArr[i10 + i13], bArr, i12);
            i12 += 8;
        }
    }

    public static void k(short s, byte[] bArr, int i10) {
        bArr[i10] = (byte) (s >>> 8);
        bArr[i10 + 1] = (byte) s;
    }

    public static void l(short s, byte[] bArr, int i10) {
        bArr[i10] = (byte) s;
        bArr[i10 + 1] = (byte) (s >>> 8);
    }
}
