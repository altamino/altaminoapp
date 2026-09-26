package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.o0;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements m {
    private static final int HEADER_SIZE = 128;
    private static final int STATE_FINDING_SYNC = 0;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private int bytesRead;
    private a2 format;
    private String formatId;
    private final com.google.android.exoplayer2.util.b0 headerScratchBits;
    private final com.google.android.exoplayer2.util.c0 headerScratchBytes;

    @Nullable
    private final String language;
    private boolean lastByteWas0B;
    private com.google.android.exoplayer2.extractor.e0 output;
    private long sampleDurationUs;
    private int sampleSize;
    private int state;
    private long timeUs;

    public c() {
        this(null);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(long j6, int i10) {
        if (j6 != -9223372036854775807L) {
            this.timeUs = j6;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void seek() {
        this.state = 0;
        this.bytesRead = 0;
        this.lastByteWas0B = false;
        this.timeUs = -9223372036854775807L;
    }

    public c(@Nullable String str) {
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(new byte[128]);
        this.headerScratchBits = b0Var;
        this.headerScratchBytes = new com.google.android.exoplayer2.util.c0(b0Var.data);
        this.state = 0;
        this.timeUs = -9223372036854775807L;
        this.language = str;
    }

    private void e() {
        this.headerScratchBits.p(0);
        com.google.android.exoplayer2.audio.b.C0164b c0164bE = com.google.android.exoplayer2.audio.b.e(this.headerScratchBits);
        a2 a2Var = this.format;
        if (a2Var == null || c0164bE.channelCount != a2Var.channelCount || c0164bE.sampleRate != a2Var.sampleRate || !o0.c(c0164bE.mimeType, a2Var.sampleMimeType)) {
            a2 a2VarE = new a2.b().S(this.formatId).e0(c0164bE.mimeType).H(c0164bE.channelCount).f0(c0164bE.sampleRate).V(this.language).E();
            this.format = a2VarE;
            this.output.d(a2VarE);
        }
        this.sampleSize = c0164bE.frameSize;
        this.sampleDurationUs = (((long) c0164bE.sampleCount) * 1000000) / ((long) this.format.sampleRate);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c(com.google.android.exoplayer2.util.c0 c0Var) {
        com.google.android.exoplayer2.util.a.i(this.output);
        while (c0Var.a() > 0) {
            int i10 = this.state;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        int iMin = Math.min(c0Var.a(), this.sampleSize - this.bytesRead);
                        this.output.c(c0Var, iMin);
                        int i11 = this.bytesRead + iMin;
                        this.bytesRead = i11;
                        int i12 = this.sampleSize;
                        if (i11 == i12) {
                            long j6 = this.timeUs;
                            if (j6 != -9223372036854775807L) {
                                this.output.e(j6, 1, i12, 0, null);
                                this.timeUs += this.sampleDurationUs;
                            }
                            this.state = 0;
                        }
                    }
                } else if (a(c0Var, this.headerScratchBytes.d(), 128)) {
                    e();
                    this.headerScratchBytes.P(0);
                    this.output.c(this.headerScratchBytes, 128);
                    this.state = 2;
                }
            } else if (f(c0Var)) {
                this.state = 1;
                this.headerScratchBytes.d()[0] = com.google.common.base.c.VT;
                this.headerScratchBytes.d()[1] = 119;
                this.bytesRead = 2;
            }
        }
    }

    private boolean a(com.google.android.exoplayer2.util.c0 c0Var, byte[] bArr, int i10) {
        int iMin = Math.min(c0Var.a(), i10 - this.bytesRead);
        c0Var.j(bArr, this.bytesRead, iMin);
        int i11 = this.bytesRead + iMin;
        this.bytesRead = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private boolean f(com.google.android.exoplayer2.util.c0 c0Var) {
        while (true) {
            boolean z6 = false;
            if (c0Var.a() <= 0) {
                return false;
            }
            if (!this.lastByteWas0B) {
                if (c0Var.D() == 11) {
                    z6 = true;
                }
                this.lastByteWas0B = z6;
            } else {
                int iD = c0Var.D();
                if (iD == 119) {
                    this.lastByteWas0B = false;
                    return true;
                }
                if (iD == 11) {
                    z6 = true;
                }
                this.lastByteWas0B = z6;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        dVar.a();
        this.formatId = dVar.b();
        this.output = nVar.track(dVar.c(), 1);
    }
}
