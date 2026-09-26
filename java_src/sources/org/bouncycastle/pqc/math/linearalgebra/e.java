package org.bouncycastle.pqc.math.linearalgebra;

/* JADX INFO: loaded from: classes10.dex */
public final class e {
    public static int[] a(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public static boolean b(int[] iArr, int[] iArr2) {
        if (iArr.length != iArr2.length) {
            return false;
        }
        boolean z6 = true;
        for (int length = iArr.length - 1; length >= 0; length--) {
            z6 &= iArr[length] == iArr2[length];
        }
        return z6;
    }
}
