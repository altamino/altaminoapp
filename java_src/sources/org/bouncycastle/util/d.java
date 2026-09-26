package org.bouncycastle.util;

/* JADX INFO: loaded from: classes11.dex */
public class d {
    public static final int BYTES = 4;
    public static final int SIZE = 32;

    public static int a(int i10) {
        return Integer.numberOfLeadingZeros(i10);
    }

    public static int b(int i10, int i11) {
        return Integer.rotateLeft(i10, i11);
    }

    public static Integer c(int i10) {
        return Integer.valueOf(i10);
    }
}
