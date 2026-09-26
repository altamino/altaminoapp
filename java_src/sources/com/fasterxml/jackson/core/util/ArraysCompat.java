package com.fasterxml.jackson.core.util;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes10.dex */
public class ArraysCompat {
    public static char[] copyOf(char[] cArr, int i10) {
        return copyOfRange(cArr, 0, i10);
    }

    public static char[] copyOfRange(char[] cArr, int i10, int i11) {
        int i12 = i11 - i10;
        int iMin = Math.min(i12, cArr.length - i10);
        char[] cArr2 = new char[i12];
        System.arraycopy(cArr, i10, cArr2, 0, iMin);
        return cArr2;
    }

    public static int[] copyOf(int[] iArr, int i10) {
        return copyOfRange(iArr, 0, i10);
    }

    public static <T> T[] copyOf(T[] tArr, int i10) {
        return (T[]) copyOfRange(tArr, 0, i10);
    }

    public static int[] copyOfRange(int[] iArr, int i10, int i11) {
        int i12 = i11 - i10;
        int iMin = Math.min(i12, iArr.length - i10);
        int[] iArr2 = new int[i12];
        System.arraycopy(iArr, i10, iArr2, 0, iMin);
        return iArr2;
    }

    public static <T> T[] copyOfRange(T[] tArr, int i10, int i11) {
        int i12 = i11 - i10;
        int iMin = Math.min(i12, tArr.length - i10);
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i12));
        System.arraycopy(tArr, i10, tArr2, 0, iMin);
        return tArr2;
    }
}
