package q2;

import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes7.dex */
final class e implements b0 {
    private final long blockCount;
    private final long durationUs;
    private final long firstBlockPosition;
    private final int framesPerBlock;
    private final c wavFormat;

    @Override // com.google.android.exoplayer2.extractor.b0
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean isSeekable() {
        return true;
    }

    private long b(long j6) {
        return o0.F0(j6 * ((long) this.framesPerBlock), 1000000L, this.wavFormat.frameRateHz);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a getSeekPoints(long j6) {
        long jQ = o0.q((((long) this.wavFormat.frameRateHz) * j6) / (((long) this.framesPerBlock) * 1000000), 0L, this.blockCount - 1);
        long j10 = this.firstBlockPosition + (((long) this.wavFormat.blockSize) * jQ);
        long jB = b(jQ);
        c0 c0Var = new c0(jB, j10);
        if (jB >= j6 || jQ == this.blockCount - 1) {
            return new b0.a(c0Var);
        }
        long j11 = jQ + 1;
        return new b0.a(c0Var, new c0(b(j11), this.firstBlockPosition + (((long) this.wavFormat.blockSize) * j11)));
    }

    public e(c cVar, int i10, long j6, long j10) {
        this.wavFormat = cVar;
        this.framesPerBlock = i10;
        this.firstBlockPosition = j6;
        long j11 = (j10 - j6) / ((long) cVar.blockSize);
        this.blockCount = j11;
        this.durationUs = b(j11);
    }
}
