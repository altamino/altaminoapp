package com.google.common.primitives;

import com.google.common.base.o;

/* JADX INFO: loaded from: classes10.dex */
public final class h {
    public static final byte MAX_POWER_OF_TWO = -128;
    public static final byte MAX_VALUE = -1;
    private static final int UNSIGNED_MASK = 255;

    public static int b(byte b7) {
        return b7 & 255;
    }

    public static byte a(long j6) {
        o.h((j6 >> 8) == 0, "out of range: %s", j6);
        return (byte) j6;
    }
}
