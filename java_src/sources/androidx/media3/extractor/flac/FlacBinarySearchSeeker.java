package androidx.media3.extractor.flac;

import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.FlacFrameReader;
import androidx.media3.extractor.FlacStreamMetadata;
import java.io.IOException;
import java.util.Objects;

/* JADX INFO: loaded from: classes9.dex */
final class FlacBinarySearchSeeker extends BinarySearchSeeker {

    private static final class FlacTimestampSeeker implements BinarySearchSeeker.TimestampSeeker {
        private final FlacStreamMetadata flacStreamMetadata;
        private final int frameStartMarker;
        private final FlacFrameReader.SampleNumberHolder sampleNumberHolder;

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public /* synthetic */ void a() {
            androidx.media3.extractor.a.a(this);
        }

        private FlacTimestampSeeker(FlacStreamMetadata flacStreamMetadata, int i10) {
            this.flacStreamMetadata = flacStreamMetadata;
            this.frameStartMarker = i10;
            this.sampleNumberHolder = new FlacFrameReader.SampleNumberHolder();
        }

        private long c(ExtractorInput extractorInput) throws IOException {
            while (extractorInput.getPeekPosition() < extractorInput.getLength() - 6 && !FlacFrameReader.h(extractorInput, this.flacStreamMetadata, this.frameStartMarker, this.sampleNumberHolder)) {
                extractorInput.advancePeekPosition(1);
            }
            if (extractorInput.getPeekPosition() >= extractorInput.getLength() - 6) {
                extractorInput.advancePeekPosition((int) (extractorInput.getLength() - extractorInput.getPeekPosition()));
                return this.flacStreamMetadata.totalSamples;
            }
            return this.sampleNumberHolder.sampleNumber;
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public BinarySearchSeeker.TimestampSearchResult b(ExtractorInput extractorInput, long j6) throws IOException {
            long position = extractorInput.getPosition();
            long jC = c(extractorInput);
            long peekPosition = extractorInput.getPeekPosition();
            extractorInput.advancePeekPosition(Math.max(6, this.flacStreamMetadata.minFrameSize));
            long jC2 = c(extractorInput);
            long peekPosition2 = extractorInput.getPeekPosition();
            if (jC <= j6 && jC2 > j6) {
                return BinarySearchSeeker.TimestampSearchResult.e(peekPosition);
            }
            if (jC2 <= j6) {
                return BinarySearchSeeker.TimestampSearchResult.f(jC2, peekPosition2);
            }
            return BinarySearchSeeker.TimestampSearchResult.d(jC, position);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlacBinarySearchSeeker(final FlacStreamMetadata flacStreamMetadata, int i10, long j6, long j10) {
        super(new BinarySearchSeeker.SeekTimestampConverter() { // from class: androidx.media3.extractor.flac.a
            @Override // androidx.media3.extractor.BinarySearchSeeker.SeekTimestampConverter
            public final long a(long j11) {
                return flacStreamMetadata.j(j11);
            }
        }, new FlacTimestampSeeker(flacStreamMetadata, i10), flacStreamMetadata.g(), 0L, flacStreamMetadata.totalSamples, j6, j10, flacStreamMetadata.e(), Math.max(6, flacStreamMetadata.minFrameSize));
        Objects.requireNonNull(flacStreamMetadata);
    }
}
