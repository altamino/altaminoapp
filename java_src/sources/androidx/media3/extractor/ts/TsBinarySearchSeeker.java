package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
final class TsBinarySearchSeeker extends BinarySearchSeeker {
    private static final int MINIMUM_SEARCH_RANGE_BYTES = 940;
    private static final long SEEK_TOLERANCE_US = 100000;

    private static final class TsPcrSeeker implements BinarySearchSeeker.TimestampSeeker {
        private final ParsableByteArray packetBuffer = new ParsableByteArray();
        private final int pcrPid;
        private final TimestampAdjuster pcrTimestampAdjuster;
        private final int timestampSearchBytes;

        private BinarySearchSeeker.TimestampSearchResult c(ParsableByteArray parsableByteArray, long j6, long j10) {
            int iA;
            int iA2;
            int iG = parsableByteArray.g();
            long j11 = -1;
            long j12 = -1;
            long j13 = -9223372036854775807L;
            while (parsableByteArray.a() >= 188 && (iA2 = (iA = TsUtil.a(parsableByteArray.e(), parsableByteArray.f(), iG)) + 188) <= iG) {
                long jC = TsUtil.c(parsableByteArray, iA, this.pcrPid);
                if (jC != -9223372036854775807L) {
                    long jB = this.pcrTimestampAdjuster.b(jC);
                    if (jB > j6) {
                        return j13 == -9223372036854775807L ? BinarySearchSeeker.TimestampSearchResult.d(jB, j10) : BinarySearchSeeker.TimestampSearchResult.e(j10 + j12);
                    }
                    if (TsBinarySearchSeeker.SEEK_TOLERANCE_US + jB > j6) {
                        return BinarySearchSeeker.TimestampSearchResult.e(j10 + ((long) iA));
                    }
                    j12 = iA;
                    j13 = jB;
                }
                parsableByteArray.U(iA2);
                j11 = iA2;
            }
            return j13 != -9223372036854775807L ? BinarySearchSeeker.TimestampSearchResult.f(j13, j10 + j11) : BinarySearchSeeker.TimestampSearchResult.NO_TIMESTAMP_IN_RANGE_RESULT;
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public void a() {
            this.packetBuffer.R(Util.EMPTY_BYTE_ARRAY);
        }

        public TsPcrSeeker(int i10, TimestampAdjuster timestampAdjuster, int i11) {
            this.pcrPid = i10;
            this.pcrTimestampAdjuster = timestampAdjuster;
            this.timestampSearchBytes = i11;
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public BinarySearchSeeker.TimestampSearchResult b(ExtractorInput extractorInput, long j6) throws IOException {
            long position = extractorInput.getPosition();
            int iMin = (int) Math.min(this.timestampSearchBytes, extractorInput.getLength() - position);
            this.packetBuffer.Q(iMin);
            extractorInput.peekFully(this.packetBuffer.e(), 0, iMin);
            return c(this.packetBuffer, j6, position);
        }
    }

    public TsBinarySearchSeeker(TimestampAdjuster timestampAdjuster, long j6, long j10, int i10, int i11) {
        super(new BinarySearchSeeker.DefaultSeekTimestampConverter(), new TsPcrSeeker(i10, timestampAdjuster, i11), j6, 0L, j6 + 1, 0L, j10, 188L, MINIMUM_SEARCH_RANGE_BYTES);
    }
}
