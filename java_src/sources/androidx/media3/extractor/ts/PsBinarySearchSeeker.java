package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
final class PsBinarySearchSeeker extends BinarySearchSeeker {
    private static final int MINIMUM_SEARCH_RANGE_BYTES = 1000;
    private static final long SEEK_TOLERANCE_US = 100000;
    private static final int TIMESTAMP_SEARCH_BYTES = 20000;

    private static final class PsScrSeeker implements BinarySearchSeeker.TimestampSeeker {
        private final ParsableByteArray packetBuffer;
        private final TimestampAdjuster scrTimestampAdjuster;

        private BinarySearchSeeker.TimestampSearchResult c(ParsableByteArray parsableByteArray, long j6, long j10) {
            int iF = -1;
            int iF2 = -1;
            long j11 = -9223372036854775807L;
            while (parsableByteArray.a() >= 4) {
                if (PsBinarySearchSeeker.k(parsableByteArray.e(), parsableByteArray.f()) != 442) {
                    parsableByteArray.V(1);
                } else {
                    parsableByteArray.V(4);
                    long jL = PsDurationReader.l(parsableByteArray);
                    if (jL != -9223372036854775807L) {
                        long jB = this.scrTimestampAdjuster.b(jL);
                        if (jB > j6) {
                            return j11 == -9223372036854775807L ? BinarySearchSeeker.TimestampSearchResult.d(jB, j10) : BinarySearchSeeker.TimestampSearchResult.e(j10 + ((long) iF2));
                        }
                        if (PsBinarySearchSeeker.SEEK_TOLERANCE_US + jB > j6) {
                            return BinarySearchSeeker.TimestampSearchResult.e(j10 + ((long) parsableByteArray.f()));
                        }
                        iF2 = parsableByteArray.f();
                        j11 = jB;
                    }
                    d(parsableByteArray);
                    iF = parsableByteArray.f();
                }
            }
            return j11 != -9223372036854775807L ? BinarySearchSeeker.TimestampSearchResult.f(j11, j10 + ((long) iF)) : BinarySearchSeeker.TimestampSearchResult.NO_TIMESTAMP_IN_RANGE_RESULT;
        }

        private PsScrSeeker(TimestampAdjuster timestampAdjuster) {
            this.scrTimestampAdjuster = timestampAdjuster;
            this.packetBuffer = new ParsableByteArray();
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public void a() {
            this.packetBuffer.R(Util.EMPTY_BYTE_ARRAY);
        }

        private static void d(ParsableByteArray parsableByteArray) {
            int iK;
            int iG = parsableByteArray.g();
            if (parsableByteArray.a() < 10) {
                parsableByteArray.U(iG);
                return;
            }
            parsableByteArray.V(9);
            int iH = parsableByteArray.H() & 7;
            if (parsableByteArray.a() < iH) {
                parsableByteArray.U(iG);
                return;
            }
            parsableByteArray.V(iH);
            if (parsableByteArray.a() < 4) {
                parsableByteArray.U(iG);
                return;
            }
            if (PsBinarySearchSeeker.k(parsableByteArray.e(), parsableByteArray.f()) == 443) {
                parsableByteArray.V(4);
                int iN = parsableByteArray.N();
                if (parsableByteArray.a() < iN) {
                    parsableByteArray.U(iG);
                    return;
                }
                parsableByteArray.V(iN);
            }
            while (parsableByteArray.a() >= 4 && (iK = PsBinarySearchSeeker.k(parsableByteArray.e(), parsableByteArray.f())) != 442 && iK != 441 && (iK >>> 8) == 1) {
                parsableByteArray.V(4);
                if (parsableByteArray.a() < 2) {
                    parsableByteArray.U(iG);
                    return;
                }
                parsableByteArray.U(Math.min(parsableByteArray.g(), parsableByteArray.f() + parsableByteArray.N()));
            }
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public BinarySearchSeeker.TimestampSearchResult b(ExtractorInput extractorInput, long j6) throws IOException {
            long position = extractorInput.getPosition();
            int iMin = (int) Math.min(20000L, extractorInput.getLength() - position);
            this.packetBuffer.Q(iMin);
            extractorInput.peekFully(this.packetBuffer.e(), 0, iMin);
            return c(this.packetBuffer, j6, position);
        }
    }

    public PsBinarySearchSeeker(TimestampAdjuster timestampAdjuster, long j6, long j10) {
        super(new BinarySearchSeeker.DefaultSeekTimestampConverter(), new PsScrSeeker(timestampAdjuster), j6, 0L, j6 + 1, 0L, j10, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 255) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10 + 2] & 255) << 8);
    }
}
