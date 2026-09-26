package com.google.android.exoplayer2.extractor.ts;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements com.google.android.exoplayer2.extractor.l {
    public static final com.google.android.exoplayer2.extractor.r FACTORY = new com.google.android.exoplayer2.extractor.r() { // from class: com.google.android.exoplayer2.extractor.ts.d
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ com.google.android.exoplayer2.extractor.l[] a(Uri uri, Map map) {
            return com.google.android.exoplayer2.extractor.q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final com.google.android.exoplayer2.extractor.l[] createExtractors() {
            return e.e();
        }
    };
    private static final int FRAME_HEADER_SIZE = 7;
    private static final int MAX_SNIFF_BYTES = 8192;
    private static final int READ_BUFFER_SIZE = 16384;
    private final f reader = new f();
    private final com.google.android.exoplayer2.util.c0 sampleData = new com.google.android.exoplayer2.util.c0(16384);
    private boolean startedPacket;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.l[] e() {
        return new com.google.android.exoplayer2.extractor.l[]{new e()};
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
            mVar.peekFully(c0Var.d(), 0, 7);
            c0Var.P(0);
            int iJ = c0Var.J();
            if (iJ == 44096 || iJ == 44097) {
                i11++;
                if (i11 >= 4) {
                    return true;
                }
                int iE = com.google.android.exoplayer2.audio.c.e(c0Var.d(), iJ);
                if (iE == -1) {
                    return false;
                }
                mVar.advancePeekPosition(iE - 7);
            } else {
                mVar.resetPeekPosition();
                i12++;
                if (i12 - i10 >= 8192) {
                    return false;
                }
                mVar.advancePeekPosition(i12);
                i11 = 0;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException {
        int i10 = mVar.read(this.sampleData.d(), 0, 16384);
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
