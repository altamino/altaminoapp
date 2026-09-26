package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes8.dex */
public final class f {
    private static final double MILLIS_MULTIPLIER = 1.0d / Math.pow(10.0d, 6.0d);

    public static double a(long j6) {
        return (b() - j6) * MILLIS_MULTIPLIER;
    }

    @TargetApi(17)
    public static long b() {
        return SystemClock.elapsedRealtimeNanos();
    }
}
