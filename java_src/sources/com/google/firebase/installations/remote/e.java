package com.google.firebase.installations.remote;

import androidx.annotation.GuardedBy;
import com.google.firebase.installations.p;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
class e {
    private static final long MAXIMUM_BACKOFF_DURATION_FOR_CONFIGURATION_ERRORS = TimeUnit.HOURS.toMillis(24);
    private static final long MAXIMUM_BACKOFF_DURATION_FOR_SERVER_ERRORS = TimeUnit.MINUTES.toMillis(30);

    @GuardedBy
    private int attemptCount;

    @GuardedBy
    private long nextRequestTime;
    private final p utils = p.c();

    private synchronized long a(int i10) {
        if (c(i10)) {
            return (long) Math.min(Math.pow(2.0d, this.attemptCount) + this.utils.e(), MAXIMUM_BACKOFF_DURATION_FOR_SERVER_ERRORS);
        }
        return MAXIMUM_BACKOFF_DURATION_FOR_CONFIGURATION_ERRORS;
    }

    private static boolean c(int i10) {
        return i10 == 429 || (i10 >= 500 && i10 < 600);
    }

    private static boolean d(int i10) {
        return (i10 >= 200 && i10 < 300) || i10 == 401 || i10 == 404;
    }

    private synchronized void e() {
        this.attemptCount = 0;
    }

    public synchronized boolean b() {
        return this.attemptCount == 0 || this.utils.a() > this.nextRequestTime;
    }

    public synchronized void f(int i10) {
        if (d(i10)) {
            e();
            return;
        }
        this.attemptCount++;
        this.nextRequestTime = this.utils.a() + a(i10);
    }

    e() {
    }
}
