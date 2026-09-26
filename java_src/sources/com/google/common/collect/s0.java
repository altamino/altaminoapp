package com.google.common.collect;

/* JADX INFO: loaded from: classes10.dex */
public final class s0 {
    static Object[] b(Object... objArr) {
        c(objArr, objArr.length);
        return objArr;
    }

    static Object[] c(Object[] objArr, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            a(objArr[i11], i11);
        }
        return objArr;
    }

    static Object a(Object obj, int i10) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append("at index ");
        sb.append(i10);
        throw new NullPointerException(sb.toString());
    }

    public static <T> T[] d(T[] tArr, int i10) {
        return (T[]) u0.b(tArr, i10);
    }
}
