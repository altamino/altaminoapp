package com.google.common.primitives;

import com.google.common.base.o;

/* JADX INFO: loaded from: classes10.dex */
public final class b {
    public static final int BYTES = 2;

    public static char a(long j6) {
        char c7 = (char) j6;
        o.h(((long) c7) == j6, "Out of range: %s", j6);
        return c7;
    }

    public static boolean b(char[] cArr, char c7) {
        for (char c10 : cArr) {
            if (c10 == c7) {
                return true;
            }
        }
        return false;
    }

    public static char c(byte b7, byte b10) {
        return (char) ((b7 << 8) | (b10 & 255));
    }
}
