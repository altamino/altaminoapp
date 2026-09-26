package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.v2;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
public final class s implements m {
    private static final int INITIAL_BUFFER_SIZE = 1024;
    private static final int STATE_FINDING_SYNC_1 = 0;
    private static final int STATE_FINDING_SYNC_2 = 1;
    private static final int STATE_READING_HEADER = 2;
    private static final int STATE_READING_SAMPLE = 3;
    private static final int SYNC_BYTE_FIRST = 86;
    private static final int SYNC_BYTE_SECOND = 224;
    private int audioMuxVersionA;
    private int bytesRead;
    private int channelCount;

    @Nullable
    private String codecs;
    private a2 format;
    private String formatId;
    private int frameLengthType;

    @Nullable
    private final String language;
    private int numSubframes;
    private long otherDataLenBits;
    private boolean otherDataPresent;
    private com.google.android.exoplayer2.extractor.e0 output;
    private final com.google.android.exoplayer2.util.b0 sampleBitArray;
    private final com.google.android.exoplayer2.util.c0 sampleDataBuffer;
    private long sampleDurationUs;
    private int sampleRateHz;
    private int sampleSize;
    private int secondHeaderByte;
    private int state;
    private boolean streamMuxRead;
    private long timeUs;

    private static long a(com.google.android.exoplayer2.util.b0 b0Var) {
        return b0Var.h((b0Var.h(2) + 1) * 8);
    }

    private void g(com.google.android.exoplayer2.util.b0 b0Var) {
        int iH = b0Var.h(3);
        this.frameLengthType = iH;
        if (iH == 0) {
            b0Var.r(8);
            return;
        }
        if (iH == 1) {
            b0Var.r(9);
            return;
        }
        if (iH == 3 || iH == 4 || iH == 5) {
            b0Var.r(6);
        } else {
            if (iH != 6 && iH != 7) {
                throw new IllegalStateException();
            }
            b0Var.r(1);
        }
    }

    private void j(com.google.android.exoplayer2.util.b0 b0Var) throws v2 {
        boolean zG;
        int iH = b0Var.h(1);
        int iH2 = iH == 1 ? b0Var.h(1) : 0;
        this.audioMuxVersionA = iH2;
        if (iH2 != 0) {
            throw v2.a(null, null);
        }
        if (iH == 1) {
            a(b0Var);
        }
        if (!b0Var.g()) {
            throw v2.a(null, null);
        }
        this.numSubframes = b0Var.h(6);
        int iH3 = b0Var.h(4);
        int iH4 = b0Var.h(3);
        if (iH3 != 0 || iH4 != 0) {
            throw v2.a(null, null);
        }
        if (iH == 0) {
            int iE = b0Var.e();
            int iF = f(b0Var);
            b0Var.p(iE);
            byte[] bArr = new byte[(iF + 7) / 8];
            b0Var.i(bArr, 0, iF);
            a2 a2VarE = new a2.b().S(this.formatId).e0("audio/mp4a-latm").I(this.codecs).H(this.channelCount).f0(this.sampleRateHz).T(Collections.singletonList(bArr)).V(this.language).E();
            if (!a2VarE.equals(this.format)) {
                this.format = a2VarE;
                this.sampleDurationUs = 1024000000 / ((long) a2VarE.sampleRate);
                this.output.d(a2VarE);
            }
        } else {
            b0Var.r(((int) a(b0Var)) - f(b0Var));
        }
        g(b0Var);
        boolean zG2 = b0Var.g();
        this.otherDataPresent = zG2;
        this.otherDataLenBits = 0L;
        if (zG2) {
            if (iH == 1) {
                this.otherDataLenBits = a(b0Var);
            } else {
                do {
                    zG = b0Var.g();
                    this.otherDataLenBits = (this.otherDataLenBits << 8) + ((long) b0Var.h(8));
                } while (zG);
            }
        }
        if (b0Var.g()) {
            b0Var.r(8);
        }
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
        this.timeUs = -9223372036854775807L;
        this.streamMuxRead = false;
    }

