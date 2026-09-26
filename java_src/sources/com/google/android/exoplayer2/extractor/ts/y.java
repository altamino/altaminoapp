package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
final class y {
    private static final String TAG = "PsDurationReader";
    private static final int TIMESTAMP_SEARCH_BYTES = 20000;
    private boolean isDurationRead;
    private boolean isFirstScrValueRead;
    private boolean isLastScrValueRead;
    private final l0 scrTimestampAdjuster = new l0(0);
    private long firstScrValue = -9223372036854775807L;
    private long lastScrValue = -9223372036854775807L;
    private long durationUs = -9223372036854775807L;
    private final com.google.android.exoplayer2.util.c0 packetBuffer = new com.google.android.exoplayer2.util.c0();

    private static boolean a(byte[] bArr) {
        return (bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3;
    }

    private static long m(byte[] bArr) {
        byte b7 = bArr[0];
        long j6 = (((((long) b7) & 56) >> 3) << 30) | ((((long) b7) & 3) << 28) | ((((long) bArr[1]) & 255) << 20);
        byte b10 = bArr[2];
        return j6 | (((((long) b10) & 248) >> 3) << 15) | ((((long) b10) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
    }

    public long c() {
        return this.durationUs;
    }

    public l0 d() {
        return this.scrTimestampAdjuster;
    }

    public boolean e() {
        return this.isDurationRead;
    }

    private int b(com.google.android.exoplayer2.extractor.m mVar) {
        this.packetBuffer.M(o0.EMPTY_BYTE_ARRAY);
        this.isDurationRead = true;
        mVar.resetPeekPosition();
        return 0;
    }

    private int f(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }

    public int g(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException {
        if (!this.isLastScrValueRead) {
            return j(mVar, a0Var);
        }
        if (this.lastScrValue == -9223372036854775807L) {
            return b(mVar);
        }
        if (!this.isFirstScrValueRead) {
            return h(mVar, a0Var);
        }
        long j6 = this.firstScrValue;
        if (j6 == -9223372036854775807L) {
            return b(mVar);
        }
        long jB = this.scrTimestampAdjuster.b(this.lastScrValue) - this.scrTimestampAdjuster.b(j6);
        this.durationUs = jB;
        if (jB < 0) {
            com.google.android.exoplayer2.util.t.i(TAG, "Invalid duration: " + this.durationUs + ". Using TIME_UNSET instead.");
            this.durationUs = -9223372036854775807L;
        }
        return b(mVar);
    }

    y() {
    }

    private int h(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException {
        int iMin = (int) Math.min(20000L, mVar.getLength());
        long j6 = 0;
        if (mVar.getPosition() != j6) {
            a0Var.position = j6;
            return 1;
        }
        this.packetBuffer.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.packetBuffer.d(), 0, iMin);
        this.firstScrValue = i(this.packetBuffer);
        this.isFirstScrValueRead = true;
        return 0;
    }

    private long i(com.google.android.exoplayer2.util.c0 c0Var) {
        int iF = c0Var.f();
        for (int iE = c0Var.e(); iE < iF - 3; iE++) {
            if (f(c0Var.d(), iE) == 442) {
                c0Var.P(iE + 4);
                long jL = l(c0Var);
                if (jL != -9223372036854775807L) {
                    return jL;
                }
            }
        }
        return -9223372036854775807L;
    }

    private int j(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException {
        long length = mVar.getLength();
        int iMin = (int) Math.min(20000L, length);
        long j6 = length - ((long) iMin);
        if (mVar.getPosition() != j6) {
            a0Var.position = j6;
            return 1;
        }
        this.packetBuffer.L(iMin);
        mVar.resetPeekPosition();
        mVar.peekFully(this.packetBuffer.d(), 0, iMin);
        this.lastScrValue = k(this.packetBuffer);
        this.isLastScrValueRead = true;
        return 0;
    }

    private long k(com.google.android.exoplayer2.util.c0 c0Var) {
        int iE = c0Var.e();
        for (int iF = c0Var.f() - 4; iF >= iE; iF--) {
            if (f(c0Var.d(), iF) == 442) {
                c0Var.P(iF + 4);
                long jL = l(c0Var);
                if (jL != -9223372036854775807L) {
                    return jL;
                }
            }
        }
        return -9223372036854775807L;
    }

    public static long l(com.google.android.exoplayer2.util.c0 c0Var) {
        int iE = c0Var.e();
        if (c0Var.a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        c0Var.j(bArr, 0, 9);
        c0Var.P(iE);
        if (!a(bArr)) {
            return -9223372036854775807L;
        }
        return m(bArr);
    }
}
