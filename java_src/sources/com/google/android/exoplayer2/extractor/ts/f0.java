package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
final class f0 {
    private static final String TAG = "TsDurationReader";
    private boolean isDurationRead;
    private boolean isFirstPcrValueRead;
    private boolean isLastPcrValueRead;
    private final int timestampSearchBytes;
    private final l0 pcrTimestampAdjuster = new l0(0);
    private long firstPcrValue = -9223372036854775807L;
    private long lastPcrValue = -9223372036854775807L;
    private long durationUs = -9223372036854775807L;
    private final com.google.android.exoplayer2.util.c0 packetBuffer = new com.google.android.exoplayer2.util.c0();

    public long b() {
        return this.durationUs;
    }

    public l0 c() {
        return this.pcrTimestampAdjuster;
    }

    public boolean d() {
        return this.isDurationRead;
    }

    private int a(com.google.android.exoplayer2.extractor.m mVar) {
        this.packetBuffer.M(o0.EMPTY_BYTE_ARRAY);
        this.isDurationRead = true;
        mVar.resetPeekPosition();
        return 0;
    }

    private int f(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var, int i10) throws IOException {
        int iMin = (int) Math.min(this.timestampSearchBytes, mVar.getLength());
        long j6 = 0;
        if (mVar.getPosition() != j6) {
            a0Var.position = j6;
            return 1;
        }
        this.packetBuffer.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.packetBuffer.d(), 0, iMin);
        this.firstPcrValue = g(this.packetBuffer, i10);
        this.isFirstPcrValueRead = true;
        return 0;
    }

    public int e(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var, int i10) throws IOException {
        if (i10 <= 0) {
            return a(mVar);
        }
        if (!this.isLastPcrValueRead) {
            return h(mVar, a0Var, i10);
        }
        if (this.lastPcrValue == -9223372036854775807L) {
            return a(mVar);
        }
        if (!this.isFirstPcrValueRead) {
            return f(mVar, a0Var, i10);
        }
        long j6 = this.firstPcrValue;
        if (j6 == -9223372036854775807L) {
            return a(mVar);
        }
        long jB = this.pcrTimestampAdjuster.b(this.lastPcrValue) - this.pcrTimestampAdjuster.b(j6);
        this.durationUs = jB;
        if (jB < 0) {
            com.google.android.exoplayer2.util.t.i(TAG, "Invalid duration: " + this.durationUs + ". Using TIME_UNSET instead.");
            this.durationUs = -9223372036854775807L;
        }
        return a(mVar);
    }

    f0(int i10) {
        this.timestampSearchBytes = i10;
    }

    private long g(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        int iF = c0Var.f();
        for (int iE = c0Var.e(); iE < iF; iE++) {
            if (c0Var.d()[iE] == 71) {
                long jC = j0.c(c0Var, iE, i10);
                if (jC != -9223372036854775807L) {
                    return jC;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int h(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var, int i10) throws IOException {
        long length = mVar.getLength();
        int iMin = (int) Math.min(this.timestampSearchBytes, length);
        long j6 = length - ((long) iMin);
        if (mVar.getPosition() != j6) {
            a0Var.position = j6;
            return 1;
        }
        this.packetBuffer.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.packetBuffer.d(), 0, iMin);
        this.lastPcrValue = i(this.packetBuffer, i10);
        this.isLastPcrValueRead = true;
        return 0;
    }

    private long i(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        int iE = c0Var.e();
        int iF = c0Var.f();
        for (int i11 = iF - 188; i11 >= iE; i11--) {
            if (j0.b(c0Var.d(), iE, iF, i11)) {
                long jC = j0.c(c0Var, i11, i10);
                if (jC != -9223372036854775807L) {
                    return jC;
                }
            }
        }
        return -9223372036854775807L;
    }
}
