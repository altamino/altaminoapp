package androidx.media3.extractor.ts;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.DummyTrackOutput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import java.util.Arrays;
import java.util.Collections;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class AdtsReader implements ElementaryStreamReader {
    private static final int CRC_SIZE = 2;
    private static final int HEADER_SIZE = 5;
    private static final int ID3_HEADER_SIZE = 10;
    private static final byte[] ID3_IDENTIFIER = {73, 68, TarConstants.LF_CHR};
    private static final int ID3_SIZE_OFFSET = 6;
    private static final int MATCH_STATE_FF = 512;
    private static final int MATCH_STATE_I = 768;
    private static final int MATCH_STATE_ID = 1024;
    private static final int MATCH_STATE_START = 256;
    private static final int MATCH_STATE_VALUE_SHIFT = 8;
    private static final int STATE_CHECKING_ADTS_HEADER = 1;
    private static final int STATE_FINDING_SAMPLE = 0;
    private static final int STATE_READING_ADTS_HEADER = 3;
    private static final int STATE_READING_ID3_HEADER = 2;
    private static final int STATE_READING_SAMPLE = 4;
    private static final String TAG = "AdtsReader";
    private static final int VERSION_UNSET = -1;
    private final ParsableBitArray adtsScratch;
    private int bytesRead;
    private int currentFrameVersion;
    private TrackOutput currentOutput;
    private long currentSampleDuration;
    private final boolean exposeId3;
    private int firstFrameSampleRateIndex;
    private int firstFrameVersion;
    private String formatId;
    private boolean foundFirstFrame;
    private boolean hasCrc;
    private boolean hasOutputFormat;
    private final ParsableByteArray id3HeaderBuffer;
    private TrackOutput id3Output;

    @Nullable
    private final String language;
    private int matchState;
    private TrackOutput output;
    private long sampleDurationUs;
    private int sampleSize;
    private int state;
    private long timeUs;

    public AdtsReader(boolean z6) {
        this(z6, null);
    }

    public static boolean k(int i10) {
        return (i10 & 65526) == 65520;
    }

    private void o() {
        this.foundFirstFrame = false;
        q();
    }

    private void p() {
        this.state = 1;
        this.bytesRead = 0;
    }

    private void q() {
        this.state = 0;
        this.bytesRead = 0;
        this.matchState = 256;
    }

    private void r() {
        this.state = 3;
        this.bytesRead = 0;
    }

    private void s() {
        this.state = 2;
        this.bytesRead = ID3_IDENTIFIER.length;
        this.sampleSize = 0;
        this.id3HeaderBuffer.U(0);
    }

    private void t(TrackOutput trackOutput, long j6, int i10, int i11) {
        this.state = 4;
        this.bytesRead = i10;
        this.currentOutput = trackOutput;
        this.currentSampleDuration = j6;
        this.sampleSize = i11;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void b(long j6, int i10) {
        if (j6 != -9223372036854775807L) {
            this.timeUs = j6;
        }
    }

    public long i() {
        return this.sampleDurationUs;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    public AdtsReader(boolean z6, @Nullable String str) {
        this.adtsScratch = new ParsableBitArray(new byte[7]);
        this.id3HeaderBuffer = new ParsableByteArray(Arrays.copyOf(ID3_IDENTIFIER, 10));
        q();
        this.firstFrameVersion = -1;
        this.firstFrameSampleRateIndex = -1;
        this.sampleDurationUs = -9223372036854775807L;
        this.timeUs = -9223372036854775807L;
        this.exposeId3 = z6;
        this.language = str;
    }

    private void d() {
        Assertions.e(this.output);
        Util.j(this.currentOutput);
        Util.j(this.id3Output);
    }

    private boolean f(ParsableByteArray parsableByteArray, int i10) {
        parsableByteArray.U(i10 + 1);
        if (!u(parsableByteArray, this.adtsScratch.data, 1)) {
            return false;
        }
        this.adtsScratch.p(4);
        int iH = this.adtsScratch.h(1);
        int i11 = this.firstFrameVersion;
        if (i11 != -1 && iH != i11) {
            return false;
        }
        if (this.firstFrameSampleRateIndex != -1) {
            if (!u(parsableByteArray, this.adtsScratch.data, 1)) {
                return true;
            }
            this.adtsScratch.p(2);
            if (this.adtsScratch.h(4) != this.firstFrameSampleRateIndex) {
                return false;
            }
            parsableByteArray.U(i10 + 2);
        }
        if (!u(parsableByteArray, this.adtsScratch.data, 4)) {
            return true;
        }
        this.adtsScratch.p(14);
        int iH2 = this.adtsScratch.h(13);
        if (iH2 < 7) {
            return false;
        }
        byte[] bArrE = parsableByteArray.e();
        int iG = parsableByteArray.g();
        int i12 = i10 + iH2;
        if (i12 >= iG) {
            return true;
        }
        byte b7 = bArrE[i12];
        if (b7 == -1) {
            int i13 = i12 + 1;
            if (i13 == iG) {
                return true;
            }
            return j((byte) -1, bArrE[i13]) && ((bArrE[i13] & 8) >> 3) == iH;
        }
        if (b7 != 73) {
            return false;
        }
        int i14 = i12 + 1;
        if (i14 == iG) {
            return true;
        }
        if (bArrE[i14] != 68) {
            return false;
        }
        int i15 = i12 + 2;
        return i15 == iG || bArrE[i15] == 51;
    }

    private boolean j(byte b7, byte b10) {
        return k(((b7 & 255) << 8) | (b10 & 255));
    }

    private void l() throws ParserException {
        this.adtsScratch.p(0);
        if (this.hasOutputFormat) {
            this.adtsScratch.r(10);
        } else {
            int i10 = 2;
            int iH = this.adtsScratch.h(2) + 1;
            if (iH != 2) {
                Log.i(TAG, "Detected audio object type: " + iH + ", but assuming AAC LC.");
            } else {
                i10 = iH;
            }
            this.adtsScratch.r(5);
            byte[] bArrB = AacUtil.b(i10, this.firstFrameSampleRateIndex, this.adtsScratch.h(3));
            AacUtil.Config configF = AacUtil.f(bArrB);
            Format formatG = new Format.Builder().U(this.formatId).g0("audio/mp4a-latm").K(configF.codecs).J(configF.channelCount).h0(configF.sampleRateHz).V(Collections.singletonList(bArrB)).X(this.language).G();
            this.sampleDurationUs = 1024000000 / ((long) formatG.sampleRate);
            this.output.d(formatG);
            this.hasOutputFormat = true;
        }
        this.adtsScratch.r(4);
        int iH2 = this.adtsScratch.h(13);
        int i11 = iH2 - 7;
        if (this.hasCrc) {
            i11 = iH2 - 9;
        }
        t(this.output, this.sampleDurationUs, 0, i11);
    }

    private void m() {
        this.id3Output.b(this.id3HeaderBuffer, 10);
        this.id3HeaderBuffer.U(6);
        t(this.id3Output, 0L, 10, this.id3HeaderBuffer.G() + 10);
    }

    private void e(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.a() == 0) {
            return;
        }
        this.adtsScratch.data[0] = parsableByteArray.e()[parsableByteArray.f()];
        this.adtsScratch.p(2);
        int iH = this.adtsScratch.h(4);
        int i10 = this.firstFrameSampleRateIndex;
        if (i10 != -1 && iH != i10) {
            o();
            return;
        }
        if (!this.foundFirstFrame) {
            this.foundFirstFrame = true;
            this.firstFrameVersion = this.currentFrameVersion;
            this.firstFrameSampleRateIndex = iH;
        }
        r();
    }

    private boolean g(ParsableByteArray parsableByteArray, byte[] bArr, int i10) {
        int iMin = Math.min(parsableByteArray.a(), i10 - this.bytesRead);
        parsableByteArray.l(bArr, this.bytesRead, iMin);
        int i11 = this.bytesRead + iMin;
        this.bytesRead = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private void h(ParsableByteArray parsableByteArray) {
        byte[] bArrE = parsableByteArray.e();
        int iF = parsableByteArray.f();
        int iG = parsableByteArray.g();
        while (iF < iG) {
            int i10 = iF + 1;
            byte b7 = bArrE[iF];
            int i11 = b7 & 255;
            if (this.matchState == 512 && j((byte) -1, (byte) i11) && (this.foundFirstFrame || f(parsableByteArray, iF - 1))) {
                this.currentFrameVersion = (b7 & 8) >> 3;
                boolean z6 = true;
                if ((b7 & 1) != 0) {
                    z6 = false;
                }
                this.hasCrc = z6;
                if (!this.foundFirstFrame) {
                    p();
                } else {
                    r();
                }
                parsableByteArray.U(i10);
                return;
            }
            int i12 = this.matchState;
            int i13 = i11 | i12;
            if (i13 != 329) {
                if (i13 != 511) {
                    if (i13 != 836) {
                        if (i13 != 1075) {
                            if (i12 != 256) {
                                this.matchState = 256;
                            }
                        } else {
                            s();
                            parsableByteArray.U(i10);
                            return;
                        }
                    } else {
                        this.matchState = 1024;
                    }
                } else {
                    this.matchState = 512;
                }
            } else {
                this.matchState = MATCH_STATE_I;
            }
            iF = i10;
        }
        parsableByteArray.U(iF);
    }

    private void n(ParsableByteArray parsableByteArray) {
        int iMin = Math.min(parsableByteArray.a(), this.sampleSize - this.bytesRead);
        this.currentOutput.b(parsableByteArray, iMin);
        int i10 = this.bytesRead + iMin;
        this.bytesRead = i10;
        int i11 = this.sampleSize;
        if (i10 == i11) {
            long j6 = this.timeUs;
            if (j6 != -9223372036854775807L) {
                this.currentOutput.f(j6, 1, i11, 0, null);
                this.timeUs += this.currentSampleDuration;
            }
            q();
        }
    }

    private boolean u(ParsableByteArray parsableByteArray, byte[] bArr, int i10) {
        if (parsableByteArray.a() < i10) {
            return false;
        }
        parsableByteArray.l(bArr, 0, i10);
        return true;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void a(ParsableByteArray parsableByteArray) throws ParserException {
        int i10;
        d();
        while (parsableByteArray.a() > 0) {
            int i11 = this.state;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 == 4) {
                                n(parsableByteArray);
                            } else {
                                throw new IllegalStateException();
                            }
                        } else {
                            if (this.hasCrc) {
                                i10 = 7;
                            } else {
                                i10 = 5;
                            }
                            if (g(parsableByteArray, this.adtsScratch.data, i10)) {
                                l();
                            }
                        }
                    } else if (g(parsableByteArray, this.id3HeaderBuffer.e(), 10)) {
                        m();
                    }
                } else {
                    e(parsableByteArray);
                }
            } else {
                h(parsableByteArray);
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        this.formatId = trackIdGenerator.b();
        TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.c(), 1);
        this.output = trackOutputTrack;
        this.currentOutput = trackOutputTrack;
        if (this.exposeId3) {
            trackIdGenerator.a();
            TrackOutput trackOutputTrack2 = extractorOutput.track(trackIdGenerator.c(), 5);
            this.id3Output = trackOutputTrack2;
            trackOutputTrack2.d(new Format.Builder().U(trackIdGenerator.b()).g0("application/id3").G());
            return;
        }
        this.id3Output = new DummyTrackOutput();
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.timeUs = -9223372036854775807L;
        o();
    }
}
