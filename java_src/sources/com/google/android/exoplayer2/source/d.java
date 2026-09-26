package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.r3;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements y, y.a {

    @Nullable
    private y.a callback;

    @Nullable
    private e.b clippingError;
    long endUs;
    public final y mediaPeriod;
    private long pendingInitialDiscontinuityPositionUs;
    private a[] sampleStreams = new a[0];
    long startUs;

    private final class a implements w0 {
        public final w0 childStream;
        private boolean sentEos;

        public void b() {
            this.sentEos = false;
        }

        public a(w0 w0Var) {
            this.childStream = w0Var;
        }

        @Override // com.google.android.exoplayer2.source.w0
        public int a(b2 b2Var, com.google.android.exoplayer2.decoder.g gVar, int i10) {
            if (d.this.g()) {
                return -3;
            }
            if (this.sentEos) {
                gVar.k(4);
                return -4;
            }
            int iA = this.childStream.a(b2Var, gVar, i10);
            if (iA == -5) {
                a2 a2Var = (a2) com.google.android.exoplayer2.util.a.e(b2Var.format);
                int i11 = a2Var.encoderDelay;
                if (i11 != 0 || a2Var.encoderPadding != 0) {
                    d dVar = d.this;
                    if (dVar.startUs != 0) {
                        i11 = 0;
                    }
                    b2Var.format = a2Var.b().N(i11).O(dVar.endUs == Long.MIN_VALUE ? a2Var.encoderPadding : 0).E();
                }
                return -5;
            }
            d dVar2 = d.this;
            long j6 = dVar2.endUs;
            if (j6 == Long.MIN_VALUE || ((iA != -4 || gVar.timeUs < j6) && !(iA == -3 && dVar2.getBufferedPositionUs() == Long.MIN_VALUE && !gVar.waitingForKeys))) {
                return iA;
            }
            gVar.b();
            gVar.k(4);
            this.sentEos = true;
            return -4;
        }

        @Override // com.google.android.exoplayer2.source.w0
        public boolean isReady() {
            return !d.this.g() && this.childStream.isReady();
        }

        @Override // com.google.android.exoplayer2.source.w0
        public void maybeThrowError() throws IOException {
            this.childStream.maybeThrowError();
        }

        @Override // com.google.android.exoplayer2.source.w0
        public int skipData(long j6) {
            if (d.this.g()) {
                return -3;
            }
            return this.childStream.skipData(j6);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    @Override // com.google.android.exoplayer2.source.y
    public long b(com.google.android.exoplayer2.trackselection.s[] sVarArr, boolean[] zArr, w0[] w0VarArr, boolean[] zArr2, long j6) {
        long j10;
        boolean z6;
        this.sampleStreams = new a[w0VarArr.length];
        w0[] w0VarArr2 = new w0[w0VarArr.length];
        int i10 = 0;
        while (true) {
            w0 w0Var = null;
            if (i10 >= w0VarArr.length) {
                break;
            }
            a[] aVarArr = this.sampleStreams;
            a aVar = (a) w0VarArr[i10];
            aVarArr[i10] = aVar;
            if (aVar != null) {
                w0Var = aVar.childStream;
            }
            w0VarArr2[i10] = w0Var;
            i10++;
        }
        long jB = this.mediaPeriod.b(sVarArr, zArr, w0VarArr2, zArr2, j6);
        if (g()) {
            long j11 = this.startUs;
            if (j6 == j11 && j(j11, sVarArr)) {
                j10 = jB;
            } else {
                j10 = -9223372036854775807L;
            }
        } else {
            j10 = -9223372036854775807L;
        }
        this.pendingInitialDiscontinuityPositionUs = j10;
        if (jB != j6) {
            if (jB >= this.startUs) {
                long j12 = this.endUs;
                z6 = j12 == Long.MIN_VALUE || jB <= j12;
            }
        }
        com.google.android.exoplayer2.util.a.g(z6);
        for (int i11 = 0; i11 < w0VarArr.length; i11++) {
            w0 w0Var2 = w0VarArr2[i11];
            if (w0Var2 == null) {
                this.sampleStreams[i11] = null;
            } else {
                a[] aVarArr2 = this.sampleStreams;
                a aVar2 = aVarArr2[i11];
                if (aVar2 == null || aVar2.childStream != w0Var2) {
                    aVarArr2[i11] = new a(w0Var2);
                }
            }
            w0VarArr[i11] = this.sampleStreams[i11];
        }
        return jB;
    }

    boolean g() {
        return this.pendingInitialDiscontinuityPositionUs != -9223372036854775807L;
    }

    public void i(e.b bVar) {
        this.clippingError = bVar;
    }

    public void k(long j6, long j10) {
        this.startUs = j6;
        this.endUs = j10;
    }

    private r3 a(long j6, r3 r3Var) {
        long jQ = com.google.android.exoplayer2.util.o0.q(r3Var.toleranceBeforeUs, 0L, j6 - this.startUs);
        long j10 = r3Var.toleranceAfterUs;
        long j11 = this.endUs;
        long jQ2 = com.google.android.exoplayer2.util.o0.q(j10, 0L, j11 == Long.MIN_VALUE ? Long.MAX_VALUE : j11 - j6);
        return (jQ == r3Var.toleranceBeforeUs && jQ2 == r3Var.toleranceAfterUs) ? r3Var : new r3(jQ, jQ2);
    }

    private static boolean j(long j6, com.google.android.exoplayer2.trackselection.s[] sVarArr) {
        if (j6 != 0) {
            for (com.google.android.exoplayer2.trackselection.s sVar : sVarArr) {
                if (sVar != null) {
                    a2 selectedFormat = sVar.getSelectedFormat();
                    if (!com.google.android.exoplayer2.util.x.a(selectedFormat.sampleMimeType, selectedFormat.codecs)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public boolean continueLoading(long j6) {
        return this.mediaPeriod.continueLoading(j6);
    }

    @Override // com.google.android.exoplayer2.source.y.a
    public void d(y yVar) {
        if (this.clippingError != null) {
            return;
        }
        ((y.a) com.google.android.exoplayer2.util.a.e(this.callback)).d(this);
    }

    @Override // com.google.android.exoplayer2.source.y
    public void discardBuffer(long j6, boolean z6) {
        this.mediaPeriod.discardBuffer(j6, z6);
    }

    @Override // com.google.android.exoplayer2.source.y
    public long e(long j6, r3 r3Var) {
        long j10 = this.startUs;
        if (j6 == j10) {
            return j10;
        }
        return this.mediaPeriod.e(j6, a(j6, r3Var));
    }

    @Override // com.google.android.exoplayer2.source.y
    public void f(y.a aVar, long j6) {
        this.callback = aVar;
        this.mediaPeriod.f(this, j6);
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public long getBufferedPositionUs() {
        long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
        if (bufferedPositionUs != Long.MIN_VALUE) {
            long j6 = this.endUs;
            if (j6 == Long.MIN_VALUE || bufferedPositionUs < j6) {
                return bufferedPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public long getNextLoadPositionUs() {
        long nextLoadPositionUs = this.mediaPeriod.getNextLoadPositionUs();
        if (nextLoadPositionUs != Long.MIN_VALUE) {
            long j6 = this.endUs;
            if (j6 == Long.MIN_VALUE || nextLoadPositionUs < j6) {
                return nextLoadPositionUs;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.source.y
    public h1 getTrackGroups() {
        return this.mediaPeriod.getTrackGroups();
    }

    @Override // com.google.android.exoplayer2.source.x0.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void c(y yVar) {
        ((y.a) com.google.android.exoplayer2.util.a.e(this.callback)).c(this);
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public boolean isLoading() {
        return this.mediaPeriod.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.y
    public void maybeThrowPrepareError() throws IOException {
        e.b bVar = this.clippingError;
        if (bVar != null) {
            throw bVar;
        }
        this.mediaPeriod.maybeThrowPrepareError();
    }

    @Override // com.google.android.exoplayer2.source.y, com.google.android.exoplayer2.source.x0
    public void reevaluateBuffer(long j6) {
        this.mediaPeriod.reevaluateBuffer(j6);
    }

    public d(y yVar, boolean z6, long j6, long j10) {
        long j11;
        this.mediaPeriod = yVar;
        if (z6) {
            j11 = j6;
        } else {
            j11 = -9223372036854775807L;
        }
        this.pendingInitialDiscontinuityPositionUs = j11;
        this.startUs = j6;
        this.endUs = j10;
    }

    @Override // com.google.android.exoplayer2.source.y
    public long readDiscontinuity() {
        boolean z6;
        if (g()) {
            long j6 = this.pendingInitialDiscontinuityPositionUs;
            this.pendingInitialDiscontinuityPositionUs = -9223372036854775807L;
            long discontinuity = readDiscontinuity();
            if (discontinuity != -9223372036854775807L) {
                return discontinuity;
            }
            return j6;
        }
        long discontinuity2 = this.mediaPeriod.readDiscontinuity();
        if (discontinuity2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z10 = false;
        if (discontinuity2 >= this.startUs) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.g(z6);
        long j10 = this.endUs;
        if (j10 == Long.MIN_VALUE || discontinuity2 <= j10) {
            z10 = true;
        }
        com.google.android.exoplayer2.util.a.g(z10);
        return discontinuity2;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0034  */
    @Override // com.google.android.exoplayer2.source.y
    public long seekToUs(long j6) {
        this.pendingInitialDiscontinuityPositionUs = -9223372036854775807L;
        boolean z6 = false;
        for (a aVar : this.sampleStreams) {
            if (aVar != null) {
                aVar.b();
            }
        }
        long jSeekToUs = this.mediaPeriod.seekToUs(j6);
        if (jSeekToUs != j6) {
            if (jSeekToUs >= this.startUs) {
                long j10 = this.endUs;
                if (j10 == Long.MIN_VALUE || jSeekToUs <= j10) {
                    z6 = true;
                }
            }
        } else {
            z6 = true;
        }
        com.google.android.exoplayer2.util.a.g(z6);
        return jSeekToUs;
    }
}
