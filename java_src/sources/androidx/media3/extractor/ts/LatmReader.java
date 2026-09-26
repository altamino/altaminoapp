package androidx.media3.extractor.ts;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class LatmReader implements ElementaryStreamReader {
    private static final int INITIAL_BUFFER_SIZE = 1024;
    private static final int STATE_FINDING_SYNC_1 = 0;
    private static final int STATE_FINDING_SYNC_2 = 1;
    private static final int STATE_READING_HEADER = 2;
    private static final int STATE_READING_SAMPLE = 3;
    private static final int SYNC_BYTE_FIRST = 86;
    private static final int SYNC_BYTE_SECOND = 224;
    private int audioMuxVersionA;
    private int bytesRead;
    private int channelCount;

    @Nullable
    private String codecs;
    private Format format;
    private String formatId;
    private int frameLengthType;

    @Nullable
    private final String language;
    private int numSubframes;
    private long otherDataLenBits;
    private boolean otherDataPresent;
    private TrackOutput output;
    private final ParsableBitArray sampleBitArray;
    private final ParsableByteArray sampleDataBuffer;
    private long sampleDurationUs;
    private int sampleRateHz;
    private int sampleSize;
    private int secondHeaderByte;
    private int state;
    private boolean streamMuxRead;
    private long timeUs;

    private static long d(ParsableBitArray parsableBitArray) {
        return parsableBitArray.h((parsableBitArray.h(2) + 1) * 8);
    }

    private void g(ParsableBitArray parsableBitArray) {
        int iH = parsableBitArray.h(3);
        this.frameLengthType = iH;
        if (iH == 0) {
            parsableBitArray.r(8);
            return;
        }
        if (iH == 1) {
            parsableBitArray.r(9);
            return;
        }
        if (iH == 3 || iH == 4 || iH == 5) {
            parsableBitArray.r(6);
        } else {
            if (iH != 6 && iH != 7) {
                throw new IllegalStateException();
            }
            parsableBitArray.r(1);
        }
    }

    private void j(ParsableBitArray parsableBitArray) throws ParserException {
        boolean zG;
        int iH = parsableBitArray.h(1);
        int iH2 = iH == 1 ? parsableBitArray.h(1) : 0;
        this.audioMuxVersionA = iH2;
        if (iH2 != 0) {
            throw ParserException.a(null, null);
        }
        if (iH == 1) {
            d(parsableBitArray);
        }
        if (!parsableBitArray.g()) {
            throw ParserException.a(null, null);
        }
        this.numSubframes = parsableBitArray.h(6);
        int iH3 = parsableBitArray.h(4);
        int iH4 = parsableBitArray.h(3);
        if (iH3 != 0 || iH4 != 0) {
            throw ParserException.a(null, null);
        }
        if (iH == 0) {
            int iE = parsableBitArray.e();
            int iF = f(parsableBitArray);
            parsableBitArray.p(iE);
            byte[] bArr = new byte[(iF + 7) / 8];
            parsableBitArray.i(bArr, 0, iF);
            Format formatG = new Format.Builder().U(this.formatId).g0("audio/mp4a-latm").K(this.codecs).J(this.channelCount).h0(this.sampleRateHz).V(Collections.singletonList(bArr)).X(this.language).G();
            if (!formatG.equals(this.format)) {
                this.format = formatG;
                this.sampleDurationUs = 1024000000 / ((long) formatG.sampleRate);
                this.output.d(formatG);
            }
        } else {
            parsableBitArray.r(((int) d(parsableBitArray)) - f(parsableBitArray));
        }
        g(parsableBitArray);
        boolean zG2 = parsableBitArray.g();
        this.otherDataPresent = zG2;
        this.otherDataLenBits = 0L;
        if (zG2) {
            if (iH == 1) {
                this.otherDataLenBits = d(parsableBitArray);
            } else {
                do {
                    zG = parsableBitArray.g();
                    this.otherDataLenBits = (this.otherDataLenBits << 8) + ((long) parsableBitArray.h(8));
                } while (zG);
            }
        }
        if (parsableBitArray.g()) {
            parsableBitArray.r(8);
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void b(long j6, int i10) {
        if (j6 != -9223372036854775807L) {
            this.timeUs = j6;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.timeUs = -9223372036854775807L;
        this.streamMuxRead = false;
    }

    private int h(ParsableBitArray parsableBitArray) throws ParserException {
        int iH;
        if (this.frameLengthType != 0) {
            throw ParserException.a(null, null);
        }
        int i10 = 0;
        do {
            iH = parsableBitArray.h(8);
            i10 += iH;
        } while (iH == 255);
        return i10;
    }

    private void k(int i10) {
        this.sampleDataBuffer.Q(i10);
        this.sampleBitArray.n(this.sampleDataBuffer.e());
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void a(ParsableByteArray parsableByteArray) throws ParserException {
        Assertions.i(this.output);
        while (parsableByteArray.a() > 0) {
            int i10 = this.state;
            if (i10 != 0) {
                if (i10 == 1) {
                    int iH = parsableByteArray.H();
                    if ((iH & 224) == 224) {
                        this.secondHeaderByte = iH;
                        this.state = 2;
                    } else if (iH != 86) {
                        this.state = 0;
                    }
                } else if (i10 == 2) {
                    int iH2 = ((this.secondHeaderByte & (-225)) << 8) | parsableByteArray.H();
                    this.sampleSize = iH2;
                    if (iH2 > this.sampleDataBuffer.e().length) {
                        k(this.sampleSize);
                    }
                    this.bytesRead = 0;
                    this.state = 3;
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException();
                    }
                    int iMin = Math.min(parsableByteArray.a(), this.sampleSize - this.bytesRead);
                    parsableByteArray.l(this.sampleBitArray.data, this.bytesRead, iMin);
                    int i11 = this.bytesRead + iMin;
                    this.bytesRead = i11;
                    if (i11 == this.sampleSize) {
                        this.sampleBitArray.p(0);
                        e(this.sampleBitArray);
                        this.state = 0;
                    }
                }
            } else if (parsableByteArray.H() == 86) {
                this.state = 1;
            }
        }
    }

    public LatmReader(@Nullable String str) {
        this.language = str;
        ParsableByteArray parsableByteArray = new ParsableByteArray(1024);
        this.sampleDataBuffer = parsableByteArray;
        this.sampleBitArray = new ParsableBitArray(parsableByteArray.e());
        this.timeUs = -9223372036854775807L;
    }

    private void e(ParsableBitArray parsableBitArray) throws ParserException {
        if (!parsableBitArray.g()) {
            this.streamMuxRead = true;
            j(parsableBitArray);
        } else if (!this.streamMuxRead) {
            return;
        }
        if (this.audioMuxVersionA == 0) {
            if (this.numSubframes == 0) {
                i(parsableBitArray, h(parsableBitArray));
                if (this.otherDataPresent) {
                    parsableBitArray.r((int) this.otherDataLenBits);
                    return;
                }
                return;
            }
            throw ParserException.a(null, null);
        }
        throw ParserException.a(null, null);
    }

    private int f(ParsableBitArray parsableBitArray) throws ParserException {
        int iB = parsableBitArray.b();
        AacUtil.Config configE = AacUtil.e(parsableBitArray, true);
        this.codecs = configE.codecs;
        this.sampleRateHz = configE.sampleRateHz;
        this.channelCount = configE.channelCount;
        return iB - parsableBitArray.b();
    }

    private void i(ParsableBitArray parsableBitArray, int i10) {
        int iE = parsableBitArray.e();
        if ((iE & 7) == 0) {
            this.sampleDataBuffer.U(iE >> 3);
        } else {
            parsableBitArray.i(this.sampleDataBuffer.e(), 0, i10 * 8);
            this.sampleDataBuffer.U(0);
        }
        this.output.b(this.sampleDataBuffer, i10);
        long j6 = this.timeUs;
        if (j6 != -9223372036854775807L) {
            this.output.f(j6, 1, i10, 0, null);
            this.timeUs += this.sampleDurationUs;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        this.output = extractorOutput.track(trackIdGenerator.c(), 1);
        this.formatId = trackIdGenerator.b();
    }
}
