package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.a2;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class l implements m {
    private int bytesToCheck;
    private final com.google.android.exoplayer2.extractor.e0[] outputs;
    private int sampleBytesWritten;
    private long sampleTimeUs = -9223372036854775807L;
    private final List<i0.a> subtitleInfos;
    private boolean writingSample;

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(long j6, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.writingSample = true;
        if (j6 != -9223372036854775807L) {
            this.sampleTimeUs = j6;
        }
        this.sampleBytesWritten = 0;
        this.bytesToCheck = 2;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        for (int i10 = 0; i10 < this.outputs.length; i10++) {
            i0.a aVar = this.subtitleInfos.get(i10);
            dVar.a();
            com.google.android.exoplayer2.extractor.e0 e0VarTrack = nVar.track(dVar.c(), 3);
            e0VarTrack.d(new a2.b().S(dVar.b()).e0("application/dvbsubs").T(Collections.singletonList(aVar.initializationData)).V(aVar.language).E());
            this.outputs[i10] = e0VarTrack;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void seek() {
        this.writingSample = false;
        this.sampleTimeUs = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c(com.google.android.exoplayer2.util.c0 c0Var) {
        if (this.writingSample) {
            if (this.bytesToCheck != 2 || a(c0Var, 32)) {
                if (this.bytesToCheck != 1 || a(c0Var, 0)) {
                    int iE = c0Var.e();
                    int iA = c0Var.a();
                    for (com.google.android.exoplayer2.extractor.e0 e0Var : this.outputs) {
                        c0Var.P(iE);
                        e0Var.c(c0Var, iA);
                    }
                    this.sampleBytesWritten += iA;
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void packetFinished() {
        if (this.writingSample) {
            if (this.sampleTimeUs != -9223372036854775807L) {
                for (com.google.android.exoplayer2.extractor.e0 e0Var : this.outputs) {
                    e0Var.e(this.sampleTimeUs, 1, this.sampleBytesWritten, 0, null);
                }
            }
            this.writingSample = false;
        }
    }

    public l(List<i0.a> list) {
        this.subtitleInfos = list;
        this.outputs = new com.google.android.exoplayer2.extractor.e0[list.size()];
    }

    private boolean a(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        if (c0Var.a() == 0) {
            return false;
        }
        if (c0Var.D() != i10) {
            this.writingSample = false;
        }
        this.bytesToCheck--;
        return this.writingSample;
    }
}
