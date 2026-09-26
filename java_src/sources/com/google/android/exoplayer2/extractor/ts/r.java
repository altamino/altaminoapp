package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.a2;

/* JADX INFO: loaded from: classes7.dex */
public final class r implements m {
    private static final String TAG = "Id3Reader";
    private com.google.android.exoplayer2.extractor.e0 output;
    private int sampleBytesRead;
    private int sampleSize;
    private boolean writingSample;
    private final com.google.android.exoplayer2.util.c0 id3Header = new com.google.android.exoplayer2.util.c0(10);
    private long sampleTimeUs = -9223372036854775807L;

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(long j6, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.writingSample = true;
        if (j6 != -9223372036854775807L) {
            this.sampleTimeUs = j6;
        }
        this.sampleSize = 0;
        this.sampleBytesRead = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void seek() {
        this.writingSample = false;
        this.sampleTimeUs = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c(com.google.android.exoplayer2.util.c0 c0Var) {
        com.google.android.exoplayer2.util.a.i(this.output);
        if (this.writingSample) {
            int iA = c0Var.a();
            int i10 = this.sampleBytesRead;
            if (i10 < 10) {
                int iMin = Math.min(iA, 10 - i10);
                System.arraycopy(c0Var.d(), c0Var.e(), this.id3Header.d(), this.sampleBytesRead, iMin);
                if (this.sampleBytesRead + iMin == 10) {
                    this.id3Header.P(0);
                    if (73 != this.id3Header.D() || 68 != this.id3Header.D() || 51 != this.id3Header.D()) {
                        com.google.android.exoplayer2.util.t.i(TAG, "Discarding invalid ID3 tag");
                        this.writingSample = false;
                        return;
                    } else {
                        this.id3Header.Q(3);
                        this.sampleSize = this.id3Header.C() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iA, this.sampleSize - this.sampleBytesRead);
            this.output.c(c0Var, iMin2);
            this.sampleBytesRead += iMin2;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void packetFinished() {
        int i10;
        com.google.android.exoplayer2.util.a.i(this.output);
        if (this.writingSample && (i10 = this.sampleSize) != 0 && this.sampleBytesRead == i10) {
            long j6 = this.sampleTimeUs;
            if (j6 != -9223372036854775807L) {
                this.output.e(j6, 1, i10, 0, null);
            }
            this.writingSample = false;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        dVar.a();
        com.google.android.exoplayer2.extractor.e0 e0VarTrack = nVar.track(dVar.c(), 5);
        this.output = e0VarTrack;
        e0VarTrack.d(new a2.b().S(dVar.b()).e0("application/id3").E());
    }
}
