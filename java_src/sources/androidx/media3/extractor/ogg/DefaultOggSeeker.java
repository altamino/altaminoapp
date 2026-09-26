package androidx.media3.extractor.ogg;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes10.dex */
final class DefaultOggSeeker implements OggSeeker {
    private static final int DEFAULT_OFFSET = 30000;
    private static final int MATCH_BYTE_RANGE = 100000;
    private static final int MATCH_RANGE = 72000;
    private static final int STATE_IDLE = 4;
    private static final int STATE_READ_LAST_PAGE = 1;
    private static final int STATE_SEEK = 2;
    private static final int STATE_SEEK_TO_END = 0;
    private static final int STATE_SKIP = 3;
    private long end;
    private long endGranule;
    private final OggPageHeader pageHeader;
    private final long payloadEndPosition;
    private final long payloadStartPosition;
    private long positionBeforeSeekToEnd;
    private long start;
    private long startGranule;
    private int state;
    private final StreamReader streamReader;
    private long targetGranule;
    private long totalGranules;

    private final class OggSeekMap implements SeekMap {
        private OggSeekMap() {
        }

        @Override // androidx.media3.extractor.SeekMap
        public boolean isSeekable() {
            return true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public long getDurationUs() {
            return DefaultOggSeeker.this.streamReader.b(DefaultOggSeeker.this.totalGranules);
        }

        @Override // androidx.media3.extractor.SeekMap
        public SeekMap.SeekPoints getSeekPoints(long j6) {
            return new SeekMap.SeekPoints(new SeekPoint(j6, Util.r((DefaultOggSeeker.this.payloadStartPosition + BigInteger.valueOf(DefaultOggSeeker.this.streamReader.c(j6)).multiply(BigInteger.valueOf(DefaultOggSeeker.this.payloadEndPosition - DefaultOggSeeker.this.payloadStartPosition)).divide(BigInteger.valueOf(DefaultOggSeeker.this.totalGranules)).longValue()) - 30000, DefaultOggSeeker.this.payloadStartPosition, DefaultOggSeeker.this.payloadEndPosition - 1)));
        }
    }

    private long g(ExtractorInput extractorInput) throws IOException {
        if (this.start == this.end) {
            return -1L;
        }
        long position = extractorInput.getPosition();
        if (!this.pageHeader.d(extractorInput, this.end)) {
            long j6 = this.start;
            if (j6 != position) {
                return j6;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.pageHeader.a(extractorInput, false);
        extractorInput.resetPeekPosition();
        long j10 = this.targetGranule;
        OggPageHeader oggPageHeader = this.pageHeader;
        long j11 = oggPageHeader.granulePosition;
        long j12 = j10 - j11;
        int i10 = oggPageHeader.headerSize + oggPageHeader.bodySize;
        if (0 <= j12 && j12 < 72000) {
            return -1L;
        }
        if (j12 < 0) {
            this.end = position;
            this.endGranule = j11;
        } else {
            this.start = extractorInput.getPosition() + ((long) i10);
            this.startGranule = this.pageHeader.granulePosition;
        }
        long j13 = this.end;
        long j14 = this.start;
        if (j13 - j14 < 100000) {
            this.end = j14;
            return j14;
        }
        long position2 = extractorInput.getPosition() - (((long) i10) * (j12 <= 0 ? 2L : 1L));
        long j15 = this.end;
        long j16 = this.start;
        return Util.r(position2 + ((j12 * (j15 - j16)) / (this.endGranule - this.startGranule)), j16, j15 - 1);
    }

    private void i(ExtractorInput extractorInput) throws IOException {
        while (true) {
            this.pageHeader.c(extractorInput);
            this.pageHeader.a(extractorInput, false);
            OggPageHeader oggPageHeader = this.pageHeader;
            if (oggPageHeader.granulePosition > this.targetGranule) {
                extractorInput.resetPeekPosition();
                return;
            } else {
                extractorInput.skipFully(oggPageHeader.headerSize + oggPageHeader.bodySize);
                this.start = extractorInput.getPosition();
                this.startGranule = this.pageHeader.granulePosition;
            }
        }
    }

    @Override // androidx.media3.extractor.ogg.OggSeeker
    public long a(ExtractorInput extractorInput) throws IOException {
        int i10 = this.state;
        if (i10 == 0) {
            long position = extractorInput.getPosition();
            this.positionBeforeSeekToEnd = position;
            this.state = 1;
            long j6 = this.payloadEndPosition - 65307;
            if (j6 > position) {
                return j6;
            }
        } else if (i10 != 1) {
            if (i10 == 2) {
                long jG = g(extractorInput);
                if (jG != -1) {
                    return jG;
                }
                this.state = 3;
            } else if (i10 != 3) {
                if (i10 == 4) {
                    return -1L;
                }
                throw new IllegalStateException();
            }
            i(extractorInput);
            this.state = 4;
            return -(this.startGranule + 2);
        }
        this.totalGranules = h(extractorInput);
        this.state = 4;
        return this.positionBeforeSeekToEnd;
    }

    @Override // androidx.media3.extractor.ogg.OggSeeker
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public OggSeekMap createSeekMap() {
        if (this.totalGranules != 0) {
            return new OggSeekMap();
        }
        return null;
    }

    @VisibleForTesting
    long h(ExtractorInput extractorInput) throws IOException {
        this.pageHeader.b();
        if (!this.pageHeader.c(extractorInput)) {
            throw new EOFException();
        }
        this.pageHeader.a(extractorInput, false);
        OggPageHeader oggPageHeader = this.pageHeader;
        extractorInput.skipFully(oggPageHeader.headerSize + oggPageHeader.bodySize);
        long j6 = this.pageHeader.granulePosition;
        while (true) {
            OggPageHeader oggPageHeader2 = this.pageHeader;
            if ((oggPageHeader2.type & 4) == 4 || !oggPageHeader2.c(extractorInput) || extractorInput.getPosition() >= this.payloadEndPosition || !this.pageHeader.a(extractorInput, true)) {
                break;
            }
            OggPageHeader oggPageHeader3 = this.pageHeader;
            if (!ExtractorUtil.e(extractorInput, oggPageHeader3.headerSize + oggPageHeader3.bodySize)) {
                break;
            }
            j6 = this.pageHeader.granulePosition;
        }
        return j6;
    }

    @Override // androidx.media3.extractor.ogg.OggSeeker
    public void startSeek(long j6) {
        this.targetGranule = Util.r(j6, 0L, this.totalGranules - 1);
        this.state = 2;
        this.start = this.payloadStartPosition;
        this.end = this.payloadEndPosition;
        this.startGranule = 0L;
        this.endGranule = this.totalGranules;
    }

    public DefaultOggSeeker(StreamReader streamReader, long j6, long j10, long j11, long j12, boolean z6) {
        boolean z10;
        if (j6 >= 0 && j10 > j6) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.a(z10);
        this.streamReader = streamReader;
        this.payloadStartPosition = j6;
        this.payloadEndPosition = j10;
        if (j11 != j10 - j6 && !z6) {
            this.state = 0;
        } else {
            this.totalGranules = j12;
            this.state = 4;
        }
        this.pageHeader = new OggPageHeader();
    }
}
