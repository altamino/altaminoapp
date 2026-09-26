package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements l0 {

    @Nullable
    private com.google.android.exoplayer2.extractor.l extractor;

    @Nullable
    private com.google.android.exoplayer2.extractor.m extractorInput;
    private final com.google.android.exoplayer2.extractor.r extractorsFactory;

    @Override // com.google.android.exoplayer2.source.l0
    public long a() {
        com.google.android.exoplayer2.extractor.m mVar = this.extractorInput;
        if (mVar != null) {
            return mVar.getPosition();
        }
        return -1L;
    }

    @Override // com.google.android.exoplayer2.source.l0
    public void b() {
        com.google.android.exoplayer2.extractor.l lVar = this.extractor;
        if (lVar instanceof com.google.android.exoplayer2.extractor.mp3.f) {
            ((com.google.android.exoplayer2.extractor.mp3.f) lVar).i();
        }
    }

    @Override // com.google.android.exoplayer2.source.l0
    public int c(com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException {
        return ((com.google.android.exoplayer2.extractor.l) com.google.android.exoplayer2.util.a.e(this.extractor)).c((com.google.android.exoplayer2.extractor.m) com.google.android.exoplayer2.util.a.e(this.extractorInput), a0Var);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0046  */
    @Override // com.google.android.exoplayer2.source.l0
    public void d(com.google.android.exoplayer2.upstream.h hVar, Uri uri, Map<String, List<String>> map, long j6, long j10, com.google.android.exoplayer2.extractor.n nVar) throws IOException {
        com.google.android.exoplayer2.extractor.f fVar = new com.google.android.exoplayer2.extractor.f(hVar, j6, j10);
        this.extractorInput = fVar;
        if (this.extractor != null) {
            return;
        }
        com.google.android.exoplayer2.extractor.l[] lVarArrA = this.extractorsFactory.a(uri, map);
        if (lVarArrA.length == 1) {
            this.extractor = lVarArrA[0];
        } else {
            for (com.google.android.exoplayer2.extractor.l lVar : lVarArrA) {
                try {
                    if (lVar.b(fVar)) {
                        this.extractor = lVar;
                        com.google.android.exoplayer2.util.a.g(true);
                        fVar.resetPeekPosition();
                        break;
                    } else {
                        boolean z6 = this.extractor != null || fVar.getPosition() == j6;
                        com.google.android.exoplayer2.util.a.g(z6);
                        fVar.resetPeekPosition();
                    }
                } catch (EOFException unused) {
                    if (this.extractor != null || fVar.getPosition() == j6) {
                    }
                } catch (Throwable th) {
                    com.google.android.exoplayer2.util.a.g(this.extractor != null || fVar.getPosition() == j6);
                    fVar.resetPeekPosition();
                    throw th;
                }
                com.google.android.exoplayer2.util.a.g(z6);
                fVar.resetPeekPosition();
            }
            if (this.extractor == null) {
                throw new i1("None of the available extractors (" + com.google.android.exoplayer2.util.o0.G(lVarArrA) + ") could read the stream.", (Uri) com.google.android.exoplayer2.util.a.e(uri));
            }
        }
        this.extractor.d(nVar);
    }

    @Override // com.google.android.exoplayer2.source.l0
    public void release() {
        com.google.android.exoplayer2.extractor.l lVar = this.extractor;
        if (lVar != null) {
            lVar.release();
            this.extractor = null;
        }
        this.extractorInput = null;
    }

    @Override // com.google.android.exoplayer2.source.l0
    public void seek(long j6, long j10) {
        ((com.google.android.exoplayer2.extractor.l) com.google.android.exoplayer2.util.a.e(this.extractor)).seek(j6, j10);
    }

    public c(com.google.android.exoplayer2.extractor.r rVar) {
        this.extractorsFactory = rVar;
    }
}
