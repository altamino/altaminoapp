package androidx.media3.extractor;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public class ConstantBitrateSeekMap implements SeekMap {
    private final boolean allowSeeksIfLengthUnknown;
    private final int bitrate;
    private final long dataSize;
    private final long durationUs;
    private final long firstFrameBytePosition;
    private final int frameSize;
    private final long inputLength;

    public ConstantBitrateSeekMap(long j6, long j10, int i10, int i11) {
        this(j6, j10, i10, i11, false);
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return this.dataSize != -1 || this.allowSeeksIfLengthUnknown;
    }

    public ConstantBitrateSeekMap(long j6, long j10, int i10, int i11, boolean z6) {
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

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j6) {
        if (this.dataSize == -1 && !this.allowSeeksIfLengthUnknown) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.firstFrameBytePosition));
        }
        long jB = b(j6);
        long jC = c(jB);
        SeekPoint seekPoint = new SeekPoint(jC, jB);
        if (this.dataSize != -1 && jC < j6) {
            int i10 = this.frameSize;
            if (((long) i10) + jB < this.inputLength) {
                long j10 = jB + ((long) i10);
                return new SeekMap.SeekPoints(seekPoint, new SeekPoint(c(j10), j10));
            }
        }
        return new SeekMap.SeekPoints(seekPoint);
    }
}
