package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;

/* JADX INFO: loaded from: classes7.dex */
public final class k implements m {
    private static final int HEADER_SIZE = 18;
    private static final int STATE_FINDING_SYNC = 0;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private int bytesRead;
    private a2 format;
    private String formatId;

    @Nullable
    private final String language;
    private com.google.android.exoplayer2.extractor.e0 output;
    private long sampleDurationUs;
    private int sampleSize;
    private int syncBytes;
    private final com.google.android.exoplayer2.util.c0 headerScratchBytes = new com.google.android.exoplayer2.util.c0(new byte[18]);
    private int state = 0;
    private long timeUs = -9223372036854775807L;

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
        this.syncBytes = 0;
        this.timeUs = -9223372036854775807L;
    }

    private void e() {
        byte[] bArrD = this.headerScratchBytes.d();
        if (this.format == null) {
            a2 a2VarG = com.google.android.exoplayer2.audio.e0.g(bArrD, this.formatId, this.language, null);
            this.format = a2VarG;
            this.output.d(a2VarG);
        }
        this.sampleSize = com.google.android.exoplayer2.audio.e0.a(bArrD);
        this.sampleDurationUs = (int) ((((long) com.google.android.exoplayer2.audio.e0.f(bArrD)) * 1000000) / ((long) this.format.sampleRate));
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c(com.google.android.exoplayer2.util.c0 c0Var) {
        com.google.android.exoplayer2.util.a.i(this.output);
        while (c0Var.a() > 0) {
            int i10 = this.state;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException();
                    }
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
                } else if (a(c0Var, this.headerScratchBytes.d(), 18)) {
                    e();
                    this.headerScratchBytes.P(0);
                    this.output.c(this.headerScratchBytes, 18);
                    this.state = 2;
                }
            } else if (f(c0Var)) {
                this.state = 1;
            }
        }
    }

    public k(@Nullable String str) {
        this.language = str;
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
        while (c0Var.a() > 0) {
            int i10 = this.syncBytes << 8;
            this.syncBytes = i10;
            int iD = i10 | c0Var.D();
            this.syncBytes = iD;
            if (com.google.android.exoplayer2.audio.e0.d(iD)) {
                byte[] bArrD = this.headerScratchBytes.d();
                int i11 = this.syncBytes;
                bArrD[0] = (byte) ((i11 >> 24) & 255);
                bArrD[1] = (byte) ((i11 >> 16) & 255);
                bArrD[2] = (byte) ((i11 >> 8) & 255);
                bArrD[3] = (byte) (i11 & 255);
                this.bytesRead = 4;
                this.syncBytes = 0;
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        dVar.a();
        this.formatId = dVar.b();
        this.output = nVar.track(dVar.c(), 1);
    }
}
