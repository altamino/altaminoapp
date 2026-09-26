package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;

/* JADX INFO: loaded from: classes7.dex */
public final class t implements m {
    private static final int HEADER_SIZE = 4;
    private static final int STATE_FINDING_HEADER = 0;
    private static final int STATE_READING_FRAME = 2;
    private static final int STATE_READING_HEADER = 1;
    private String formatId;
    private int frameBytesRead;
    private long frameDurationUs;
    private int frameSize;
    private boolean hasOutputFormat;
    private final com.google.android.exoplayer2.audio.h0.a header;
    private final com.google.android.exoplayer2.util.c0 headerScratch;

    @Nullable
    private final String language;
    private boolean lastByteWasFF;
    private com.google.android.exoplayer2.extractor.e0 output;
    private int state;
    private long timeUs;

    public t() {
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
        this.frameBytesRead = 0;
        this.lastByteWasFF = false;
        this.timeUs = -9223372036854775807L;
    }

    public t(@Nullable String str) {
        this.state = 0;
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(4);
        this.headerScratch = c0Var;
        c0Var.d()[0] = -1;
        this.header = new com.google.android.exoplayer2.audio.h0.a();
        this.timeUs = -9223372036854775807L;
        this.language = str;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c(com.google.android.exoplayer2.util.c0 c0Var) {
        com.google.android.exoplayer2.util.a.i(this.output);
        while (c0Var.a() > 0) {
            int i10 = this.state;
            if (i10 == 0) {
                a(c0Var);
            } else if (i10 == 1) {
                f(c0Var);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException();
                }
                e(c0Var);
            }
        }
    }

    private void a(com.google.android.exoplayer2.util.c0 c0Var) {
        boolean z6;
        boolean z10;
        byte[] bArrD = c0Var.d();
        int iF = c0Var.f();
        for (int iE = c0Var.e(); iE < iF; iE++) {
            byte b7 = bArrD[iE];
            if ((b7 & 255) == 255) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (this.lastByteWasFF && (b7 & 224) == 224) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.lastByteWasFF = z6;
            if (z10) {
                c0Var.P(iE + 1);
                this.lastByteWasFF = false;
                this.headerScratch.d()[1] = bArrD[iE];
                this.frameBytesRead = 2;
                this.state = 1;
                return;
            }
        }
        c0Var.P(iF);
    }

    private void e(com.google.android.exoplayer2.util.c0 c0Var) {
        int iMin = Math.min(c0Var.a(), this.frameSize - this.frameBytesRead);
        this.output.c(c0Var, iMin);
        int i10 = this.frameBytesRead + iMin;
        this.frameBytesRead = i10;
        int i11 = this.frameSize;
        if (i10 < i11) {
            return;
        }
        long j6 = this.timeUs;
        if (j6 != -9223372036854775807L) {
            this.output.e(j6, 1, i11, 0, null);
            this.timeUs += this.frameDurationUs;
        }
        this.frameBytesRead = 0;
        this.state = 0;
    }

    private void f(com.google.android.exoplayer2.util.c0 c0Var) {
        int iMin = Math.min(c0Var.a(), 4 - this.frameBytesRead);
        c0Var.j(this.headerScratch.d(), this.frameBytesRead, iMin);
        int i10 = this.frameBytesRead + iMin;
        this.frameBytesRead = i10;
        if (i10 < 4) {
            return;
        }
        this.headerScratch.P(0);
        if (!this.header.a(this.headerScratch.n())) {
            this.frameBytesRead = 0;
            this.state = 1;
            return;
        }
        com.google.android.exoplayer2.audio.h0.a aVar = this.header;
        this.frameSize = aVar.frameSize;
        if (!this.hasOutputFormat) {
            this.frameDurationUs = (((long) aVar.samplesPerFrame) * 1000000) / ((long) aVar.sampleRate);
            this.output.d(new a2.b().S(this.formatId).e0(this.header.mimeType).W(4096).H(this.header.channels).f0(this.header.sampleRate).V(this.language).E());
            this.hasOutputFormat = true;
        }
        this.headerScratch.P(0);
        this.output.c(this.headerScratch, 4);
        this.state = 2;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        dVar.a();
        this.formatId = dVar.b();
        this.output = nVar.track(dVar.c(), 1);
    }
}
