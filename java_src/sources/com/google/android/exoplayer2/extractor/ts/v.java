package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes7.dex */
public final class v implements b0 {
    private a2 format;
    private com.google.android.exoplayer2.extractor.e0 output;
    private l0 timestampAdjuster;

    private void b() {
        com.google.android.exoplayer2.util.a.i(this.timestampAdjuster);
        o0.j(this.output);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.b0
    public void a(l0 l0Var, com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        this.timestampAdjuster = l0Var;
        dVar.a();
        com.google.android.exoplayer2.extractor.e0 e0VarTrack = nVar.track(dVar.c(), 5);
        this.output = e0VarTrack;
        e0VarTrack.d(this.format);
    }

    public v(String str) {
        this.format = new a2.b().e0(str).E();
    }

    @Override // com.google.android.exoplayer2.extractor.ts.b0
    public void c(com.google.android.exoplayer2.util.c0 c0Var) {
        b();
        long jD = this.timestampAdjuster.d();
        long jE = this.timestampAdjuster.e();
        if (jD != -9223372036854775807L && jE != -9223372036854775807L) {
            a2 a2Var = this.format;
            if (jE != a2Var.subsampleOffsetUs) {
                a2 a2VarE = a2Var.b().i0(jE).E();
                this.format = a2VarE;
                this.output.d(a2VarE);
            }
            int iA = c0Var.a();
            this.output.c(c0Var, iA);
            this.output.e(jD, 1, iA, 0, null);
        }
    }
}
