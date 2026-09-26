package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
final class e0 extends com.google.android.exoplayer2.extractor.a {
    private static final int MINIMUM_SEARCH_RANGE_BYTES = 940;
    private static final long SEEK_TOLERANCE_US = 100000;

    private static final class a implements com.google.android.exoplayer2.extractor.a.f {
        private final com.google.android.exoplayer2.util.c0 packetBuffer = new com.google.android.exoplayer2.util.c0();
        private final int pcrPid;
        private final l0 pcrTimestampAdjuster;
        private final int timestampSearchBytes;

        private com.google.android.exoplayer2.extractor.a.e c(com.google.android.exoplayer2.util.c0 c0Var, long j6, long j10) {
            int iA;
            int iA2;
            int iF = c0Var.f();
            long j11 = -1;
            long j12 = -1;
            long j13 = -9223372036854775807L;
            while (c0Var.a() >= 188 && (iA2 = (iA = j0.a(c0Var.d(), c0Var.e(), iF)) + 188) <= iF) {
                long jC = j0.c(c0Var, iA, this.pcrPid);
                if (jC != -9223372036854775807L) {
                    long jB = this.pcrTimestampAdjuster.b(jC);
                    if (jB > j6) {
                        return j13 == -9223372036854775807L ? com.google.android.exoplayer2.extractor.a.e.d(jB, j10) : com.google.android.exoplayer2.extractor.a.e.e(j10 + j12);
                    }
                    if (e0.SEEK_TOLERANCE_US + jB > j6) {
                        return com.google.android.exoplayer2.extractor.a.e.e(j10 + ((long) iA));
                    }
                    j12 = iA;
                    j13 = jB;
                }
                c0Var.P(iA2);
                j11 = iA2;
            }
            return j13 != -9223372036854775807L ? com.google.android.exoplayer2.extractor.a.e.f(j13, j10 + j11) : com.google.android.exoplayer2.extractor.a.e.NO_TIMESTAMP_IN_RANGE_RESULT;
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public void a() {
            this.packetBuffer.M(o0.EMPTY_BYTE_ARRAY);
        }

        public a(int i10, l0 l0Var, int i11) {
            this.pcrPid = i10;
            this.pcrTimestampAdjuster = l0Var;
            this.timestampSearchBytes = i11;
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public com.google.android.exoplayer2.extractor.a.e b(com.google.android.exoplayer2.extractor.m mVar, long j6) throws IOException {
            long position = mVar.getPosition();
            int iMin = (int) Math.min(this.timestampSearchBytes, mVar.getLength() - position);
            this.packetBuffer.L(iMin);
            mVar.peekFully(this.packetBuffer.d(), 0, iMin);
            return c(this.packetBuffer, j6, position);
        }
    }

    public e0(l0 l0Var, long j6, long j10, int i10, int i11) {
        super(new com.google.android.exoplayer2.extractor.a.b(), new a(i10, l0Var, i11), j6, 0L, j6 + 1, 0L, j10, 188L, MINIMUM_SEARCH_RANGE_BYTES);
    }
}
