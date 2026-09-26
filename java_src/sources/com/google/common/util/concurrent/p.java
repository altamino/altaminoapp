package com.google.common.util.concurrent;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes9.dex */
final class p {
    static final long MAX_NANOSECONDS_THRESHOLD = 2147483647999999999L;

    static void a(Object obj, long j6) {
        LockSupport.parkNanos(obj, Math.min(j6, MAX_NANOSECONDS_THRESHOLD));
    }
}
