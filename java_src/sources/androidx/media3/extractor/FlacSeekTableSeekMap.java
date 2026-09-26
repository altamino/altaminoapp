package androidx.media3.extractor;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class FlacSeekTableSeekMap implements SeekMap {
    private final long firstFrameOffset;
    private final FlacStreamMetadata flacStreamMetadata;

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.flacStreamMetadata.g();
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j6) {
        Assertions.i(this.flacStreamMetadata.seekTable);
        FlacStreamMetadata flacStreamMetadata = this.flacStreamMetadata;
        FlacStreamMetadata.SeekTable seekTable = flacStreamMetadata.seekTable;
        long[] jArr = seekTable.pointSampleNumbers;
        long[] jArr2 = seekTable.pointOffsets;
        int i10 = Util.i(jArr, flacStreamMetadata.j(j6), true, false);
        SeekPoint seekPointB = b(i10 == -1 ? 0L : jArr[i10], i10 != -1 ? jArr2[i10] : 0L);
        if (seekPointB.timeUs == j6 || i10 == jArr.length - 1) {
            return new SeekMap.SeekPoints(seekPointB);
        }
        int i11 = i10 + 1;
        return new SeekMap.SeekPoints(seekPointB, b(jArr[i11], jArr2[i11]));
    }

    public FlacSeekTableSeekMap(FlacStreamMetadata flacStreamMetadata, long j6) {
        this.flacStreamMetadata = flacStreamMetadata;
        this.firstFrameOffset = j6;
    }

    private SeekPoint b(long j6, long j10) {
        return new SeekPoint((j6 * 1000000) / ((long) this.flacStreamMetadata.sampleRate), this.firstFrameOffset + j10);
    }
}
