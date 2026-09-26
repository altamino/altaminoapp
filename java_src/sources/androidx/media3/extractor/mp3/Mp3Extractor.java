package androidx.media3.extractor.mp3;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.DummyTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.Id3Peeker;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.e;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.metadata.id3.MlltFrame;
import androidx.media3.extractor.metadata.id3.TextInformationFrame;
import androidx.renderscript.ScriptIntrinsicBLAS;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class Mp3Extractor implements Extractor {
    public static final int FLAG_DISABLE_ID3_METADATA = 8;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;
    public static final int FLAG_ENABLE_INDEX_SEEKING = 4;
    private static final int MAX_SNIFF_BYTES = 32768;
    private static final int MAX_SYNC_BYTES = 131072;
    private static final int MPEG_AUDIO_HEADER_MASK = -128000;
    private static final int SCRATCH_LENGTH = 10;
    private static final int SEEK_HEADER_INFO = 1231971951;
    private static final int SEEK_HEADER_UNSET = 0;
    private static final int SEEK_HEADER_VBRI = 1447187017;
    private static final int SEEK_HEADER_XING = 1483304551;
    private long basisTimeUs;
    private TrackOutput currentTrackOutput;
    private boolean disableSeeking;
    private ExtractorOutput extractorOutput;
    private long firstSamplePosition;
    private final int flags;
    private final long forcedFirstSampleTimestampUs;
    private final GaplessInfoHolder gaplessInfoHolder;
    private final Id3Peeker id3Peeker;
    private boolean isSeekInProgress;

    @Nullable
    private Metadata metadata;
    private TrackOutput realTrackOutput;
    private int sampleBytesRemaining;
    private long samplesRead;
    private final ParsableByteArray scratch;
    private long seekTimeUs;
    private Seeker seeker;
    private final TrackOutput skippingTrackOutput;
    private final MpegAudioUtil.Header synchronizedHeader;
    private int synchronizedHeaderData;
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.mp3.a
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return Mp3Extractor.n();
        }
    };
    private static final Id3Decoder.FramePredicate REQUIRED_ID3_FRAME_PREDICATE = new Id3Decoder.FramePredicate() { // from class: androidx.media3.extractor.mp3.b
        @Override // androidx.media3.extractor.metadata.id3.Id3Decoder.FramePredicate
        public final boolean evaluate(int i10, int i11, int i12, int i13, int i14) {
            return Mp3Extractor.o(i10, i11, i12, i13, i14);
        }
    };

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public Mp3Extractor() {
        this(0);
    }

    private static boolean m(int i10, long j6) {
        return ((long) (i10 & MPEG_AUDIO_HEADER_MASK)) == (j6 & (-128000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] n() {
        return new Extractor[]{new Mp3Extractor()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean o(int i10, int i11, int i12, int i13, int i14) {
        return (i11 == 67 && i12 == 79 && i13 == 77 && (i14 == 77 || i10 == 2)) || (i11 == 77 && i12 == 76 && i13 == 76 && (i14 == 84 || i10 == 2));
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        return u(extractorInput, true);
    }

    public void i() {
        this.disableSeeking = true;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        this.synchronizedHeaderData = 0;
        this.basisTimeUs = -9223372036854775807L;
        this.samplesRead = 0L;
        this.sampleBytesRemaining = 0;
        this.seekTimeUs = j10;
        Seeker seeker = this.seeker;
        if (!(seeker instanceof IndexSeeker) || ((IndexSeeker) seeker).b(j10)) {
            return;
        }
        this.isSeekInProgress = true;
        this.currentTrackOutput = this.skippingTrackOutput;
    }

    public Mp3Extractor(int i10) {
        this(i10, -9223372036854775807L);
    }

    private void f() {
        Assertions.i(this.realTrackOutput);
        Util.j(this.extractorOutput);
    }

    private long h(long j6) {
        return this.basisTimeUs + ((j6 * 1000000) / ((long) this.synchronizedHeader.sampleRate));
    }

    private Seeker j(ExtractorInput extractorInput, boolean z6) throws IOException {
        extractorInput.peekFully(this.scratch.e(), 0, 4);
        this.scratch.U(0);
        this.synchronizedHeader.a(this.scratch.q());
        return new ConstantBitrateSeeker(extractorInput.getLength(), extractorInput.getPosition(), this.synchronizedHeader, z6);
    }

    private static long k(@Nullable Metadata metadata) {
        if (metadata == null) {
            return -9223372036854775807L;
        }
        int iH = metadata.h();
        for (int i10 = 0; i10 < iH; i10++) {
            Metadata.Entry entryG = metadata.g(i10);
            if (entryG instanceof TextInformationFrame) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) entryG;
                if (textInformationFrame.id.equals("TLEN")) {
                    return Util.K0(Long.parseLong(textInformationFrame.values.get(0)));
                }
            }
        }
        return -9223372036854775807L;
    }

    @Nullable
    private static MlltSeeker p(@Nullable Metadata metadata, long j6) {
        if (metadata == null) {
            return null;
        }
        int iH = metadata.h();
        for (int i10 = 0; i10 < iH; i10++) {
            Metadata.Entry entryG = metadata.g(i10);
            if (entryG instanceof MlltFrame) {
                return MlltSeeker.b(j6, (MlltFrame) entryG, k(metadata));
            }
        }
        return null;
    }

    @Nullable
    private Seeker q(ExtractorInput extractorInput) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(this.synchronizedHeader.frameSize);
        extractorInput.peekFully(parsableByteArray.e(), 0, this.synchronizedHeader.frameSize);
        MpegAudioUtil.Header header = this.synchronizedHeader;
        int i10 = 21;
        if ((header.version & 1) != 0) {
            if (header.channels != 1) {
                i10 = 36;
            }
        } else if (header.channels == 1) {
            i10 = 13;
        }
        int i11 = i10;
        int iL = l(parsableByteArray, i11);
        if (iL != SEEK_HEADER_XING && iL != SEEK_HEADER_INFO) {
            if (iL != SEEK_HEADER_VBRI) {
                extractorInput.resetPeekPosition();
                return null;
            }
            VbriSeeker vbriSeekerB = VbriSeeker.b(extractorInput.getLength(), extractorInput.getPosition(), this.synchronizedHeader, parsableByteArray);
            extractorInput.skipFully(this.synchronizedHeader.frameSize);
            return vbriSeekerB;
        }
        XingSeeker xingSeekerB = XingSeeker.b(extractorInput.getLength(), extractorInput.getPosition(), this.synchronizedHeader, parsableByteArray);
        if (xingSeekerB != null && !this.gaplessInfoHolder.a()) {
            extractorInput.resetPeekPosition();
            extractorInput.advancePeekPosition(i11 + ScriptIntrinsicBLAS.LEFT);
            extractorInput.peekFully(this.scratch.e(), 0, 3);
            this.scratch.U(0);
            this.gaplessInfoHolder.d(this.scratch.K());
        }
        extractorInput.skipFully(this.synchronizedHeader.frameSize);
        return (xingSeekerB == null || xingSeekerB.isSeekable() || iL != SEEK_HEADER_INFO) ? xingSeekerB : j(extractorInput, false);
    }

    private boolean r(ExtractorInput extractorInput) throws IOException {
        Seeker seeker = this.seeker;
        if (seeker != null) {
            long jA = seeker.a();
            if (jA != -1 && extractorInput.getPeekPosition() > jA - 4) {
                return true;
            }
        }
        try {
            return !extractorInput.peekFully(this.scratch.e(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private int s(ExtractorInput extractorInput) throws IOException {
        if (this.synchronizedHeaderData == 0) {
            try {
                u(extractorInput, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.seeker == null) {
            Seeker seekerG = g(extractorInput);
            this.seeker = seekerG;
            this.extractorOutput.d(seekerG);
            this.currentTrackOutput.d(new Format.Builder().g0(this.synchronizedHeader.mimeType).Y(4096).J(this.synchronizedHeader.channels).h0(this.synchronizedHeader.sampleRate).P(this.gaplessInfoHolder.encoderDelay).Q(this.gaplessInfoHolder.encoderPadding).Z((this.flags & 8) != 0 ? null : this.metadata).G());
            this.firstSamplePosition = extractorInput.getPosition();
        } else if (this.firstSamplePosition != 0) {
            long position = extractorInput.getPosition();
            long j6 = this.firstSamplePosition;
            if (position < j6) {
                extractorInput.skipFully((int) (j6 - position));
            }
        }
        return t(extractorInput);
    }

    private int t(ExtractorInput extractorInput) throws IOException {
        if (this.sampleBytesRemaining == 0) {
            extractorInput.resetPeekPosition();
            if (r(extractorInput)) {
                return -1;
            }
            this.scratch.U(0);
            int iQ = this.scratch.q();
            if (!m(iQ, this.synchronizedHeaderData) || MpegAudioUtil.j(iQ) == -1) {
                extractorInput.skipFully(1);
                this.synchronizedHeaderData = 0;
                return 0;
            }
            this.synchronizedHeader.a(iQ);
            if (this.basisTimeUs == -9223372036854775807L) {
                this.basisTimeUs = this.seeker.getTimeUs(extractorInput.getPosition());
                if (this.forcedFirstSampleTimestampUs != -9223372036854775807L) {
                    this.basisTimeUs += this.forcedFirstSampleTimestampUs - this.seeker.getTimeUs(0L);
                }
            }
            MpegAudioUtil.Header header = this.synchronizedHeader;
            this.sampleBytesRemaining = header.frameSize;
            Seeker seeker = this.seeker;
            if (seeker instanceof IndexSeeker) {
                IndexSeeker indexSeeker = (IndexSeeker) seeker;
                indexSeeker.c(h(this.samplesRead + ((long) header.samplesPerFrame)), extractorInput.getPosition() + ((long) this.synchronizedHeader.frameSize));
                if (this.isSeekInProgress && indexSeeker.b(this.seekTimeUs)) {
                    this.isSeekInProgress = false;
                    this.currentTrackOutput = this.realTrackOutput;
                }
            }
        }
        int iE = this.currentTrackOutput.e(extractorInput, this.sampleBytesRemaining, true);
        if (iE == -1) {
            return -1;
        }
        int i10 = this.sampleBytesRemaining - iE;
        this.sampleBytesRemaining = i10;
        if (i10 > 0) {
            return 0;
        }
        this.currentTrackOutput.f(h(this.samplesRead), 1, this.synchronizedHeader.frameSize, 0, null);
        this.samplesRead += (long) this.synchronizedHeader.samplesPerFrame;
        this.sampleBytesRemaining = 0;
        return 0;
    }

    private boolean u(ExtractorInput extractorInput, boolean z6) throws IOException {
        int peekPosition;
        int i10;
        int iJ;
        int i11 = z6 ? 32768 : 131072;
        extractorInput.resetPeekPosition();
        if (extractorInput.getPosition() == 0) {
            Metadata metadataA = this.id3Peeker.a(extractorInput, (this.flags & 8) == 0 ? null : REQUIRED_ID3_FRAME_PREDICATE);
            this.metadata = metadataA;
            if (metadataA != null) {
                this.gaplessInfoHolder.c(metadataA);
            }
            peekPosition = (int) extractorInput.getPeekPosition();
            if (!z6) {
                extractorInput.skipFully(peekPosition);
            }
            i10 = 0;
        } else {
            peekPosition = 0;
            i10 = 0;
        }
        int i12 = i10;
        int i13 = i12;
        while (true) {
            if (r(extractorInput)) {
                if (i12 > 0) {
                    break;
                }
                throw new EOFException();
            }
            this.scratch.U(0);
            int iQ = this.scratch.q();
            if ((i10 == 0 || m(iQ, i10)) && (iJ = MpegAudioUtil.j(iQ)) != -1) {
                i12++;
                if (i12 != 1) {
                    if (i12 == 4) {
                        break;
                    }
                } else {
                    this.synchronizedHeader.a(iQ);
                    i10 = iQ;
                }
                extractorInput.advancePeekPosition(iJ - 4);
            } else {
                int i14 = i13 + 1;
                if (i13 == i11) {
                    if (z6) {
                        return false;
                    }
                    throw ParserException.a("Searched too many bytes.", null);
                }
                if (z6) {
                    extractorInput.resetPeekPosition();
                    extractorInput.advancePeekPosition(peekPosition + i14);
                } else {
                    extractorInput.skipFully(1);
                }
                i12 = 0;
                i13 = i14;
                i10 = 0;
            }
        }
        if (z6) {
            extractorInput.skipFully(peekPosition + i13);
        } else {
            extractorInput.resetPeekPosition();
        }
        this.synchronizedHeaderData = i10;
        return true;
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        TrackOutput trackOutputTrack = extractorOutput.track(0, 1);
        this.realTrackOutput = trackOutputTrack;
        this.currentTrackOutput = trackOutputTrack;
        this.extractorOutput.endTracks();
    }

    public Mp3Extractor(int i10, long j6) {
        this.flags = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.forcedFirstSampleTimestampUs = j6;
        this.scratch = new ParsableByteArray(10);
        this.synchronizedHeader = new MpegAudioUtil.Header();
        this.gaplessInfoHolder = new GaplessInfoHolder();
        this.basisTimeUs = -9223372036854775807L;
        this.id3Peeker = new Id3Peeker();
        DummyTrackOutput dummyTrackOutput = new DummyTrackOutput();
        this.skippingTrackOutput = dummyTrackOutput;
        this.currentTrackOutput = dummyTrackOutput;
    }

    private Seeker g(ExtractorInput extractorInput) throws IOException {
        long jK;
        long jA;
        Seeker seekerQ = q(extractorInput);
        MlltSeeker mlltSeekerP = p(this.metadata, extractorInput.getPosition());
        if (this.disableSeeking) {
            return new Seeker.UnseekableSeeker();
        }
        if ((this.flags & 4) != 0) {
            if (mlltSeekerP != null) {
                jK = mlltSeekerP.getDurationUs();
                jA = mlltSeekerP.a();
            } else if (seekerQ != null) {
                jK = seekerQ.getDurationUs();
                jA = seekerQ.a();
            } else {
                jK = k(this.metadata);
                jA = -1;
            }
            seekerQ = new IndexSeeker(jK, extractorInput.getPosition(), jA);
        } else if (mlltSeekerP != null) {
            seekerQ = mlltSeekerP;
        } else if (seekerQ == null) {
            seekerQ = null;
        }
        boolean z6 = true;
        if (seekerQ == null || (!seekerQ.isSeekable() && (this.flags & 1) != 0)) {
            if ((this.flags & 2) == 0) {
                z6 = false;
            }
            return j(extractorInput, z6);
        }
        return seekerQ;
    }

    private static int l(ParsableByteArray parsableByteArray, int i10) {
        if (parsableByteArray.g() >= i10 + 4) {
            parsableByteArray.U(i10);
            int iQ = parsableByteArray.q();
            if (iQ == SEEK_HEADER_XING || iQ == SEEK_HEADER_INFO) {
                return iQ;
            }
        }
        if (parsableByteArray.g() >= 40) {
            parsableByteArray.U(36);
            if (parsableByteArray.q() == SEEK_HEADER_VBRI) {
                return SEEK_HEADER_VBRI;
            }
            return 0;
        }
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        f();
        int iS = s(extractorInput);
        if (iS == -1 && (this.seeker instanceof IndexSeeker)) {
            long jH = h(this.samplesRead);
            if (this.seeker.getDurationUs() != jH) {
                ((IndexSeeker) this.seeker).d(jH);
                this.extractorOutput.d(this.seeker);
            }
        }
        return iS;
    }
}