    private int h(com.google.android.exoplayer2.util.b0 b0Var) throws v2 {
        int iH;
        if (this.frameLengthType != 0) {
            throw v2.a(null, null);
        }
        int i10 = 0;
        do {
            iH = b0Var.h(8);
            i10 += iH;
        } while (iH == 255);
        return i10;
    }

    private void k(int i10) {
        this.sampleDataBuffer.L(i10);
        this.sampleBitArray.n(this.sampleDataBuffer.d());
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c(com.google.android.exoplayer2.util.c0 c0Var) throws v2 {
        com.google.android.exoplayer2.util.a.i(this.output);
        while (c0Var.a() > 0) {
            int i10 = this.state;
            if (i10 != 0) {
                if (i10 == 1) {
                    int iD = c0Var.D();
                    if ((iD & 224) == 224) {
                        this.secondHeaderByte = iD;
                        this.state = 2;
                    } else if (iD != 86) {
                        this.state = 0;
                    }
                } else if (i10 == 2) {
                    int iD2 = ((this.secondHeaderByte & (-225)) << 8) | c0Var.D();
                    this.sampleSize = iD2;
                    if (iD2 > this.sampleDataBuffer.d().length) {
                        k(this.sampleSize);
                    }
                    this.bytesRead = 0;
                    this.state = 3;
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(c0Var.a(), this.sampleSize - this.bytesRead);
                    c0Var.j(this.sampleBitArray.data, this.bytesRead, iMin);
                    int i11 = this.bytesRead + iMin;
                    this.bytesRead = i11;
                    if (i11 == this.sampleSize) {
                        this.sampleBitArray.p(0);
                        e(this.sampleBitArray);
                        this.state = 0;
                    }
                }
            } else if (c0Var.D() == 86) {
                this.state = 1;
            }
        }
    }

    public s(@Nullable String str) {
        this.language = str;
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(1024);
        this.sampleDataBuffer = c0Var;
        this.sampleBitArray = new com.google.android.exoplayer2.util.b0(c0Var.d());
        this.timeUs = -9223372036854775807L;
    }

    private void e(com.google.android.exoplayer2.util.b0 b0Var) throws v2 {
        if (!b0Var.g()) {
            this.streamMuxRead = true;
            j(b0Var);
        } else if (!this.streamMuxRead) {
            return;
        }
        if (this.audioMuxVersionA == 0) {
            if (this.numSubframes == 0) {
                i(b0Var, h(b0Var));
                if (this.otherDataPresent) {
                    b0Var.r((int) this.otherDataLenBits);
                    return;
                }
                return;
            }
            throw v2.a(null, null);
        }
        throw v2.a(null, null);
    }

    private int f(com.google.android.exoplayer2.util.b0 b0Var) throws v2 {
        int iB = b0Var.b();
        com.google.android.exoplayer2.audio.a.b bVarD = com.google.android.exoplayer2.audio.a.d(b0Var, true);
        this.codecs = bVarD.codecs;
        this.sampleRateHz = bVarD.sampleRateHz;
        this.channelCount = bVarD.channelCount;
        return iB - b0Var.b();
    }

    private void i(com.google.android.exoplayer2.util.b0 b0Var, int i10) {
        int iE = b0Var.e();
        if ((iE & 7) == 0) {
            this.sampleDataBuffer.P(iE >> 3);
        } else {
            b0Var.i(this.sampleDataBuffer.d(), 0, i10 * 8);
            this.sampleDataBuffer.P(0);
        }
        this.output.c(this.sampleDataBuffer, i10);
        long j6 = this.timeUs;
        if (j6 != -9223372036854775807L) {
            this.output.e(j6, 1, i10, 0, null);
            this.timeUs += this.sampleDurationUs;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        dVar.a();
        this.output = nVar.track(dVar.c(), 1);
        this.formatId = dVar.b();
    }
}
