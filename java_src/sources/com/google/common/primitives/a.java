package com.google.common.primitives;

/* JADX INFO: loaded from: classes10.dex */
public final class a {
    public static int a(boolean z6, boolean z10) {
        if (z6 == z10) {
            return 0;
        }
        return z6 ? 1 : -1;
    }

    public static boolean b(boolean[] zArr, boolean z6) {
        for (boolean z10 : zArr) {
            if (z10 == z6) {
                return true;
            }
        }
        return false;
    }
}
