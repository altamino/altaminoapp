package com.google.firebase.appcheck.internal;

import androidx.annotation.VisibleForTesting;

/* JADX INFO: loaded from: classes10.dex */
public class n {

    @VisibleForTesting
    static final int BAD_REQUEST_ERROR_CODE = 400;
    private static final int EXPONENTIAL = 0;

    @VisibleForTesting
    static final long MAX_EXP_BACKOFF_MILLIS = 14400000;
    private static final double MAX_JITTER_MULTIPLIER = 0.5d;

    @VisibleForTesting
    static final int NOT_FOUND_ERROR_CODE = 404;
    private static final int ONE_DAY = 1;

    @VisibleForTesting
    static final long ONE_DAY_MILLIS = 86400000;

    @VisibleForTesting
    static final long ONE_SECOND_MILLIS = 1000;

    @VisibleForTesting
    static final long UNSET_RETRY_TIME = -1;
    private long currentRetryCount = 0;
    private long nextRetryTimeMillis = -1;
    private final com.google.firebase.appcheck.internal.util.a clock = new com.google.firebase.appcheck.internal.util.a.C0229a();

    private static int b(int i10) {
        return (i10 == 400 || i10 == NOT_FOUND_ERROR_CODE) ? 1 : 0;
    }

    public void c() {
        this.currentRetryCount = 0L;
        this.nextRetryTimeMillis = -1L;
    }

    public boolean a() {
        return this.nextRetryTimeMillis <= this.clock.currentTimeMillis();
    }

    public void d(int i10) {
        this.currentRetryCount++;
        if (b(i10) == 1) {
            this.nextRetryTimeMillis = this.clock.currentTimeMillis() + 86400000;
            return;
        }
        this.nextRetryTimeMillis = this.clock.currentTimeMillis() + Math.min((long) (Math.pow(2.0d, this.currentRetryCount * ((Math.random() * 0.5d) + 1.0d)) * 1000.0d), MAX_EXP_BACKOFF_MILLIS);
    }
}
