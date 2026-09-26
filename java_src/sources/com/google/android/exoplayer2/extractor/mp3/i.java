package com.google.android.exoplayer2.extractor.mp3;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.h0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;

/* JADX INFO: loaded from: classes10.dex */
final class i implements g {
    private static final String TAG = "XingSeeker";
    private final long dataEndPosition;
    private final long dataSize;
    private final long dataStartPosition;
    private final long durationUs;

    @Nullable
    private final long[] tableOfContents;
    private final int xingFrameSize;

    private i(long j6, int i10, long j10) {
        this(j6, i10, j10, -1L, null);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long a() {
        return this.dataEndPosition;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean isSeekable() {
        return this.tableOfContents != null;
    }

    private i(long j6, int i10, long j10, long j11, @Nullable long[] jArr) {
        this.dataStartPosition = j6;
        this.xingFrameSize = i10;
        this.durationUs = j10;
        this.tableOfContents = jArr;
        this.dataSize = j11;
        this.dataEndPosition = j11 != -1 ? j6 + j11 : -1L;
    }

    @Nullable
    public static i b(long j6, long j10, h0.a aVar, c0 c0Var) {
        int iH;
        int i10 = aVar.samplesPerFrame;
        int i11 = aVar.sampleRate;
        int iN = c0Var.n();
        if ((iN & 1) != 1 || (iH = c0Var.H()) == 0) {
            return null;
        }
        long jF0 = o0.F0(iH, ((long) i10) * 1000000, i11);
        if ((iN & 6) != 6) {
            return new i(j10, aVar.frameSize, jF0);
        }
        long jF = c0Var.F();
        long[] jArr = new long[100];
        for (int i12 = 0; i12 < 100; i12++) {
            jArr[i12] = c0Var.D();
        }
        if (j6 != -1) {
            long j11 = j10 + jF;
            if (j6 != j11) {
                t.i(TAG, "XING data size mismatch: " + j6 + ", " + j11);
            }
        }
        return new i(j10, aVar.frameSize, jF0, jF, jArr);
    }

    private long c(int i10) {
        return (this.durationUs * ((long) i10)) / 100;
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long getTimeUs(long j6) {
        long j10 = j6 - this.dataStartPosition;
        if (!isSeekable() || j10 <= this.xingFrameSize) {
            return 0L;
        }
        long[] jArr = (long[]) com.google.android.exoplayer2.util.a.i(this.tableOfContents);
        double d = (j10 * 256.0d) / this.dataSize;
        int i10 = o0.i(jArr, (long) d, true, true);
        long jC = c(i10);
        long j11 = jArr[i10];
        int i11 = i10 + 1;
        long jC2 = c(i11);
        long j12 = i10 == 99 ? 256L : jArr[i11];
        return jC + Math.round((j11 == j12 ? com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE : (d - j11) / (j12 - j11)) * (jC2 - jC));
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a getSeekPoints(long j6) {
        double d;
        if (!isSeekable()) {
            return new b0.a(new com.google.android.exoplayer2.extractor.c0(0L, this.dataStartPosition + ((long) this.xingFrameSize)));
        }
        long jQ = o0.q(j6, 0L, this.durationUs);
        double d2 = (jQ * 100.0d) / this.durationUs;
        double d6 = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        if (d2 > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            if (d2 >= 100.0d) {
                d6 = 256.0d;
            } else {
                int i10 = (int) d2;
                long[] jArr = (long[]) com.google.android.exoplayer2.util.a.i(this.tableOfContents);
                double d7 = jArr[i10];
                if (i10 == 99) {
                    d = 256.0d;
                } else {
                    d = jArr[i10 + 1];
                }
                d6 = d7 + ((d2 - ((double) i10)) * (d - d7));
            }
        }
        return new b0.a(new com.google.android.exoplayer2.extractor.c0(jQ, this.dataStartPosition + o0.q(Math.round((d6 / 256.0d) * this.dataSize), this.xingFrameSize, this.dataSize - 1)));
    }
}
