package androidx.media3.extractor.ts;

import android.net.Uri;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class PsExtractor implements Extractor {
    public static final int AUDIO_STREAM = 192;
    public static final int AUDIO_STREAM_MASK = 224;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.ts.d
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return androidx.media3.extractor.e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return PsExtractor.e();
        }
    };
    private static final long MAX_SEARCH_LENGTH = 1048576;
    private static final long MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND = 8192;
    private static final int MAX_STREAM_ID_PLUS_ONE = 256;
    static final int MPEG_PROGRAM_END_CODE = 441;
    static final int PACKET_START_CODE_PREFIX = 1;
    static final int PACK_START_CODE = 442;
    public static final int PRIVATE_STREAM_1 = 189;
    static final int SYSTEM_HEADER_START_CODE = 443;
    public static final int VIDEO_STREAM = 224;
    public static final int VIDEO_STREAM_MASK = 240;
    private final PsDurationReader durationReader;
    private boolean foundAllTracks;
    private boolean foundAudioTrack;
    private boolean foundVideoTrack;
    private boolean hasOutputSeekMap;
    private long lastTrackPosition;
    private ExtractorOutput output;

    @Nullable
    private PsBinarySearchSeeker psBinarySearchSeeker;
    private final ParsableByteArray psPacketBuffer;
    private final SparseArray<PesReader> psPayloadReaders;
    private final TimestampAdjuster timestampAdjuster;

    private static final class PesReader {
        private static final int PES_SCRATCH_SIZE = 64;
        private boolean dtsFlag;
        private int extendedHeaderLength;
        private final ElementaryStreamReader pesPayloadReader;
        private final ParsableBitArray pesScratch = new ParsableBitArray(new byte[64]);
        private boolean ptsFlag;
        private boolean seenFirstDts;
        private long timeUs;
        private final TimestampAdjuster timestampAdjuster;

        public void d() {
            this.seenFirstDts = false;
            this.pesPayloadReader.seek();
        }

        private void b() {
            this.pesScratch.r(8);
            this.ptsFlag = this.pesScratch.g();
            this.dtsFlag = this.pesScratch.g();
            this.pesScratch.r(6);
            this.extendedHeaderLength = this.pesScratch.h(8);
        }

        private void c() {
            this.timeUs = 0L;
            if (this.ptsFlag) {
                this.pesScratch.r(4);
                long jH = ((long) this.pesScratch.h(3)) << 30;
                this.pesScratch.r(1);
                long jH2 = jH | ((long) (this.pesScratch.h(15) << 15));
                this.pesScratch.r(1);
                long jH3 = jH2 | ((long) this.pesScratch.h(15));
                this.pesScratch.r(1);
                if (!this.seenFirstDts && this.dtsFlag) {
                    this.pesScratch.r(4);
                    long jH4 = ((long) this.pesScratch.h(3)) << 30;
                    this.pesScratch.r(1);
                    long jH5 = jH4 | ((long) (this.pesScratch.h(15) << 15));
                    this.pesScratch.r(1);
                    long jH6 = jH5 | ((long) this.pesScratch.h(15));
                    this.pesScratch.r(1);
                    this.timestampAdjuster.b(jH6);
                    this.seenFirstDts = true;
                }
                this.timeUs = this.timestampAdjuster.b(jH3);
            }
        }

        public void a(ParsableByteArray parsableByteArray) throws ParserException {
            parsableByteArray.l(this.pesScratch.data, 0, 3);
            this.pesScratch.p(0);
            b();
            parsableByteArray.l(this.pesScratch.data, 0, this.extendedHeaderLength);
            this.pesScratch.p(0);
            c();
            this.pesPayloadReader.b(this.timeUs, 4);
            this.pesPayloadReader.a(parsableByteArray);
            this.pesPayloadReader.packetFinished();
        }

        public PesReader(ElementaryStreamReader elementaryStreamReader, TimestampAdjuster timestampAdjuster) {
            this.pesPayloadReader = elementaryStreamReader;
            this.timestampAdjuster = timestampAdjuster;
        }
    }

    public PsExtractor() {
        this(new TimestampAdjuster(0L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] e() {
        return new Extractor[]{new PsExtractor()};
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    public PsExtractor(TimestampAdjuster timestampAdjuster) {
        this.timestampAdjuster = timestampAdjuster;
        this.psPacketBuffer = new ParsableByteArray(4096);
        this.psPayloadReaders = new SparseArray<>();
        this.durationReader = new PsDurationReader();
    }

    private void f(long j6) {
        if (this.hasOutputSeekMap) {
            return;
        }
        this.hasOutputSeekMap = true;
        if (this.durationReader.c() == -9223372036854775807L) {
            this.output.d(new SeekMap.Unseekable(this.durationReader.c()));
            return;
        }
        PsBinarySearchSeeker psBinarySearchSeeker = new PsBinarySearchSeeker(this.durationReader.d(), this.durationReader.c(), j6);
        this.psBinarySearchSeeker = psBinarySearchSeeker;
        this.output.d(psBinarySearchSeeker.b());
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        ElementaryStreamReader h262Reader;
        Assertions.i(this.output);
        long length = extractorInput.getLength();
        if (length != -1 && !this.durationReader.e()) {
            return this.durationReader.g(extractorInput, positionHolder);
        }
        f(length);
        PsBinarySearchSeeker psBinarySearchSeeker = this.psBinarySearchSeeker;
        if (psBinarySearchSeeker != null && psBinarySearchSeeker.d()) {
            return this.psBinarySearchSeeker.c(extractorInput, positionHolder);
        }
        extractorInput.resetPeekPosition();
        long peekPosition = length != -1 ? length - extractorInput.getPeekPosition() : -1L;
        if ((peekPosition != -1 && peekPosition < 4) || !extractorInput.peekFully(this.psPacketBuffer.e(), 0, 4, true)) {
            return -1;
        }
        this.psPacketBuffer.U(0);
        int iQ = this.psPacketBuffer.q();
        if (iQ == MPEG_PROGRAM_END_CODE) {
            return -1;
        }
        if (iQ == PACK_START_CODE) {
            extractorInput.peekFully(this.psPacketBuffer.e(), 0, 10);
            this.psPacketBuffer.U(9);
            extractorInput.skipFully((this.psPacketBuffer.H() & 7) + 14);
            return 0;
        }
        if (iQ == SYSTEM_HEADER_START_CODE) {
            extractorInput.peekFully(this.psPacketBuffer.e(), 0, 2);
            this.psPacketBuffer.U(0);
            extractorInput.skipFully(this.psPacketBuffer.N() + 6);
            return 0;
        }
        if (((iQ & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            extractorInput.skipFully(1);
            return 0;
        }
        int i10 = iQ & 255;
        PesReader pesReader = this.psPayloadReaders.get(i10);
        if (!this.foundAllTracks) {
            if (pesReader == null) {
                if (i10 == 189) {
                    h262Reader = new Ac3Reader();
                    this.foundAudioTrack = true;
                    this.lastTrackPosition = extractorInput.getPosition();
                } else if ((iQ & 224) == 192) {
                    h262Reader = new MpegAudioReader();
                    this.foundAudioTrack = true;
                    this.lastTrackPosition = extractorInput.getPosition();
                } else if ((iQ & 240) == 224) {
                    h262Reader = new H262Reader();
                    this.foundVideoTrack = true;
                    this.lastTrackPosition = extractorInput.getPosition();
                } else {
                    h262Reader = null;
                }
                if (h262Reader != null) {
                    h262Reader.c(this.output, new TsPayloadReader.TrackIdGenerator(i10, 256));
                    pesReader = new PesReader(h262Reader, this.timestampAdjuster);
                    this.psPayloadReaders.put(i10, pesReader);
                }
            }
            if (extractorInput.getPosition() > ((this.foundAudioTrack && this.foundVideoTrack) ? this.lastTrackPosition + 8192 : 1048576L)) {
                this.foundAllTracks = true;
                this.output.endTracks();
            }
        }
        extractorInput.peekFully(this.psPacketBuffer.e(), 0, 2);
        this.psPacketBuffer.U(0);
        int iN = this.psPacketBuffer.N() + 6;
        if (pesReader == null) {
            extractorInput.skipFully(iN);
        } else {
            this.psPacketBuffer.Q(iN);
            extractorInput.readFully(this.psPacketBuffer.e(), 0, iN);
            this.psPacketBuffer.U(6);
            pesReader.a(this.psPacketBuffer);
            ParsableByteArray parsableByteArray = this.psPacketBuffer;
            parsableByteArray.T(parsableByteArray.b());
        }
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        byte[] bArr = new byte[14];
        extractorInput.peekFully(bArr, 0, 14);
        if (PACK_START_CODE != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        extractorInput.advancePeekPosition(bArr[13] & 7);
        extractorInput.peekFully(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002c  */
    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        boolean z6 = this.timestampAdjuster.e() == -9223372036854775807L;
        if (!z6) {
            long jC = this.timestampAdjuster.c();
            if (jC != -9223372036854775807L && jC != 0 && jC != j10) {
                this.timestampAdjuster.h(j10);
            }
        } else if (z6) {
            this.timestampAdjuster.h(j10);
        }
        PsBinarySearchSeeker psBinarySearchSeeker = this.psBinarySearchSeeker;
        if (psBinarySearchSeeker != null) {
            psBinarySearchSeeker.h(j10);
        }
        for (int i10 = 0; i10 < this.psPayloadReaders.size(); i10++) {
            this.psPayloadReaders.valueAt(i10).d();
        }
    }
}
