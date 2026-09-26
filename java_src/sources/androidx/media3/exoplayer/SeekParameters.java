package androidx.media3.exoplayer;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class SeekParameters {
    public static final SeekParameters CLOSEST_SYNC;
    public static final SeekParameters DEFAULT;
    public static final SeekParameters EXACT;
    public static final SeekParameters NEXT_SYNC;
    public static final SeekParameters PREVIOUS_SYNC;
    public final long toleranceAfterUs;
    public final long toleranceBeforeUs;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SeekParameters.class != obj.getClass()) {
            return false;
        }
        SeekParameters seekParameters = (SeekParameters) obj;
        return this.toleranceBeforeUs == seekParameters.toleranceBeforeUs && this.toleranceAfterUs == seekParameters.toleranceAfterUs;
    }

    public int hashCode() {
        return (((int) this.toleranceBeforeUs) * 31) + ((int) this.toleranceAfterUs);
    }

    static {
        SeekParameters seekParameters = new SeekParameters(0L, 0L);
        EXACT = seekParameters;
        CLOSEST_SYNC = new SeekParameters(Long.MAX_VALUE, Long.MAX_VALUE);
        PREVIOUS_SYNC = new SeekParameters(Long.MAX_VALUE, 0L);
        NEXT_SYNC = new SeekParameters(0L, Long.MAX_VALUE);
        DEFAULT = seekParameters;
    }

    public long a(long j6, long j10, long j11) {
        long j12 = this.toleranceBeforeUs;
        if (j12 == 0 && this.toleranceAfterUs == 0) {
            return j6;
        }
        long jH1 = Util.h1(j6, j12, Long.MIN_VALUE);
        long jB = Util.b(j6, this.toleranceAfterUs, Long.MAX_VALUE);
        boolean z6 = false;
        boolean z10 = jH1 <= j10 && j10 <= jB;
        if (jH1 <= j11 && j11 <= jB) {
            z6 = true;
        }
        if (z10 && z6) {
            return Math.abs(j10 - j6) <= Math.abs(j11 - j6) ? j10 : j11;
        }
        if (z10) {
            return j10;
        }
        return z6 ? j11 : jH1;
    }

    public SeekParameters(long j6, long j10) {
        boolean z6;
        if (j6 >= 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        Assertions.a(j10 >= 0);
        this.toleranceBeforeUs = j6;
        this.toleranceAfterUs = j10;
    }
}
