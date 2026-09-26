package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public abstract class BinarySearchSeeker {
    private static final long MAX_SKIP_BYTES = 262144;
    private final int minimumSearchRange;
    protected final BinarySearchSeekMap seekMap;

    @Nullable
    protected SeekOperationParams seekOperationParams;
    protected final TimestampSeeker timestampSeeker;

    public static class BinarySearchSeekMap implements SeekMap {
        private final long approxBytesPerFrame;
        private final long ceilingBytePosition;
        private final long ceilingTimePosition;
        private final long durationUs;
        private final long floorBytePosition;
        private final long floorTimePosition;
        private final SeekTimestampConverter seekTimestampConverter;

        @Override // androidx.media3.extractor.SeekMap
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // androidx.media3.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }

        public long g(long j6) {
            return this.seekTimestampConverter.a(j6);
        }

        @Override // androidx.media3.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j6) {
            return new SeekMap.SeekPoints(new SeekPoint(j6, SeekOperationParams.h(this.seekTimestampConverter.a(j6), this.floorTimePosition, this.ceilingTimePosition, this.floorBytePosition, this.ceilingBytePosition, this.approxBytesPerFrame)));
        }

        public BinarySearchSeekMap(SeekTimestampConverter seekTimestampConverter, long j6, long j10, long j11, long j12, long j13, long j14) {
            this.seekTimestampConverter = seekTimestampConverter;
            this.durationUs = j6;
            this.floorTimePosition = j10;
            this.ceilingTimePosition = j11;
            this.floorBytePosition = j12;
            this.ceilingBytePosition = j13;
            this.approxBytesPerFrame = j14;
        }
    }

    public static final class DefaultSeekTimestampConverter implements SeekTimestampConverter {
        @Override // androidx.media3.extractor.BinarySearchSeeker.SeekTimestampConverter
        public long a(long j6) {
            return j6;
        }
    }

    protected static class SeekOperationParams {
        private final long approxBytesPerFrame;
        private long ceilingBytePosition;
        private long ceilingTimePosition;
        private long floorBytePosition;
        private long floorTimePosition;
        private long nextSearchBytePosition;
        private final long seekTimeUs;
        private final long targetTimePosition;

        /* JADX INFO: Access modifiers changed from: private */
        public long i() {
            return this.ceilingBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long j() {
            return this.floorBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long k() {
            return this.nextSearchBytePosition;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long l() {
            return this.seekTimeUs;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long m() {
            return this.targetTimePosition;
        }

        protected static long h(long j6, long j10, long j11, long j12, long j13, long j14) {
            if (j12 + 1 >= j13 || j10 + 1 >= j11) {
                return j12;
            }
            long j15 = (long) ((j6 - j10) * ((j13 - j12) / (j11 - j10)));
            return Util.r(((j15 + j12) - j14) - (j15 / 20), j12, j13 - 1);
        }

        private void n() {
            this.nextSearchBytePosition = h(this.targetTimePosition, this.floorTimePosition, this.ceilingTimePosition, this.floorBytePosition, this.ceilingBytePosition, this.approxBytesPerFrame);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(long j6, long j10) {
            this.ceilingTimePosition = j6;
            this.ceilingBytePosition = j10;
            n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(long j6, long j10) {
            this.floorTimePosition = j6;
            this.floorBytePosition = j10;
            n();
        }

        protected SeekOperationParams(long j6, long j10, long j11, long j12, long j13, long j14, long j15) {
            this.seekTimeUs = j6;
            this.targetTimePosition = j10;
            this.floorTimePosition = j11;
            this.ceilingTimePosition = j12;
            this.floorBytePosition = j13;
            this.ceilingBytePosition = j14;
            this.approxBytesPerFrame = j15;
            this.nextSearchBytePosition = h(j10, j11, j12, j13, j14, j15);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface SeekTimestampConverter {
        long a(long j6);
    }

    public static final class TimestampSearchResult {
        public static final TimestampSearchResult NO_TIMESTAMP_IN_RANGE_RESULT = new TimestampSearchResult(-3, -9223372036854775807L, -1);
        public static final int TYPE_NO_TIMESTAMP = -3;
        public static final int TYPE_POSITION_OVERESTIMATED = -1;
        public static final int TYPE_POSITION_UNDERESTIMATED = -2;
        public static final int TYPE_TARGET_TIMESTAMP_FOUND = 0;
        private final long bytePositionToUpdate;
        private final long timestampToUpdate;
        private final int type;

        public static TimestampSearchResult d(long j6, long j10) {
            return new TimestampSearchResult(-1, j6, j10);
        }

        public static TimestampSearchResult e(long j6) {
            return new TimestampSearchResult(0, -9223372036854775807L, j6);
        }

        public static TimestampSearchResult f(long j6, long j10) {
            return new TimestampSearchResult(-2, j6, j10);
        }

        private TimestampSearchResult(int i10, long j6, long j10) {
            this.type = i10;
            this.timestampToUpdate = j6;
            this.bytePositionToUpdate = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public interface TimestampSeeker {
        void a();

        TimestampSearchResult b(ExtractorInput extractorInput, long j6) throws IOException;
    }

    public final SeekMap b() {
        return this.seekMap;
    }

    public final boolean d() {
        return this.seekOperationParams != null;
    }

    protected final void e(boolean z6, long j6) {
        this.seekOperationParams = null;
        this.timestampSeeker.a();
        f(z6, j6);
    }

    protected void f(boolean z6, long j6) {
    }

    protected BinarySearchSeeker(SeekTimestampConverter seekTimestampConverter, TimestampSeeker timestampSeeker, long j6, long j10, long j11, long j12, long j13, long j14, int i10) {
        this.timestampSeeker = timestampSeeker;
        this.minimumSearchRange = i10;
        this.seekMap = new BinarySearchSeekMap(seekTimestampConverter, j6, j10, j11, j12, j13, j14);
    }

    protected SeekOperationParams a(long j6) {
        return new SeekOperationParams(j6, this.seekMap.g(j6), this.seekMap.floorTimePosition, this.seekMap.ceilingTimePosition, this.seekMap.floorBytePosition, this.seekMap.ceilingBytePosition, this.seekMap.approxBytesPerFrame);
    }

    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        while (true) {
            SeekOperationParams seekOperationParams = (SeekOperationParams) Assertions.i(this.seekOperationParams);
            long j6 = seekOperationParams.j();
            long jI = seekOperationParams.i();
            long jK = seekOperationParams.k();
            if (jI - j6 <= this.minimumSearchRange) {
                e(false, j6);
                return g(extractorInput, j6, positionHolder);
            }
            if (!i(extractorInput, jK)) {
                return g(extractorInput, jK, positionHolder);
            }
            extractorInput.resetPeekPosition();
            TimestampSearchResult timestampSearchResultB = this.timestampSeeker.b(extractorInput, seekOperationParams.m());
            int i10 = timestampSearchResultB.type;
            if (i10 == -3) {
                e(false, jK);
                return g(extractorInput, jK, positionHolder);
            }
            if (i10 == -2) {
                seekOperationParams.p(timestampSearchResultB.timestampToUpdate, timestampSearchResultB.bytePositionToUpdate);
            } else {
                if (i10 != -1) {
                    if (i10 != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    i(extractorInput, timestampSearchResultB.bytePositionToUpdate);
                    e(true, timestampSearchResultB.bytePositionToUpdate);
                    return g(extractorInput, timestampSearchResultB.bytePositionToUpdate, positionHolder);
                }
                seekOperationParams.o(timestampSearchResultB.timestampToUpdate, timestampSearchResultB.bytePositionToUpdate);
            }
        }
    }

    public final void h(long j6) {
        SeekOperationParams seekOperationParams = this.seekOperationParams;
        if (seekOperationParams == null || seekOperationParams.l() != j6) {
            this.seekOperationParams = a(j6);
        }
    }

    protected final int g(ExtractorInput extractorInput, long j6, PositionHolder positionHolder) {
        if (j6 == extractorInput.getPosition()) {
            return 0;
        }
        positionHolder.position = j6;
        return 1;
    }

    protected final boolean i(ExtractorInput extractorInput, long j6) throws IOException {
        long position = j6 - extractorInput.getPosition();
        if (position >= 0 && position <= 262144) {
            extractorInput.skipFully((int) position);
            return true;
        }
        return false;
    }
}
