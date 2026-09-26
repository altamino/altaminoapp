package androidx.media3.common.util;

import androidx.annotation.GuardedBy;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class TimestampAdjuster {
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
            if (!f()) {
                long jLongValue = this.firstSampleTimestampUs;
                if (jLongValue == 9223372036854775806L) {
                    jLongValue = ((Long) Assertions.e(this.nextSampleTimestampUs.get())).longValue();
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
                long j11 = j(j10);
                long j12 = (4294967296L + j11) / MAX_PTS_PLUS_ONE;
                long j13 = ((j12 - 1) * MAX_PTS_PLUS_ONE) + j6;
                j6 += j12 * MAX_PTS_PLUS_ONE;
                if (Math.abs(j13 - j11) < Math.abs(j6 - j11)) {
                    j6 = j13;
                }
            }
            return a(g(j6));
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

    public synchronized boolean f() {
        return this.timestampOffsetUs != -9223372036854775807L;
    }

    public synchronized void h(long j6) {
        this.firstSampleTimestampUs = j6;
        this.timestampOffsetUs = j6 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.lastUnadjustedTimestampUs = -9223372036854775807L;
    }

    public synchronized void i(boolean z6, long j6, long j10) throws InterruptedException, TimeoutException {
        try {
            Assertions.g(this.firstSampleTimestampUs == 9223372036854775806L);
            if (f()) {
                return;
            }
            if (z6) {
                this.nextSampleTimestampUs.set(Long.valueOf(j6));
            } else {
                long jElapsedRealtime = 0;
                long j11 = j10;
                while (!f()) {
                    if (j10 == 0) {
                        wait();
                    } else {
                        Assertions.g(j11 > 0);
                        long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime();
                        wait(j11);
                        jElapsedRealtime += android.os.SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        if (jElapsedRealtime >= j10 && !f()) {
                            throw new TimeoutException("TimestampAdjuster failed to initialize in " + j10 + " milliseconds");
                        }
                        j11 = j10 - jElapsedRealtime;
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public TimestampAdjuster(long j6) {
        h(j6);
    }

    public static long g(long j6) {
        return (j6 * 1000000) / 90000;
    }

    public static long j(long j6) {
        return (j6 * 90000) / 1000000;
    }

    public static long k(long j6) {
        return j(j6) % MAX_PTS_PLUS_ONE;
    }
}
