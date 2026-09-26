package androidx.media3.extractor;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class IndexSeekMap implements SeekMap {
    private final long durationUs;
    private final boolean isSeekable;
    private final long[] positions;
    private final long[] timesUs;

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return this.isSeekable;
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j6) {
        if (!this.isSeekable) {
            return new SeekMap.SeekPoints(SeekPoint.START);
        }
        int i10 = Util.i(this.timesUs, j6, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[i10], this.positions[i10]);
        if (seekPoint.timeUs == j6 || i10 == this.timesUs.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i11 = i10 + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.timesUs[i11], this.positions[i11]));
    }

    public IndexSeekMap(long[] jArr, long[] jArr2, long j6) {
        boolean z6;
        boolean z10;
        if (jArr.length == jArr2.length) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        int length = jArr2.length;
        if (length > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.isSeekable = z10;
        if (z10 && jArr2[0] > 0) {
            int i10 = length + 1;
            long[] jArr3 = new long[i10];
            this.positions = jArr3;
            long[] jArr4 = new long[i10];
            this.timesUs = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        } else {
            this.positions = jArr;
            this.timesUs = jArr2;
        }
        this.durationUs = j6;
    }
}
