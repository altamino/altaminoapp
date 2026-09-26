package androidx.media3.extractor.wav;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* JADX INFO: loaded from: classes6.dex */
final class WavSeekMap implements SeekMap {
    private final long blockCount;
    private final long durationUs;
    private final long firstBlockPosition;
    private final int framesPerBlock;
    private final WavFormat wavFormat;

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    private long b(long j6) {
        return Util.X0(j6 * ((long) this.framesPerBlock), 1000000L, this.wavFormat.frameRateHz);
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j6) {
        long jR = Util.r((((long) this.wavFormat.frameRateHz) * j6) / (((long) this.framesPerBlock) * 1000000), 0L, this.blockCount - 1);
        long j10 = this.firstBlockPosition + (((long) this.wavFormat.blockSize) * jR);
        long jB = b(jR);
        SeekPoint seekPoint = new SeekPoint(jB, j10);
        if (jB >= j6 || jR == this.blockCount - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        long j11 = jR + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(b(j11), this.firstBlockPosition + (((long) this.wavFormat.blockSize) * j11)));
    }

    public WavSeekMap(WavFormat wavFormat, int i10, long j6, long j10) {
        this.wavFormat = wavFormat;
        this.framesPerBlock = i10;
        this.firstBlockPosition = j6;
        long j11 = (j10 - j6) / ((long) wavFormat.blockSize);
        this.blockCount = j11;
        this.durationUs = b(j11);
    }
}
