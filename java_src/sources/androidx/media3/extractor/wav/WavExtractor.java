package androidx.media3.extractor.wav;

import android.net.Uri;
import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.WavUtil;
import androidx.media3.extractor.e;
import com.google.common.base.c;
import com.narvii.model.User;
import com.narvii.util.http.ApiService;
import io.agora.rtc.Constants;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class WavExtractor implements Extractor {
    public static final ExtractorsFactory FACTORY = new ExtractorsFactory() { // from class: androidx.media3.extractor.wav.a
        @Override // androidx.media3.extractor.ExtractorsFactory
        public /* synthetic */ Extractor[] a(Uri uri, Map map) {
            return e.a(this, uri, map);
        }

        @Override // androidx.media3.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return WavExtractor.f();
        }
    };
    private static final int STATE_READING_FILE_TYPE = 0;
    private static final int STATE_READING_FORMAT = 2;
    private static final int STATE_READING_RF64_SAMPLE_DATA_SIZE = 1;
    private static final int STATE_READING_SAMPLE_DATA = 4;
    private static final int STATE_SKIPPING_TO_SAMPLE_DATA = 3;
    private static final String TAG = "WavExtractor";
    private static final int TARGET_SAMPLES_PER_SECOND = 10;
    private ExtractorOutput extractorOutput;
    private OutputWriter outputWriter;
    private TrackOutput trackOutput;
    private int state = 0;
    private long rf64SampleDataSize = -1;
    private int dataStartPosition = -1;
    private long dataEndPosition = -1;

    private static final class ImaAdPcmOutputWriter implements OutputWriter {
        private static final int[] INDEX_TABLE = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        private static final int[] STEP_TABLE = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, Constants.ERR_MODULE_NOT_FOUND, 173, 190, 209, ApiService.API_ERR_USER_NOT_IN_COMMUNITY, User.USER_ROLE_NEWS_FEED, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
        private final ParsableByteArray decodedData;
        private final ExtractorOutput extractorOutput;
        private final Format format;
        private final int framesPerBlock;
        private final byte[] inputData;
        private long outputFrameCount;
        private int pendingInputBytes;
        private int pendingOutputBytes;
        private long startTimeUs;
        private final int targetSampleSizeFrames;
        private final TrackOutput trackOutput;
        private final WavFormat wavFormat;

        private void d(byte[] bArr, int i10, ParsableByteArray parsableByteArray) {
            for (int i11 = 0; i11 < i10; i11++) {
                for (int i12 = 0; i12 < this.wavFormat.numChannels; i12++) {
                    e(bArr, i11, i12, parsableByteArray.e());
                }
            }
            int iG = g(this.framesPerBlock * i10);
            parsableByteArray.U(0);
            parsableByteArray.T(iG);
        }

        private static int h(int i10, int i11) {
            return i10 * 2 * i11;
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public void b(long j6) {
            this.pendingInputBytes = 0;
            this.startTimeUs = j6;
            this.pendingOutputBytes = 0;
            this.outputFrameCount = 0L;
        }

        private void e(byte[] bArr, int i10, int i11, byte[] bArr2) {
            WavFormat wavFormat = this.wavFormat;
            int i12 = wavFormat.blockSize;
            int i13 = wavFormat.numChannels;
            int i14 = (i10 * i12) + (i11 * 4);
            int i15 = (i13 * 4) + i14;
            int i16 = (i12 / i13) - 4;
            int iQ = (short) (((bArr[i14 + 1] & 255) << 8) | (bArr[i14] & 255));
            int iMin = Math.min(bArr[i14 + 2] & 255, 88);
            int i17 = STEP_TABLE[iMin];
            int i18 = ((i10 * this.framesPerBlock * i13) + i11) * 2;
            bArr2[i18] = (byte) (iQ & 255);
            bArr2[i18 + 1] = (byte) (iQ >> 8);
            for (int i19 = 0; i19 < i16 * 2; i19++) {
                byte b7 = bArr[((i19 / 8) * i13 * 4) + i15 + ((i19 / 2) % 4)];
                int i20 = i19 % 2 == 0 ? b7 & c.SI : (b7 & 255) >> 4;
                int i21 = ((((i20 & 7) * 2) + 1) * i17) >> 3;
                if ((i20 & 8) != 0) {
                    i21 = -i21;
                }
                iQ = Util.q(iQ + i21, -32768, 32767);
                i18 += i13 * 2;
                bArr2[i18] = (byte) (iQ & 255);
                bArr2[i18 + 1] = (byte) (iQ >> 8);
                int i22 = iMin + INDEX_TABLE[i20];
                int[] iArr = STEP_TABLE;
                iMin = Util.q(i22, 0, iArr.length - 1);
                i17 = iArr[iMin];
            }
        }

        private int f(int i10) {
            return i10 / (this.wavFormat.numChannels * 2);
        }

        private int g(int i10) {
            return h(i10, this.wavFormat.numChannels);
        }

        private void i(int i10) {
            long jX0 = this.startTimeUs + Util.X0(this.outputFrameCount, 1000000L, this.wavFormat.frameRateHz);
            int iG = g(i10);
            this.trackOutput.f(jX0, 1, iG, this.pendingOutputBytes - iG, null);
            this.outputFrameCount += (long) i10;
            this.pendingOutputBytes -= iG;
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public void a(int i10, long j6) {
            this.extractorOutput.d(new WavSeekMap(this.wavFormat, this.framesPerBlock, i10, j6));
            this.trackOutput.d(this.format);
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0038 A[LOOP:0: B:6:0x001e->B:12:0x0038, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:23:0x003e A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:25:0x001b A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:7:0x0020  */
        /* JADX WARN: Code duplicated, block: B:9:0x0024  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0035 -> B:4:0x001b). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public boolean c(androidx.media3.extractor.ExtractorInput r7, long r8) throws java.io.IOException {
            /*
                r6 = this;
                int r0 = r6.targetSampleSizeFrames
                int r1 = r6.pendingOutputBytes
                int r1 = r6.f(r1)
                int r0 = r0 - r1
                int r1 = r6.framesPerBlock
                int r0 = androidx.media3.common.util.Util.l(r0, r1)
                androidx.media3.extractor.wav.WavFormat r1 = r6.wavFormat
                int r1 = r1.blockSize
                int r0 = r0 * r1
                r1 = 0
                int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                r2 = 1
                if (r1 != 0) goto L1d
            L1b:
                r1 = r2
                goto L1e
            L1d:
                r1 = 0
            L1e:
                if (r1 != 0) goto L3e
                int r3 = r6.pendingInputBytes
                if (r3 >= r0) goto L3e
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r3 = (int) r3
                byte[] r4 = r6.inputData
                int r5 = r6.pendingInputBytes
                int r3 = r7.read(r4, r5, r3)
                r4 = -1
                if (r3 != r4) goto L38
                goto L1b
            L38:
                int r4 = r6.pendingInputBytes
                int r4 = r4 + r3
                r6.pendingInputBytes = r4
                goto L1e
            L3e:
                int r7 = r6.pendingInputBytes
                androidx.media3.extractor.wav.WavFormat r8 = r6.wavFormat
                int r8 = r8.blockSize
                int r7 = r7 / r8
                if (r7 <= 0) goto L75
                byte[] r8 = r6.inputData
                androidx.media3.common.util.ParsableByteArray r9 = r6.decodedData
                r6.d(r8, r7, r9)
                int r8 = r6.pendingInputBytes
                androidx.media3.extractor.wav.WavFormat r9 = r6.wavFormat
                int r9 = r9.blockSize
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.pendingInputBytes = r8
                androidx.media3.common.util.ParsableByteArray r7 = r6.decodedData
                int r7 = r7.g()
                androidx.media3.extractor.TrackOutput r8 = r6.trackOutput
                androidx.media3.common.util.ParsableByteArray r9 = r6.decodedData
                r8.b(r9, r7)
                int r8 = r6.pendingOutputBytes
                int r8 = r8 + r7
                r6.pendingOutputBytes = r8
                int r7 = r6.f(r8)
                int r8 = r6.targetSampleSizeFrames
                if (r7 < r8) goto L75
                r6.i(r8)
            L75:
                if (r1 == 0) goto L82
                int r7 = r6.pendingOutputBytes
                int r7 = r6.f(r7)
                if (r7 <= 0) goto L82
                r6.i(r7)
            L82:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.wav.WavExtractor.ImaAdPcmOutputWriter.c(androidx.media3.extractor.ExtractorInput, long):boolean");
        }

        public ImaAdPcmOutputWriter(ExtractorOutput extractorOutput, TrackOutput trackOutput, WavFormat wavFormat) throws ParserException {
            this.extractorOutput = extractorOutput;
            this.trackOutput = trackOutput;
            this.wavFormat = wavFormat;
            int iMax = Math.max(1, wavFormat.frameRateHz / 10);
            this.targetSampleSizeFrames = iMax;
            ParsableByteArray parsableByteArray = new ParsableByteArray(wavFormat.extraData);
            parsableByteArray.z();
            int iZ = parsableByteArray.z();
            this.framesPerBlock = iZ;
            int i10 = wavFormat.numChannels;
            int i11 = (((wavFormat.blockSize - (i10 * 4)) * 8) / (wavFormat.bitsPerSample * i10)) + 1;
            if (iZ == i11) {
                int iL = Util.l(iMax, iZ);
                this.inputData = new byte[wavFormat.blockSize * iL];
                this.decodedData = new ParsableByteArray(iL * h(iZ, i10));
                int i12 = ((wavFormat.frameRateHz * wavFormat.blockSize) * 8) / iZ;
                this.format = new Format.Builder().g0("audio/raw").I(i12).b0(i12).Y(h(iMax, i10)).J(wavFormat.numChannels).h0(wavFormat.frameRateHz).a0(2).G();
                return;
            }
            throw ParserException.a("Expected frames per block: " + i11 + "; got: " + iZ, null);
        }
    }

    private interface OutputWriter {
        void a(int i10, long j6) throws ParserException;

        void b(long j6);

        boolean c(ExtractorInput extractorInput, long j6) throws IOException;
    }

    private static final class PassthroughOutputWriter implements OutputWriter {
        private final ExtractorOutput extractorOutput;
        private final Format format;
        private long outputFrameCount;
        private int pendingOutputBytes;
        private long startTimeUs;
        private final int targetSampleSizeBytes;
        private final TrackOutput trackOutput;
        private final WavFormat wavFormat;

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public void b(long j6) {
            this.startTimeUs = j6;
            this.pendingOutputBytes = 0;
            this.outputFrameCount = 0L;
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public void a(int i10, long j6) {
            this.extractorOutput.d(new WavSeekMap(this.wavFormat, 1, i10, j6));
            this.trackOutput.d(this.format);
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public boolean c(ExtractorInput extractorInput, long j6) throws IOException {
            int i10;
            int i11;
            long j10 = j6;
            while (j10 > 0 && (i10 = this.pendingOutputBytes) < (i11 = this.targetSampleSizeBytes)) {
                int iE = this.trackOutput.e(extractorInput, (int) Math.min(i11 - i10, j10), true);
                if (iE == -1) {
                    j10 = 0;
                } else {
                    this.pendingOutputBytes += iE;
                    j10 -= (long) iE;
                }
            }
            WavFormat wavFormat = this.wavFormat;
            int i12 = wavFormat.blockSize;
            int i13 = this.pendingOutputBytes / i12;
            if (i13 > 0) {
                long jX0 = this.startTimeUs + Util.X0(this.outputFrameCount, 1000000L, wavFormat.frameRateHz);
                int i14 = i13 * i12;
                int i15 = this.pendingOutputBytes - i14;
                this.trackOutput.f(jX0, 1, i14, i15, null);
                this.outputFrameCount += (long) i13;
                this.pendingOutputBytes = i15;
            }
            return j10 <= 0;
        }

        public PassthroughOutputWriter(ExtractorOutput extractorOutput, TrackOutput trackOutput, WavFormat wavFormat, String str, int i10) throws ParserException {
            this.extractorOutput = extractorOutput;
            this.trackOutput = trackOutput;
            this.wavFormat = wavFormat;
            int i11 = (wavFormat.numChannels * wavFormat.bitsPerSample) / 8;
            if (wavFormat.blockSize == i11) {
                int i12 = wavFormat.frameRateHz;
                int i13 = i12 * i11 * 8;
                int iMax = Math.max(i11, (i12 * i11) / 10);
                this.targetSampleSizeBytes = iMax;
                this.format = new Format.Builder().g0(str).I(i13).b0(i13).Y(iMax).J(wavFormat.numChannels).h0(wavFormat.frameRateHz).a0(i10).G();
                return;
            }
            throw ParserException.a("Expected block size: " + i11 + "; got: " + wavFormat.blockSize, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Extractor[] f() {
        return new Extractor[]{new WavExtractor()};
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }

    private void e() {
        Assertions.i(this.trackOutput);
        Util.j(this.extractorOutput);
    }

    private int j(ExtractorInput extractorInput) throws IOException {
        Assertions.g(this.dataEndPosition != -1);
        return ((OutputWriter) Assertions.e(this.outputWriter)).c(extractorInput, this.dataEndPosition - extractorInput.getPosition()) ? -1 : 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public void b(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 1);
        extractorOutput.endTracks();
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j6, long j10) {
        this.state = j6 == 0 ? 0 : 4;
        OutputWriter outputWriter = this.outputWriter;
        if (outputWriter != null) {
            outputWriter.b(j10);
        }
    }

    private void g(ExtractorInput extractorInput) throws IOException {
        boolean z6;
        if (extractorInput.getPosition() == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.g(z6);
        int i10 = this.dataStartPosition;
        if (i10 != -1) {
            extractorInput.skipFully(i10);
            this.state = 4;
        } else {
            if (WavHeaderReader.a(extractorInput)) {
                extractorInput.skipFully((int) (extractorInput.getPeekPosition() - extractorInput.getPosition()));
                this.state = 1;
                return;
            }
            throw ParserException.a("Unsupported or unrecognized wav file type.", null);
        }
    }

    private void h(ExtractorInput extractorInput) throws IOException {
        WavFormat wavFormatB = WavHeaderReader.b(extractorInput);
        int i10 = wavFormatB.formatType;
        if (i10 == 17) {
            this.outputWriter = new ImaAdPcmOutputWriter(this.extractorOutput, this.trackOutput, wavFormatB);
        } else if (i10 == 6) {
            this.outputWriter = new PassthroughOutputWriter(this.extractorOutput, this.trackOutput, wavFormatB, "audio/g711-alaw", -1);
        } else if (i10 == 7) {
            this.outputWriter = new PassthroughOutputWriter(this.extractorOutput, this.trackOutput, wavFormatB, "audio/g711-mlaw", -1);
        } else {
            int iA = WavUtil.a(i10, wavFormatB.bitsPerSample);
            if (iA != 0) {
                this.outputWriter = new PassthroughOutputWriter(this.extractorOutput, this.trackOutput, wavFormatB, "audio/raw", iA);
            } else {
                throw ParserException.d("Unsupported WAV format type: " + wavFormatB.formatType);
            }
        }
        this.state = 3;
    }

    private void i(ExtractorInput extractorInput) throws IOException {
        this.rf64SampleDataSize = WavHeaderReader.c(extractorInput);
        this.state = 2;
    }

    private void k(ExtractorInput extractorInput) throws IOException {
        Pair<Long, Long> pairE = WavHeaderReader.e(extractorInput);
        this.dataStartPosition = ((Long) pairE.first).intValue();
        long jLongValue = ((Long) pairE.second).longValue();
        long j6 = this.rf64SampleDataSize;
        if (j6 != -1 && jLongValue == 4294967295L) {
            jLongValue = j6;
        }
        this.dataEndPosition = ((long) this.dataStartPosition) + jLongValue;
        long length = extractorInput.getLength();
        if (length != -1 && this.dataEndPosition > length) {
            Log.i(TAG, "Data exceeds input length: " + this.dataEndPosition + ", " + length);
            this.dataEndPosition = length;
        }
        ((OutputWriter) Assertions.e(this.outputWriter)).a(this.dataStartPosition, this.dataEndPosition);
        this.state = 4;
    }

    @Override // androidx.media3.extractor.Extractor
    public int c(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        e();
        int i10 = this.state;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return j(extractorInput);
                        }
                        throw new IllegalStateException();
                    }
                    k(extractorInput);
                    return 0;
                }
                h(extractorInput);
                return 0;
            }
            i(extractorInput);
            return 0;
        }
        g(extractorInput);
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean d(ExtractorInput extractorInput) throws IOException {
        return WavHeaderReader.a(extractorInput);
    }
}
