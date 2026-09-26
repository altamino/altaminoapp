package com.google.android.exoplayer2.extractor.ts;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements com.google.android.exoplayer2.extractor.l {
    private static final int AC3_SYNC_WORD = 2935;
    public static final com.google.android.exoplayer2.extractor.r FACTORY = new com.google.android.exoplayer2.extractor.r() { // from class: com.google.android.exoplayer2.extractor.ts.a
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ com.google.android.exoplayer2.extractor.l[] a(Uri uri, Map map) {
            return com.google.android.exoplayer2.extractor.q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final com.google.android.exoplayer2.extractor.l[] createExtractors() {
            return b.e();
        }
    };
    private static final int MAX_SNIFF_BYTES = 8192;
    private static final int MAX_SYNC_FRAME_SIZE = 2786;
    private final c reader = new c();
    private final com.google.android.exoplayer2.util.c0 sampleData = new com.google.android.exoplayer2.util.c0(MAX_SYNC_FRAME_SIZE);
    private boolean startedPacket;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.l[] e() {
        return new com.google.android.exoplayer2.extractor.l[]{new b()};
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        this.startedPacket = false;
        this.reader.seek();
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(10);
        int i10 = 0;
        while (true) {
            mVar.peekFully(c0Var.d(), 0, 10);
            c0Var.P(0);
            if (c0Var.G() != 4801587) {
                break;
            }
            c0Var.Q(3);
            int iC = c0Var.C();
            i10 += iC + 10;
            mVar.advancePeekPosition(iC);
        }
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(i10);
        int i11 = 0;
        int i12 = i10;
        while (true) {
            mVar.peekFully(c0Var.d(), 0, 6);
            c0Var.P(0);
            if (c0Var.J() != AC3_SYNC_WORD) {
                mVar.resetPeekPosition();
                i12++;
                if (i12 - i10 >= 8192) {
                    return false;
                }
                mVar.advancePeekPosition(i12);
                i11 = 0;
            } else {
                i11++;
                if (i11 >= 4) {
                    return true;
                }
                int iF = com.google.android.exoplayer2.audio.b.f(c0Var.d());
                if (iF == -1) {
                    return false;
                }
                mVar.advancePeekPosition(iF - 6);
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException {
        int i10 = mVar.read(this.sampleData.d(), 0, MAX_SYNC_FRAME_SIZE);
        if (i10 == -1) {
            return -1;
        }
        this.sampleData.P(0);
        this.sampleData.O(i10);
        if (!this.startedPacket) {
            this.reader.b(0L, 4);
            this.startedPacket = true;
        }
        this.reader.c(this.sampleData);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(com.google.android.exoplayer2.extractor.n nVar) {
        this.reader.d(nVar, new i0.d(0, 1));
        nVar.endTracks();
        nVar.h(new com.google.android.exoplayer2.extractor.b0.b(-9223372036854775807L));
    }
}
