package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes10.dex */
public final class z implements b0 {
    private final long durationUs;
    private final boolean isSeekable;
    private final long[] positions;
    private final long[] timesUs;

    @Override // com.google.android.exoplayer2.extractor.b0
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean isSeekable() {
        return this.isSeekable;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a getSeekPoints(long j6) {
        if (!this.isSeekable) {
            return new b0.a(c0.START);
        }
        int i10 = o0.i(this.timesUs, j6, true, true);
        c0 c0Var = new c0(this.timesUs[i10], this.positions[i10]);
        if (c0Var.timeUs == j6 || i10 == this.timesUs.length - 1) {
            return new b0.a(c0Var);
        }
        int i11 = i10 + 1;
        return new b0.a(c0Var, new c0(this.timesUs[i11], this.positions[i11]));
    }

    public z(long[] jArr, long[] jArr2, long j6) {
        boolean z6;
        boolean z10;
        if (jArr.length == jArr2.length) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.a(z6);
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
