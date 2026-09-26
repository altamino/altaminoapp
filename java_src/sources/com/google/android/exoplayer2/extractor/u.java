package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes10.dex */
public final class u implements b0 {
    private final long firstFrameOffset;
    private final v flacStreamMetadata;

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean isSeekable() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long getDurationUs() {
        return this.flacStreamMetadata.g();
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a getSeekPoints(long j6) {
        com.google.android.exoplayer2.util.a.i(this.flacStreamMetadata.seekTable);
        v vVar = this.flacStreamMetadata;
        v.a aVar = vVar.seekTable;
        long[] jArr = aVar.pointSampleNumbers;
        long[] jArr2 = aVar.pointOffsets;
        int i10 = o0.i(jArr, vVar.j(j6), true, false);
        c0 c0VarB = b(i10 == -1 ? 0L : jArr[i10], i10 != -1 ? jArr2[i10] : 0L);
        if (c0VarB.timeUs == j6 || i10 == jArr.length - 1) {
            return new b0.a(c0VarB);
        }
        int i11 = i10 + 1;
        return new b0.a(c0VarB, b(jArr[i11], jArr2[i11]));
    }

    public u(v vVar, long j6) {
        this.flacStreamMetadata = vVar;
        this.firstFrameOffset = j6;
    }

    private c0 b(long j6, long j10) {
        return new c0((j6 * 1000000) / ((long) this.flacStreamMetadata.sampleRate), this.firstFrameOffset + j10);
    }
}
