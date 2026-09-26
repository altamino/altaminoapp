package com.google.android.exoplayer2;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class r3 {
    public static final r3 CLOSEST_SYNC;
    public static final r3 DEFAULT;
    public static final r3 EXACT;
    public static final r3 NEXT_SYNC;
    public static final r3 PREVIOUS_SYNC;
    public final long toleranceAfterUs;
    public final long toleranceBeforeUs;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r3.class != obj.getClass()) {
            return false;
        }
        r3 r3Var = (r3) obj;
        return this.toleranceBeforeUs == r3Var.toleranceBeforeUs && this.toleranceAfterUs == r3Var.toleranceAfterUs;
    }

    public int hashCode() {
        return (((int) this.toleranceBeforeUs) * 31) + ((int) this.toleranceAfterUs);
    }

    static {
        r3 r3Var = new r3(0L, 0L);
        EXACT = r3Var;
        CLOSEST_SYNC = new r3(Long.MAX_VALUE, Long.MAX_VALUE);
        PREVIOUS_SYNC = new r3(Long.MAX_VALUE, 0L);
        NEXT_SYNC = new r3(0L, Long.MAX_VALUE);
        DEFAULT = r3Var;
    }

    public long a(long j6, long j10, long j11) {
        long j12 = this.toleranceBeforeUs;
        if (j12 == 0 && this.toleranceAfterUs == 0) {
            return j6;
        }
        long jK0 = com.google.android.exoplayer2.util.o0.K0(j6, j12, Long.MIN_VALUE);
        long jB = com.google.android.exoplayer2.util.o0.b(j6, this.toleranceAfterUs, Long.MAX_VALUE);
        boolean z6 = false;
        boolean z10 = jK0 <= j10 && j10 <= jB;
        if (jK0 <= j11 && j11 <= jB) {
            z6 = true;
        }
        if (z10 && z6) {
            return Math.abs(j10 - j6) <= Math.abs(j11 - j6) ? j10 : j11;
        }
        if (z10) {
            return j10;
        }
        return z6 ? j11 : jK0;
    }

    public r3(long j6, long j10) {
        boolean z6;
        if (j6 >= 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.a(z6);
        com.google.android.exoplayer2.util.a.a(j10 >= 0);
        this.toleranceBeforeUs = j6;
        this.toleranceAfterUs = j10;
    }
}
