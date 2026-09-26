package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.a2;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class d0 {
    private final List<a2> closedCaptionFormats;
    private final com.google.android.exoplayer2.extractor.e0[] outputs;

    public void b(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        for (int i10 = 0; i10 < this.outputs.length; i10++) {
            dVar.a();
            com.google.android.exoplayer2.extractor.e0 e0VarTrack = nVar.track(dVar.c(), 3);
            a2 a2Var = this.closedCaptionFormats.get(i10);
            String str = a2Var.sampleMimeType;
            com.google.android.exoplayer2.util.a.b("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption mime type provided: " + str);
            String strB = a2Var.id;
            if (strB == null) {
                strB = dVar.b();
            }
            e0VarTrack.d(new a2.b().S(strB).e0(str).g0(a2Var.selectionFlags).V(a2Var.language).F(a2Var.accessibilityChannel).T(a2Var.initializationData).E());
            this.outputs[i10] = e0VarTrack;
        }
    }

    public void a(long j6, com.google.android.exoplayer2.util.c0 c0Var) {
        com.google.android.exoplayer2.extractor.c.a(j6, c0Var, this.outputs);
    }

    public d0(List<a2> list) {
        this.closedCaptionFormats = list;
        this.outputs = new com.google.android.exoplayer2.extractor.e0[list.size()];
    }
}
