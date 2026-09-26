package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.a2;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
final class k0 {
    private static final int USER_DATA_START_CODE = 434;
    private final List<a2> closedCaptionFormats;
    private final com.google.android.exoplayer2.extractor.e0[] outputs;

    public void b(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        for (int i10 = 0; i10 < this.outputs.length; i10++) {
            dVar.a();
            com.google.android.exoplayer2.extractor.e0 e0VarTrack = nVar.track(dVar.c(), 3);
            a2 a2Var = this.closedCaptionFormats.get(i10);
            String str = a2Var.sampleMimeType;
            com.google.android.exoplayer2.util.a.b("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
            e0VarTrack.d(new a2.b().S(dVar.b()).e0(str).g0(a2Var.selectionFlags).V(a2Var.language).F(a2Var.accessibilityChannel).T(a2Var.initializationData).E());
            this.outputs[i10] = e0VarTrack;
        }
    }

    public k0(List<a2> list) {
        this.closedCaptionFormats = list;
        this.outputs = new com.google.android.exoplayer2.extractor.e0[list.size()];
    }

    public void a(long j6, com.google.android.exoplayer2.util.c0 c0Var) {
        if (c0Var.a() < 9) {
            return;
        }
        int iN = c0Var.n();
        int iN2 = c0Var.n();
        int iD = c0Var.D();
        if (iN == USER_DATA_START_CODE && iN2 == 1195456820 && iD == 3) {
            com.google.android.exoplayer2.extractor.c.b(j6, c0Var, this.outputs);
        }
    }
}
