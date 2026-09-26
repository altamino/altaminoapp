package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.v2;
import java.util.Arrays;
import java.util.Collections;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements m {
    private static final int CRC_SIZE = 2;
    private static final int HEADER_SIZE = 5;
    private static final int ID3_HEADER_SIZE = 10;
    private static final byte[] ID3_IDENTIFIER = {73, 68, TarConstants.LF_CHR};
    private static final int ID3_SIZE_OFFSET = 6;
    private static final int MATCH_STATE_FF = 512;
    private static final int MATCH_STATE_I = 768;
    private static final int MATCH_STATE_ID = 1024;
    private static final int MATCH_STATE_START = 256;
    private static final int MATCH_STATE_VALUE_SHIFT = 8;
    private static final int STATE_CHECKING_ADTS_HEADER = 1;
    private static final int STATE_FINDING_SAMPLE = 0;
    private static final int STATE_READING_ADTS_HEADER = 3;
    private static final int STATE_READING_ID3_HEADER = 2;
    private static final int STATE_READING_SAMPLE = 4;
    private static final String TAG = "AdtsReader";
    private static final int VERSION_UNSET = -1;
    private final com.google.android.exoplayer2.util.b0 adtsScratch;
    private int bytesRead;
    private int currentFrameVersion;
    private com.google.android.exoplayer2.extractor.e0 currentOutput;
    private long currentSampleDuration;
    private final boolean exposeId3;
    private int firstFrameSampleRateIndex;
    private int firstFrameVersion;
    private String formatId;
    private boolean foundFirstFrame;
    private boolean hasCrc;
    private boolean hasOutputFormat;
    private final com.google.android.exoplayer2.util.c0 id3HeaderBuffer;
    private com.google.android.exoplayer2.extractor.e0 id3Output;

    @Nullable
    private final String language;
    private int matchState;
    private com.google.android.exoplayer2.extractor.e0 output;
    private long sampleDurationUs;
    private int sampleSize;
    private int state;
    private long timeUs;

    public i(boolean z6) {
        this(z6, null);
    }

    public static boolean k(int i10) {
        return (i10 & 65526) == 65520;
    }

    private void o() {
        this.foundFirstFrame = false;
        q();
    }

    private void p() {
        this.state = 1;
        this.bytesRead = 0;
    }

    private void q() {
        this.state = 0;
        this.bytesRead = 0;
        this.matchState = 256;
    }

    private void r() {
        this.state = 3;
        this.bytesRead = 0;
    }

    private void s() {
        this.state = 2;
        this.bytesRead = ID3_IDENTIFIER.length;
        this.sampleSize = 0;
        this.id3HeaderBuffer.P(0);
    }

    private void t(com.google.android.exoplayer2.extractor.e0 e0Var, long j6, int i10, int i11) {
        this.state = 4;
        this.bytesRead = i10;
        this.currentOutput = e0Var;
        this.currentSampleDuration = j6;
        this.sampleSize = i11;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(long j6, int i10) {
        if (j6 != -9223372036854775807L) {
            this.timeUs = j6;
        }
    }

    public long i() {
        return this.sampleDurationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void packetFinished() {
    }

    public i(boolean z6, @Nullable String str) {
        this.adtsScratch = new com.google.android.exoplayer2.util.b0(new byte[7]);
        this.id3HeaderBuffer = new com.google.android.exoplayer2.util.c0(Arrays.copyOf(ID3_IDENTIFIER, 10));
        q();
        this.firstFrameVersion = -1;
        this.firstFrameSampleRateIndex = -1;
        this.sampleDurationUs = -9223372036854775807L;
        this.timeUs = -9223372036854775807L;
        this.exposeId3 = z6;
        this.language = str;
    }

    private void a() {
        com.google.android.exoplayer2.util.a.e(this.output);
        o0.j(this.currentOutput);
        o0.j(this.id3Output);
    }

    private boolean f(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        c0Var.P(i10 + 1);
        if (!u(c0Var, this.adtsScratch.data, 1)) {
            return false;
        }
        this.adtsScratch.p(4);
        int iH = this.adtsScratch.h(1);
        int i11 = this.firstFrameVersion;
        if (i11 != -1 && iH != i11) {
            return false;
        }
        if (this.firstFrameSampleRateIndex != -1) {
            if (!u(c0Var, this.adtsScratch.data, 1)) {
                return true;
            }
            this.adtsScratch.p(2);
            if (this.adtsScratch.h(4) != this.firstFrameSampleRateIndex) {
                return false;
            }
            c0Var.P(i10 + 2);
        }
        if (!u(c0Var, this.adtsScratch.data, 4)) {
            return true;
        }
        this.adtsScratch.p(14);
        int iH2 = this.adtsScratch.h(13);
        if (iH2 < 7) {
            return false;
        }
        byte[] bArrD = c0Var.d();
        int iF = c0Var.f();
        int i12 = i10 + iH2;
        if (i12 >= iF) {
            return true;
        }
        byte b7 = bArrD[i12];
        if (b7 == -1) {
            int i13 = i12 + 1;
            if (i13 == iF) {
                return true;
            }
            return j((byte) -1, bArrD[i13]) && ((bArrD[i13] & 8) >> 3) == iH;
        }
        if (b7 != 73) {
            return false;
        }
        int i14 = i12 + 1;
        if (i14 == iF) {
            return true;
        }
        if (bArrD[i14] != 68) {
            return false;
        }
        int i15 = i12 + 2;
        return i15 == iF || bArrD[i15] == 51;
    }

    private boolean j(byte b7, byte b10) {
        return k(((b7 & 255) << 8) | (b10 & 255));
    }

    private void l() throws v2 {
        this.adtsScratch.p(0);
        if (this.hasOutputFormat) {
            this.adtsScratch.r(10);
        } else {
            int i10 = 2;
            int iH = this.adtsScratch.h(2) + 1;
            if (iH != 2) {
                com.google.android.exoplayer2.util.t.i(TAG, "Detected audio object type: " + iH + ", but assuming AAC LC.");
            } else {
                i10 = iH;
            }
            this.adtsScratch.r(5);
            byte[] bArrA = com.google.android.exoplayer2.audio.a.a(i10, this.firstFrameSampleRateIndex, this.adtsScratch.h(3));
            com.google.android.exoplayer2.audio.a.b bVarE = com.google.android.exoplayer2.audio.a.e(bArrA);
            a2 a2VarE = new a2.b().S(this.formatId).e0("audio/mp4a-latm").I(bVarE.codecs).H(bVarE.channelCount).f0(bVarE.sampleRateHz).T(Collections.singletonList(bArrA)).V(this.language).E();
            this.sampleDurationUs = 1024000000 / ((long) a2VarE.sampleRate);
            this.output.d(a2VarE);
            this.hasOutputFormat = true;
        }
        this.adtsScratch.r(4);
        int iH2 = this.adtsScratch.h(13);
        int i11 = iH2 - 7;
        if (this.hasCrc) {
            i11 = iH2 - 9;
        }
        t(this.output, this.sampleDurationUs, 0, i11);
    }

    private void m() {
        this.id3Output.c(this.id3HeaderBuffer, 10);
        this.id3HeaderBuffer.P(6);
        t(this.id3Output, 0L, 10, this.id3HeaderBuffer.C() + 10);
    }

    private void e(com.google.android.exoplayer2.util.c0 c0Var) {
        if (c0Var.a() == 0) {
            return;
        }
        this.adtsScratch.data[0] = c0Var.d()[c0Var.e()];
        this.adtsScratch.p(2);
        int iH = this.adtsScratch.h(4);
        int i10 = this.firstFrameSampleRateIndex;
        if (i10 != -1 && iH != i10) {
            o();
            return;
        }
        if (!this.foundFirstFrame) {
            this.foundFirstFrame = true;
            this.firstFrameVersion = this.currentFrameVersion;
            this.firstFrameSampleRateIndex = iH;
        }
        r();
    }

    private boolean g(com.google.android.exoplayer2.util.c0 c0Var, byte[] bArr, int i10) {
        int iMin = Math.min(c0Var.a(), i10 - this.bytesRead);
        c0Var.j(bArr, this.bytesRead, iMin);
        int i11 = this.bytesRead + iMin;
        this.bytesRead = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void h(com.google.android.exoplayer2.util.c0 c0Var) {
        byte[] bArrD = c0Var.d();
        int iE = c0Var.e();
        int iF = c0Var.f();
        while (iE < iF) {
            int i10 = iE + 1;
            byte b7 = bArrD[iE];
            int i11 = b7 & 255;
            if (this.matchState == 512 && j((byte) -1, (byte) i11) && (this.foundFirstFrame || f(c0Var, iE - 1))) {
                this.currentFrameVersion = (b7 & 8) >> 3;
                boolean z6 = true;
                if ((b7 & 1) != 0) {
                    z6 = false;
                }
                this.hasCrc = z6;
                if (!this.foundFirstFrame) {
                    p();
                } else {
                    r();
                }
                c0Var.P(i10);
                return;
            }
            int i12 = this.matchState;
            int i13 = i11 | i12;
            if (i13 != 329) {
                if (i13 != 511) {
                    if (i13 != 836) {
                        if (i13 != 1075) {
                            if (i12 != 256) {
                                this.matchState = 256;
                            }
                        } else {
                            s();
                            c0Var.P(i10);
                            return;
                        }
                    } else {
                        this.matchState = 1024;
                    }
                } else {
                    this.matchState = 512;
                }
            } else {
                this.matchState = MATCH_STATE_I;
            }
            iE = i10;
        }
        c0Var.P(iE);
    }

    private void n(com.google.android.exoplayer2.util.c0 c0Var) {
        int iMin = Math.min(c0Var.a(), this.sampleSize - this.bytesRead);
        this.currentOutput.c(c0Var, iMin);
        int i10 = this.bytesRead + iMin;
        this.bytesRead = i10;
        int i11 = this.sampleSize;
        if (i10 == i11) {
            long j6 = this.timeUs;
            if (j6 != -9223372036854775807L) {
                this.currentOutput.e(j6, 1, i11, 0, null);
                this.timeUs += this.currentSampleDuration;
            }
            q();
        }
    }

    private boolean u(com.google.android.exoplayer2.util.c0 c0Var, byte[] bArr, int i10) {
        if (c0Var.a() < i10) {
            return false;
        }
        c0Var.j(bArr, 0, i10);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c(com.google.android.exoplayer2.util.c0 c0Var) throws v2 {
        int i10;
        a();
        while (c0Var.a() > 0) {
            int i11 = this.state;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 == 4) {
                                n(c0Var);
                            } else {
                                throw new IllegalStateException();
                            }
                        } else {
                            if (this.hasCrc) {
                                i10 = 7;
                            } else {
                                i10 = 5;
                            }
                            if (g(c0Var, this.adtsScratch.data, i10)) {
                                l();
                            }
                        }
                    } else if (g(c0Var, this.id3HeaderBuffer.d(), 10)) {
                        m();
                    }
                } else {
                    e(c0Var);
                }
            } else {
                h(c0Var);
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        dVar.a();
        this.formatId = dVar.b();
        com.google.android.exoplayer2.extractor.e0 e0VarTrack = nVar.track(dVar.c(), 1);
        this.output = e0VarTrack;
        this.currentOutput = e0VarTrack;
        if (this.exposeId3) {
            dVar.a();
            com.google.android.exoplayer2.extractor.e0 e0VarTrack2 = nVar.track(dVar.c(), 5);
            this.id3Output = e0VarTrack2;
            e0VarTrack2.d(new a2.b().S(dVar.b()).e0("application/id3").E());
            return;
        }
        this.id3Output = new com.google.android.exoplayer2.extractor.k();
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void seek() {
        this.timeUs = -9223372036854775807L;
        o();
    }
}
