package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.v2;

/* JADX INFO: loaded from: classes7.dex */
public final class w implements i0 {
    private static final int HEADER_SIZE = 9;
    private static final int MAX_HEADER_EXTENSION_SIZE = 10;
    private static final int PES_SCRATCH_SIZE = 10;
    private static final int STATE_FINDING_HEADER = 0;
    private static final int STATE_READING_BODY = 3;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_HEADER_EXTENSION = 2;
    private static final String TAG = "PesReader";
    private int bytesRead;
    private boolean dataAlignmentIndicator;
    private boolean dtsFlag;
    private int extendedHeaderLength;
    private int payloadSize;
    private boolean ptsFlag;
    private final m reader;
    private boolean seenFirstDts;
    private long timeUs;
    private l0 timestampAdjuster;
    private final com.google.android.exoplayer2.util.b0 pesScratch = new com.google.android.exoplayer2.util.b0(new byte[10]);
    private int state = 0;

    private void f(int i10) {
        this.state = i10;
        this.bytesRead = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public final void seek() {
        this.state = 0;
        this.bytesRead = 0;
        this.seenFirstDts = false;
        this.reader.seek();
    }

    private boolean d() {
        this.pesScratch.p(0);
        int iH = this.pesScratch.h(24);
        if (iH != 1) {
            com.google.android.exoplayer2.util.t.i(TAG, "Unexpected start code prefix: " + iH);
            this.payloadSize = -1;
            return false;
        }
        this.pesScratch.r(8);
        int iH2 = this.pesScratch.h(16);
        this.pesScratch.r(5);
        this.dataAlignmentIndicator = this.pesScratch.g();
        this.pesScratch.r(2);
        this.ptsFlag = this.pesScratch.g();
        this.dtsFlag = this.pesScratch.g();
        this.pesScratch.r(6);
        int iH3 = this.pesScratch.h(8);
        this.extendedHeaderLength = iH3;
        if (iH2 == 0) {
            this.payloadSize = -1;
        } else {
            int i10 = (iH2 - 3) - iH3;
            this.payloadSize = i10;
            if (i10 < 0) {
                com.google.android.exoplayer2.util.t.i(TAG, "Found negative packet payload size: " + this.payloadSize);
                this.payloadSize = -1;
            }
        }
        return true;
    }

    private void e() {
        this.pesScratch.p(0);
        this.timeUs = -9223372036854775807L;
        if (this.ptsFlag) {
            this.pesScratch.r(4);
            long jH = ((long) this.pesScratch.h(3)) << 30;
            this.pesScratch.r(1);
            long jH2 = jH | ((long) (this.pesScratch.h(15) << 15));
            this.pesScratch.r(1);
            long jH3 = jH2 | ((long) this.pesScratch.h(15));
            this.pesScratch.r(1);
            if (!this.seenFirstDts && this.dtsFlag) {
                this.pesScratch.r(4);
                long jH4 = ((long) this.pesScratch.h(3)) << 30;
                this.pesScratch.r(1);
                long jH5 = jH4 | ((long) (this.pesScratch.h(15) << 15));
                this.pesScratch.r(1);
                long jH6 = jH5 | ((long) this.pesScratch.h(15));
                this.pesScratch.r(1);
                this.timestampAdjuster.b(jH6);
                this.seenFirstDts = true;
            }
            this.timeUs = this.timestampAdjuster.b(jH3);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public void a(l0 l0Var, com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        this.timestampAdjuster = l0Var;
        this.reader.d(nVar, dVar);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0
    public final void b(com.google.android.exoplayer2.util.c0 c0Var, int i10) throws v2 {
        com.google.android.exoplayer2.util.a.i(this.timestampAdjuster);
        if ((i10 & 1) != 0) {
            int i11 = this.state;
            if (i11 != 0 && i11 != 1) {
                if (i11 == 2) {
                    com.google.android.exoplayer2.util.t.i(TAG, "Unexpected start indicator reading extended header");
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.payloadSize != -1) {
                        com.google.android.exoplayer2.util.t.i(TAG, "Unexpected start indicator: expected " + this.payloadSize + " more bytes");
                    }
                    this.reader.packetFinished();
                }
            }
            f(1);
        }
        while (c0Var.a() > 0) {
            int i12 = this.state;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 == 2) {
                        if (c(c0Var, this.pesScratch.data, Math.min(10, this.extendedHeaderLength)) && c(c0Var, null, this.extendedHeaderLength)) {
                            e();
                            i10 |= this.dataAlignmentIndicator ? 4 : 0;
                            this.reader.b(this.timeUs, i10);
                            f(3);
                        }
                    } else {
                        if (i12 != 3) {
                            throw new IllegalStateException();
                        }
                        int iA = c0Var.a();
                        int i13 = this.payloadSize;
                        int i14 = i13 != -1 ? iA - i13 : 0;
                        if (i14 > 0) {
                            iA -= i14;
                            c0Var.O(c0Var.e() + iA);
                        }
                        this.reader.c(c0Var);
                        int i15 = this.payloadSize;
                        if (i15 != -1) {
                            int i16 = i15 - iA;
                            this.payloadSize = i16;
                            if (i16 == 0) {
                                this.reader.packetFinished();
                                f(1);
                            }
                        }
                    }
                } else if (c(c0Var, this.pesScratch.data, 9)) {
                    f(d() ? 2 : 0);
                }
            } else {
                c0Var.Q(c0Var.a());
            }
        }
    }

    public w(m mVar) {
        this.reader = mVar;
    }

    private boolean c(com.google.android.exoplayer2.util.c0 c0Var, @Nullable byte[] bArr, int i10) {
        int iMin = Math.min(c0Var.a(), i10 - this.bytesRead);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            c0Var.Q(iMin);
        } else {
            c0Var.j(bArr, this.bytesRead, iMin);
        }
        int i11 = this.bytesRead + iMin;
        this.bytesRead = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }
}
