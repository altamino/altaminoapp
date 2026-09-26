package com.google.android.exoplayer2.extractor.ts;

import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.o0;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
final class x extends com.google.android.exoplayer2.extractor.a {
    private static final int MINIMUM_SEARCH_RANGE_BYTES = 1000;
    private static final long SEEK_TOLERANCE_US = 100000;
    private static final int TIMESTAMP_SEARCH_BYTES = 20000;

    private static final class b implements com.google.android.exoplayer2.extractor.a.f {
        private final com.google.android.exoplayer2.util.c0 packetBuffer;
        private final l0 scrTimestampAdjuster;

        private com.google.android.exoplayer2.extractor.a.e c(com.google.android.exoplayer2.util.c0 c0Var, long j6, long j10) {
            int iE = -1;
            int iE2 = -1;
            long j11 = -9223372036854775807L;
            while (c0Var.a() >= 4) {
                if (x.k(c0Var.d(), c0Var.e()) != 442) {
                    c0Var.Q(1);
                } else {
                    c0Var.Q(4);
                    long jL = y.l(c0Var);
                    if (jL != -9223372036854775807L) {
                        long jB = this.scrTimestampAdjuster.b(jL);
                        if (jB > j6) {
                            return j11 == -9223372036854775807L ? com.google.android.exoplayer2.extractor.a.e.d(jB, j10) : com.google.android.exoplayer2.extractor.a.e.e(j10 + ((long) iE2));
                        }
                        if (x.SEEK_TOLERANCE_US + jB > j6) {
                            return com.google.android.exoplayer2.extractor.a.e.e(j10 + ((long) c0Var.e()));
                        }
                        iE2 = c0Var.e();
                        j11 = jB;
                    }
                    d(c0Var);
                    iE = c0Var.e();
                }
            }
            return j11 != -9223372036854775807L ? com.google.android.exoplayer2.extractor.a.e.f(j11, j10 + ((long) iE)) : com.google.android.exoplayer2.extractor.a.e.NO_TIMESTAMP_IN_RANGE_RESULT;
        }

        private b(l0 l0Var) {
            this.scrTimestampAdjuster = l0Var;
            this.packetBuffer = new com.google.android.exoplayer2.util.c0();
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public void a() {
            this.packetBuffer.M(o0.EMPTY_BYTE_ARRAY);
        }

        private static void d(com.google.android.exoplayer2.util.c0 c0Var) {
            int iK;
            int iF = c0Var.f();
            if (c0Var.a() < 10) {
                c0Var.P(iF);
                return;
            }
            c0Var.Q(9);
            int iD = c0Var.D() & 7;
            if (c0Var.a() < iD) {
                c0Var.P(iF);
                return;
            }
            c0Var.Q(iD);
            if (c0Var.a() < 4) {
                c0Var.P(iF);
                return;
            }
            if (x.k(c0Var.d(), c0Var.e()) == 443) {
                c0Var.Q(4);
                int iJ = c0Var.J();
                if (c0Var.a() < iJ) {
                    c0Var.P(iF);
                    return;
                }
                c0Var.Q(iJ);
            }
            while (c0Var.a() >= 4 && (iK = x.k(c0Var.d(), c0Var.e())) != 442 && iK != 441 && (iK >>> 8) == 1) {
                c0Var.Q(4);
                if (c0Var.a() < 2) {
                    c0Var.P(iF);
                    return;
                }
                c0Var.P(Math.min(c0Var.f(), c0Var.e() + c0Var.J()));
            }
        }

        @Override // com.google.android.exoplayer2.extractor.a.f
        public com.google.android.exoplayer2.extractor.a.e b(com.google.android.exoplayer2.extractor.m mVar, long j6) throws IOException {
            long position = mVar.getPosition();
            int iMin = (int) Math.min(20000L, mVar.getLength() - position);
            this.packetBuffer.L(iMin);
            mVar.peekFully(this.packetBuffer.d(), 0, iMin);
            return c(this.packetBuffer, j6, position);
        }
    }

    public x(l0 l0Var, long j6, long j10) {
        super(new com.google.android.exoplayer2.extractor.a.b(), new b(l0Var), j6, 0L, j6 + 1, 0L, j10, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }
}
