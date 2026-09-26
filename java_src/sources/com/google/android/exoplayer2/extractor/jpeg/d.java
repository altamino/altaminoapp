package com.google.android.exoplayer2.extractor.jpeg;

import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.c0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.n;

/* JADX INFO: loaded from: classes8.dex */
public final class d implements n {
    private final n extractorOutput;
    private final long startOffset;

    class a implements b0 {
        final /* synthetic */ b0 val$seekMap;

        a(b0 b0Var) {
            this.val$seekMap = b0Var;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public long getDurationUs() {
            return this.val$seekMap.getDurationUs();
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public b0.a getSeekPoints(long j6) {
            b0.a seekPoints = this.val$seekMap.getSeekPoints(j6);
            c0 c0Var = seekPoints.first;
            c0 c0Var2 = new c0(c0Var.timeUs, c0Var.position + d.this.startOffset);
            c0 c0Var3 = seekPoints.second;
            return new b0.a(c0Var2, new c0(c0Var3.timeUs, c0Var3.position + d.this.startOffset));
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public boolean isSeekable() {
            return this.val$seekMap.isSeekable();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public void endTracks() {
        this.extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public void h(b0 b0Var) {
        this.extractorOutput.h(new a(b0Var));
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public e0 track(int i10, int i11) {
        return this.extractorOutput.track(i10, i11);
    }

    public d(long j6, n nVar) {
        this.startOffset = j6;
        this.extractorOutput = nVar;
    }
}
