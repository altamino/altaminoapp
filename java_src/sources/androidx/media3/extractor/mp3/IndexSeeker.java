package androidx.media3.extractor.mp3;

import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* JADX INFO: loaded from: classes11.dex */
final class IndexSeeker implements Seeker {

    @VisibleForTesting
    static final long MIN_TIME_BETWEEN_POINTS_US = 100000;
    private final long dataEndPosition;
    private long durationUs;
    private final LongArray positions;
    private final LongArray timesUs;

    @Override // androidx.media3.extractor.mp3.Seeker
    public long a() {
        return this.dataEndPosition;
    }

    void d(long j6) {
        this.durationUs = j6;
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public boolean b(long j6) {
        LongArray longArray = this.timesUs;
        return j6 - longArray.b(longArray.c() - 1) < MIN_TIME_BETWEEN_POINTS_US;
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j6) {
        int iF = Util.f(this.timesUs, j6, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs.b(iF), this.positions.b(iF));
        if (seekPoint.timeUs == j6 || iF == this.timesUs.c() - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i10 = iF + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.timesUs.b(i10), this.positions.b(i10)));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long j6) {
        return this.timesUs.b(Util.f(this.positions, j6, true, true));
    }

    public IndexSeeker(long j6, long j10, long j11) {
        this.durationUs = j6;
        this.dataEndPosition = j11;
        LongArray longArray = new LongArray();
        this.timesUs = longArray;
        LongArray longArray2 = new LongArray();
        this.positions = longArray2;
        longArray.a(0L);
        longArray2.a(j10);
    }

    public void c(long j6, long j10) {
        if (b(j6)) {
            return;
        }
        this.timesUs.a(j6);
        this.positions.a(j10);
    }
}
