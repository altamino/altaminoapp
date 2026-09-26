package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
abstract class StreamReader {
    private static final int STATE_END_OF_INPUT = 3;
    private static final int STATE_READ_HEADERS = 0;
    private static final int STATE_READ_PAYLOAD = 2;
    private static final int STATE_SKIP_HEADERS = 1;
    private long currentGranule;
    private ExtractorOutput extractorOutput;
    private boolean formatSet;
    private long lengthOfReadPacket;
    private OggSeeker oggSeeker;
    private long payloadStartPosition;
    private int sampleRate;
    private boolean seekMapSet;
    private int state;
    private long targetGranule;
    private TrackOutput trackOutput;
    private final OggPacket oggPacket = new OggPacket();
    private SetupData setupData = new SetupData();

    private static final class UnseekableOggSeeker implements OggSeeker {
        private UnseekableOggSeeker() {
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public long a(ExtractorInput extractorInput) {
            return -1L;
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public void startSeek(long j6) {
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public SeekMap createSeekMap() {
            return new SeekMap.Unseekable(-9223372036854775807L);
        }
    }

    protected void e(long j6) {
        this.currentGranule = j6;
    }

    protected abstract long f(ParsableByteArray parsableByteArray);

    protected abstract boolean h(ParsableByteArray parsableByteArray, long j6, SetupData setupData) throws IOException;

    static class SetupData {
        Format format;
        OggSeeker oggSeeker;

        SetupData() {
        }
    }

    private void a() {
        Assertions.i(this.trackOutput);
        Util.j(this.extractorOutput);
    }

    private boolean i(ExtractorInput extractorInput) throws IOException {
        while (this.oggPacket.d(extractorInput)) {
            this.lengthOfReadPacket = extractorInput.getPosition() - this.payloadStartPosition;
            if (!h(this.oggPacket.c(), this.payloadStartPosition, this.setupData)) {
                return true;
            }
            this.payloadStartPosition = extractorInput.getPosition();
        }
        this.state = 3;
        return false;
    }

    private int k(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        long jA = this.oggSeeker.a(extractorInput);
        if (jA >= 0) {
            positionHolder.position = jA;
            return 1;
        }
        if (jA < -1) {
            e(-(jA + 2));
        }
        if (!this.seekMapSet) {
            this.extractorOutput.d((SeekMap) Assertions.i(this.oggSeeker.createSeekMap()));
            this.seekMapSet = true;
        }
        if (this.lengthOfReadPacket <= 0 && !this.oggPacket.d(extractorInput)) {
            this.state = 3;
            return -1;
        }
        this.lengthOfReadPacket = 0L;
        ParsableByteArray parsableByteArrayC = this.oggPacket.c();
        long jF = f(parsableByteArrayC);
        if (jF >= 0) {
            long j6 = this.currentGranule;
            if (j6 + jF >= this.targetGranule) {
                long jB = b(j6);
                this.trackOutput.b(parsableByteArrayC, parsableByteArrayC.g());
                this.trackOutput.f(jB, 1, parsableByteArrayC.g(), 0, null);
                this.targetGranule = -1L;
            }
        }
        this.currentGranule += jF;
        return 0;
    }

    protected long c(long j6) {
        return (((long) this.sampleRate) * j6) / 1000000;
    }

    void d(ExtractorOutput extractorOutput, TrackOutput trackOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = trackOutput;
        l(true);
    }

    protected void l(boolean z6) {
        if (z6) {
            this.setupData = new SetupData();
            this.payloadStartPosition = 0L;
            this.state = 0;
        } else {
            this.state = 1;
        }
        this.targetGranule = -1L;
        this.currentGranule = 0L;
    }

    final void m(long j6, long j10) {
        this.oggPacket.e();
        if (j6 == 0) {
            l(!this.seekMapSet);
        } else if (this.state != 0) {
            this.targetGranule = c(j10);
            ((OggSeeker) Util.j(this.oggSeeker)).startSeek(this.targetGranule);
            this.state = 2;
        }
    }

    private int j(ExtractorInput extractorInput) throws IOException {
        boolean z6;
        if (!i(extractorInput)) {
            return -1;
        }
        Format format = this.setupData.format;
        this.sampleRate = format.sampleRate;
        if (!this.formatSet) {
            this.trackOutput.d(format);
            this.formatSet = true;
        }
        OggSeeker oggSeeker = this.setupData.oggSeeker;
        if (oggSeeker != null) {
            this.oggSeeker = oggSeeker;
        } else if (extractorInput.getLength() == -1) {
            this.oggSeeker = new UnseekableOggSeeker();
        } else {
            OggPageHeader oggPageHeaderB = this.oggPacket.b();
            if ((oggPageHeaderB.type & 4) != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.oggSeeker = new DefaultOggSeeker(this, this.payloadStartPosition, extractorInput.getLength(), oggPageHeaderB.headerSize + oggPageHeaderB.bodySize, oggPageHeaderB.granulePosition, z6);
        }
        this.state = 2;
        this.oggPacket.f();
        return 0;
    }

    protected long b(long j6) {
        return (j6 * 1000000) / ((long) this.sampleRate);
    }

    final int g(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        a();
        int i10 = this.state;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                Util.j(this.oggSeeker);
                return k(extractorInput, positionHolder);
            }
            extractorInput.skipFully((int) this.payloadStartPosition);
            this.state = 2;
            return 0;
        }
        return j(extractorInput);
    }
}
