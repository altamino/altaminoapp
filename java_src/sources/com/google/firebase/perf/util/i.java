package com.google.firebase.perf.util;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes8.dex */
public class i {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private long numTimeUnits;
    private long numTokensPerTotalTimeUnit;
    private TimeUnit timeUnit;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$java$util$concurrent$TimeUnit;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            $SwitchMap$java$util$concurrent$TimeUnit = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$util$concurrent$TimeUnit[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public double a() {
        int i10 = a.$SwitchMap$java$util$concurrent$TimeUnit[this.timeUnit.ordinal()];
        if (i10 == 1) {
            return (this.numTokensPerTotalTimeUnit / this.numTimeUnits) * TimeUnit.SECONDS.toNanos(1L);
        }
        if (i10 != 2) {
            return i10 != 3 ? this.numTokensPerTotalTimeUnit / this.timeUnit.toSeconds(this.numTimeUnits) : (this.numTokensPerTotalTimeUnit / this.numTimeUnits) * TimeUnit.SECONDS.toMillis(1L);
        }
        return (this.numTokensPerTotalTimeUnit / this.numTimeUnits) * TimeUnit.SECONDS.toMicros(1L);
    }

    public i(long j6, long j10, TimeUnit timeUnit) {
        this.numTokensPerTotalTimeUnit = j6;
        this.numTimeUnits = j10;
        this.timeUnit = timeUnit;
    }
}
