package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
abstract class i {
    private static final int STATE_END_OF_INPUT = 3;
    private static final int STATE_READ_HEADERS = 0;
    private static final int STATE_READ_PAYLOAD = 2;
    private static final int STATE_SKIP_HEADERS = 1;
    private long currentGranule;
    private n extractorOutput;
    private boolean formatSet;
    private long lengthOfReadPacket;
    private g oggSeeker;
    private long payloadStartPosition;
    private int sampleRate;
    private boolean seekMapSet;
    private int state;
    private long targetGranule;
    private e0 trackOutput;
    private final e oggPacket = new e();
    private b setupData = new b();

    private static final class c implements g {
        private c() {
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public long a(m mVar) {
            return -1L;
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public void startSeek(long j6) {
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public b0 createSeekMap() {
            return new b0.b(-9223372036854775807L);
        }
    }

    protected void e(long j6) {
        this.currentGranule = j6;
    }

    protected abstract long f(c0 c0Var);

    protected abstract boolean i(c0 c0Var, long j6, b bVar) throws IOException;

    static class b {
        a2 format;
        g oggSeeker;

        b() {
        }
    }

    private void a() {
        com.google.android.exoplayer2.util.a.i(this.trackOutput);
        o0.j(this.extractorOutput);
    }

    private boolean h(m mVar) throws IOException {
        while (this.oggPacket.d(mVar)) {
            this.lengthOfReadPacket = mVar.getPosition() - this.payloadStartPosition;
            if (!i(this.oggPacket.c(), this.payloadStartPosition, this.setupData)) {
                return true;
            }
            this.payloadStartPosition = mVar.getPosition();
        }
        this.state = 3;
        return false;
    }

    private int k(m mVar, a0 a0Var) throws IOException {
        long jA = this.oggSeeker.a(mVar);
        if (jA >= 0) {
            a0Var.position = jA;
            return 1;
        }
        if (jA < -1) {
            e(-(jA + 2));
        }
        if (!this.seekMapSet) {
            this.extractorOutput.h((b0) com.google.android.exoplayer2.util.a.i(this.oggSeeker.createSeekMap()));
            this.seekMapSet = true;
        }
        if (this.lengthOfReadPacket <= 0 && !this.oggPacket.d(mVar)) {
            this.state = 3;
            return -1;
        }
        this.lengthOfReadPacket = 0L;
        c0 c0VarC = this.oggPacket.c();
        long jF = f(c0VarC);
        if (jF >= 0) {
            long j6 = this.currentGranule;
            if (j6 + jF >= this.targetGranule) {
                long jB = b(j6);
                this.trackOutput.c(c0VarC, c0VarC.f());
                this.trackOutput.e(jB, 1, c0VarC.f(), 0, null);
                this.targetGranule = -1L;
            }
        }
        this.currentGranule += jF;
        return 0;
    }

    protected long c(long j6) {
        return (((long) this.sampleRate) * j6) / 1000000;
    }

    void d(n nVar, e0 e0Var) {
        this.extractorOutput = nVar;
        this.trackOutput = e0Var;
        l(true);
    }

    protected void l(boolean z6) {
        if (z6) {
            this.setupData = new b();
            this.payloadStartPosition = 0L;
            this.state = 0;
        } else {
            this.state = 1;
        }
        this.targetGranule = -1L;
        this.currentGranule = 0L;
    }

    final void m(long j6, long j10) {
        this.oggPacket.e();
        if (j6 == 0) {
            l(!this.seekMapSet);
        } else if (this.state != 0) {
            this.targetGranule = c(j10);
            ((g) o0.j(this.oggSeeker)).startSeek(this.targetGranule);
            this.state = 2;
        }
    }

    private int j(m mVar) throws IOException {
        boolean z6;
        if (!h(mVar)) {
            return -1;
        }
        a2 a2Var = this.setupData.format;
        this.sampleRate = a2Var.sampleRate;
        if (!this.formatSet) {
            this.trackOutput.d(a2Var);
            this.formatSet = true;
        }
        g gVar = this.setupData.oggSeeker;
        if (gVar != null) {
            this.oggSeeker = gVar;
        } else if (mVar.getLength() == -1) {
            this.oggSeeker = new c();
        } else {
            f fVarB = this.oggPacket.b();
            if ((fVarB.type & 4) != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.oggSeeker = new com.google.android.exoplayer2.extractor.ogg.a(this, this.payloadStartPosition, mVar.getLength(), fVarB.headerSize + fVarB.bodySize, fVarB.granulePosition, z6);
        }
        this.state = 2;
        this.oggPacket.f();
        return 0;
    }

    protected long b(long j6) {
        return (j6 * 1000000) / ((long) this.sampleRate);
    }

    final int g(m mVar, a0 a0Var) throws IOException {
        a();
        int i10 = this.state;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                o0.j(this.oggSeeker);
                return k(mVar, a0Var);
            }
            mVar.skipFully((int) this.payloadStartPosition);
            this.state = 2;
            return 0;
        }
        return j(mVar);
    }
}
