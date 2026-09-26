package com.google.android.exoplayer2.util;

import androidx.annotation.GuardedBy;

/* JADX INFO: loaded from: classes10.dex */
public final class l0 {
    private static final long MAX_PTS_PLUS_ONE = 8589934592L;
    public static final long MODE_NO_OFFSET = Long.MAX_VALUE;
    public static final long MODE_SHARED = 9223372036854775806L;

    @GuardedBy
    private long firstSampleTimestampUs;

    @GuardedBy
    private long lastUnadjustedTimestampUs;
    private final ThreadLocal<Long> nextSampleTimestampUs = new ThreadLocal<>();

    @GuardedBy
    private long timestampOffsetUs;

    public synchronized long a(long j6) {
        if (j6 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            if (this.timestampOffsetUs == -9223372036854775807L) {
                long jLongValue = this.firstSampleTimestampUs;
                if (jLongValue == 9223372036854775806L) {
                    jLongValue = ((Long) a.e(this.nextSampleTimestampUs.get())).longValue();
                }
                this.timestampOffsetUs = jLongValue - j6;
                notifyAll();
            }
            this.lastUnadjustedTimestampUs = j6;
            return j6 + this.timestampOffsetUs;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized long b(long j6) {
        if (j6 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j10 = this.lastUnadjustedTimestampUs;
            if (j10 != -9223372036854775807L) {
                long jH = h(j10);
                long j11 = (4294967296L + jH) / MAX_PTS_PLUS_ONE;
                long j12 = ((j11 - 1) * MAX_PTS_PLUS_ONE) + j6;
                j6 += j11 * MAX_PTS_PLUS_ONE;
                if (Math.abs(j12 - jH) < Math.abs(j6 - jH)) {
                    j6 = j12;
                }
            }
            return a(f(j6));
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized long c() {
        long j6;
        j6 = this.firstSampleTimestampUs;
        if (j6 == Long.MAX_VALUE || j6 == 9223372036854775806L) {
            j6 = -9223372036854775807L;
        }
        return j6;
    }

    public synchronized long d() {
        long j6;
        try {
            j6 = this.lastUnadjustedTimestampUs;
        } catch (Throwable th) {
            throw th;
        }
        return j6 != -9223372036854775807L ? j6 + this.timestampOffsetUs : c();
    }

    public synchronized long e() {
        return this.timestampOffsetUs;
    }

    public synchronized void g(long j6) {
        this.firstSampleTimestampUs = j6;
        this.timestampOffsetUs = j6 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.lastUnadjustedTimestampUs = -9223372036854775807L;
    }

    public l0(long j6) {
        g(j6);
    }

    public static long f(long j6) {
        return (j6 * 1000000) / 90000;
    }

    public static long h(long j6) {
        return (j6 * 90000) / 1000000;
    }
}
