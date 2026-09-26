package com.google.android.exoplayer2.extractor.ogg;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.extractor.q;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.v2;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class d implements l {
    public static final r FACTORY = new r() { // from class: com.google.android.exoplayer2.extractor.ogg.c
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final l[] createExtractors() {
            return d.e();
        }
    };
    private static final int MAX_VERIFICATION_BYTES = 8;
    private n output;
    private i streamReader;
    private boolean streamReaderInitialized;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] e() {
        return new l[]{new d()};
    }

    private static c0 f(c0 c0Var) {
        c0Var.P(0);
        return c0Var;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(n nVar) {
        this.output = nVar;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    private boolean g(m mVar) throws IOException {
        f fVar = new f();
        if (fVar.a(mVar, true) && (fVar.type & 2) == 2) {
            int iMin = Math.min(fVar.bodySize, 8);
            c0 c0Var = new c0(iMin);
            mVar.peekFully(c0Var.d(), 0, iMin);
            if (b.p(f(c0Var))) {
                this.streamReader = new b();
            } else if (j.r(f(c0Var))) {
                this.streamReader = new j();
            } else if (h.p(f(c0Var))) {
                this.streamReader = new h();
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(m mVar, a0 a0Var) throws IOException {
        com.google.android.exoplayer2.util.a.i(this.output);
        if (this.streamReader == null) {
            if (!g(mVar)) {
                throw v2.a("Failed to determine bitstream type", null);
            }
            mVar.resetPeekPosition();
        }
        if (!this.streamReaderInitialized) {
            e0 e0VarTrack = this.output.track(0, 1);
            this.output.endTracks();
            this.streamReader.d(this.output, e0VarTrack);
            this.streamReaderInitialized = true;
        }
        return this.streamReader.g(mVar, a0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        i iVar = this.streamReader;
        if (iVar != null) {
            iVar.m(j6, j10);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(m mVar) throws IOException {
        try {
            return g(mVar);
        } catch (v2 unused) {
            return false;
        }
    }
}
