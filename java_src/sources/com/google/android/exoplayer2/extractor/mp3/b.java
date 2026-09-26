package com.google.android.exoplayer2.extractor.mp3;

import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.u;

/* JADX INFO: loaded from: classes10.dex */
final class b implements g {

    @VisibleForTesting
    static final long MIN_TIME_BETWEEN_POINTS_US = 100000;
    private final long dataEndPosition;
    private long durationUs;
    private final u positions;
    private final u timesUs;

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long a() {
        return this.dataEndPosition;
    }

    void d(long j6) {
        this.durationUs = j6;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean isSeekable() {
        return true;
    }

    public boolean b(long j6) {
        u uVar = this.timesUs;
        return j6 - uVar.b(uVar.c() - 1) < MIN_TIME_BETWEEN_POINTS_US;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a getSeekPoints(long j6) {
        int iF = o0.f(this.timesUs, j6, true, true);
        c0 c0Var = new c0(this.timesUs.b(iF), this.positions.b(iF));
        if (c0Var.timeUs == j6 || iF == this.timesUs.c() - 1) {
            return new b0.a(c0Var);
        }
        int i10 = iF + 1;
        return new b0.a(c0Var, new c0(this.timesUs.b(i10), this.positions.b(i10)));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long getTimeUs(long j6) {
        return this.timesUs.b(o0.f(this.positions, j6, true, true));
    }

    public b(long j6, long j10, long j11) {
        this.durationUs = j6;
        this.dataEndPosition = j11;
        u uVar = new u();
        this.timesUs = uVar;
        u uVar2 = new u();
        this.positions = uVar2;
        uVar.a(0L);
        uVar2.a(j10);
    }

    public void c(long j6, long j10) {
        if (b(j6)) {
            return;
        }
        this.timesUs.a(j6);
        this.positions.a(j10);
    }
}
