package com.google.android.exoplayer2.extractor;

/* JADX INFO: loaded from: classes11.dex */
public class e implements b0 {
    private final boolean allowSeeksIfLengthUnknown;
    private final int bitrate;
    private final long dataSize;
    private final long durationUs;
    private final long firstFrameBytePosition;
    private final int frameSize;
    private final long inputLength;

    public e(long j6, long j10, int i10, int i11) {
        this(j6, j10, i10, i11, false);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean isSeekable() {
        return this.dataSize != -1 || this.allowSeeksIfLengthUnknown;
    }

    public e(long j6, long j10, int i10, int i11, boolean z6) {
        this.inputLength = j6;
        this.firstFrameBytePosition = j10;
        this.frameSize = i11 == -1 ? 1 : i11;
        this.bitrate = i10;
        this.allowSeeksIfLengthUnknown = z6;
        if (j6 == -1) {
            this.dataSize = -1L;
            this.durationUs = -9223372036854775807L;
        } else {
            this.dataSize = j6 - j10;
            this.durationUs = d(j6, j10, i10);
        }
    }

    private long b(long j6) {
        long j10 = (j6 * ((long) this.bitrate)) / 8000000;
        int i10 = this.frameSize;
        long jMin = (j10 / ((long) i10)) * ((long) i10);
        long j11 = this.dataSize;
        if (j11 != -1) {
            jMin = Math.min(jMin, j11 - ((long) i10));
        }
        return this.firstFrameBytePosition + Math.max(jMin, 0L);
    }

    private static long d(long j6, long j10, int i10) {
        return (Math.max(0L, j6 - j10) * 8000000) / ((long) i10);
    }

    public long c(long j6) {
        return d(j6, this.firstFrameBytePosition, this.bitrate);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a getSeekPoints(long j6) {
        if (this.dataSize == -1 && !this.allowSeeksIfLengthUnknown) {
            return new b0.a(new c0(0L, this.firstFrameBytePosition));
        }
        long jB = b(j6);
        long jC = c(jB);
        c0 c0Var = new c0(jC, jB);
        if (this.dataSize != -1 && jC < j6) {
            int i10 = this.frameSize;
            if (((long) i10) + jB < this.inputLength) {
                long j10 = jB + ((long) i10);
                return new b0.a(c0Var, new c0(c(j10), j10));
            }
        }
        return new b0.a(c0Var);
    }
}
