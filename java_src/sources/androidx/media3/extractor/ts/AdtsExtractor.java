package androidx.media3.extractor.ts;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import java.io.EOFException;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class AdtsExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.ts.c
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return androidx.media3.extractor.e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return AdtsExtractor.h();
        }
    };
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;
    private static final int MAX_PACKET_SIZE = 2048;
    private static final int MAX_SNIFF_BYTES = 8192;
    private static final int NUM_FRAMES_FOR_AVERAGE_FRAME_SIZE = 1000;
    private int averageFrameSize;
    private ExtractorOutput extractorOutput;
    private long firstFramePosition;
    private long firstSampleTimestampUs;
    private final int flags;
    private boolean hasCalculatedAverageFrameSize;
    private boolean hasOutputSeekMap;
    private final ParsableByteArray packetBuffer;
    private final AdtsReader reader;
    private final ParsableByteArray scratch;
    private final ParsableBitArray scratchBits;
    private boolean startedPacket;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public AdtsExtractor() {
        this(0);
    }

    private static int f(int i10, long j6) {
        return (int) ((((long) i10) * 8000000) / j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] h() {
        return new Extractor[]{new AdtsExtractor()};
    }

    private int j(ExtractorInput extractorInput) throws IOException {
        int i10 = 0;
        while (true) {
            extractorInput.peekFully(this.scratch.e(), 0, 10);
            this.scratch.U(0);
            if (this.scratch.K() != 4801587) {
                break;
            }
            this.scratch.V(3);
            int iG = this.scratch.G();
            i10 += iG + 10;
            extractorInput.advancePeekPosition(iG);
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i10);
        if (this.firstFramePosition == -1) {
            this.firstFramePosition = i10;
        }
        return i10;
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        this.startedPacket = false;
        this.reader.seek();
        this.firstSampleTimestampUs = j10;
    }

    public AdtsExtractor(int i10) {
        this.flags = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.reader = new AdtsReader(true);
        this.packetBuffer = new ParsableByteArray(2048);
        this.averageFrameSize = -1;
        this.firstFramePosition = -1L;
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        this.scratch = parsableByteArray;
        this.scratchBits = new ParsableBitArray(parsableByteArray.e());
    }

    private void e(ExtractorInput extractorInput) throws IOException {
        if (this.hasCalculatedAverageFrameSize) {
            return;
        }
        this.averageFrameSize = -1;
        extractorInput.resetPeekPosition();
        long j6 = 0;
        if (extractorInput.getPosition() == 0) {
            j(extractorInput);
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            try {
                if (extractorInput.peekFully(this.scratch.e(), 0, 2, true)) {
                    this.scratch.U(0);
                    if (!AdtsReader.k(this.scratch.N())) {
                        break;
                    }
                    if (extractorInput.peekFully(this.scratch.e(), 0, 4, true)) {
                        this.scratchBits.p(14);
                        int iH = this.scratchBits.h(13);
                        if (iH <= 6) {
                            this.hasCalculatedAverageFrameSize = true;
                            throw ParserException.a("Malformed ADTS stream", null);
                        }
                        j6 += (long) iH;
                        i11++;
                        if (i11 != 1000 && extractorInput.advancePeekPosition(iH - 6, true)) {
                        }
                    }
                }
            } catch (EOFException unused) {
            }
            i10 = i11;
            break;
        }
        extractorInput.resetPeekPosition();
        if (i10 > 0) {
            this.averageFrameSize = (int) (j6 / ((long) i10));
        } else {
            this.averageFrameSize = -1;
        }
        this.hasCalculatedAverageFrameSize = true;
    }

    private SeekMap g(long j6, boolean z6) {
        return new ConstantBitrateSeekMap(j6, this.firstFramePosition, f(this.averageFrameSize, this.reader.i()), this.averageFrameSize, z6);
    }

    private void i(long j6, boolean z6) {
        if (this.hasOutputSeekMap) {
            return;
        }
        boolean z10 = (this.flags & 1) != 0 && this.averageFrameSize > 0;
        if (z10 && this.reader.i() == -9223372036854775807L && !z6) {
            return;
        }
        if (!z10 || this.reader.i() == -9223372036854775807L) {
            this.extractorOutput.d(new SeekMap.Unseekable(-9223372036854775807L));
        } else {
            this.extractorOutput.d(g(j6, (this.flags & 2) != 0));
        }
        this.hasOutputSeekMap = true;
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.reader.c(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.endTracks();
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.i(this.extractorOutput);
        long length = extractorInput.getLength();
        int i10 = this.flags;
        if ((i10 & 2) != 0 || ((i10 & 1) != 0 && length != -1)) {
            e(extractorInput);
        }
        int i11 = extractorInput.read(this.packetBuffer.e(), 0, 2048);
        boolean z6 = i11 == -1;
        i(length, z6);
        if (z6) {
            return -1;
        }
        this.packetBuffer.U(0);
        this.packetBuffer.T(i11);
        if (!this.startedPacket) {
            this.reader.b(this.firstSampleTimestampUs, 4);
            this.startedPacket = true;
        }
        this.reader.a(this.packetBuffer);
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        int iJ = j(extractorInput);
        int i10 = iJ;
        int i11 = 0;
        int i12 = 0;
        do {
            extractorInput.peekFully(this.scratch.e(), 0, 2);
            this.scratch.U(0);
            if (!AdtsReader.k(this.scratch.N())) {
                i10++;
                extractorInput.resetPeekPosition();
                extractorInput.advancePeekPosition(i10);
            } else {
                i11++;
                if (i11 >= 4 && i12 > 188) {
                    return true;
                }
                extractorInput.peekFully(this.scratch.e(), 0, 4);
                this.scratchBits.p(14);
                int iH = this.scratchBits.h(13);
                if (iH <= 6) {
                    i10++;
                    extractorInput.resetPeekPosition();
                    extractorInput.advancePeekPosition(i10);
                } else {
                    extractorInput.advancePeekPosition(iH - 6);
                    i12 += iH;
                }
            }
            i11 = 0;
            i12 = 0;
        } while (i10 - iJ < 8192);
        return false;
    }
}
