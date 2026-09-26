package androidx.media3.extractor.ts;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class Ac3Reader implements ElementaryStreamReader {
    private static final int HEADER_SIZE = 128;
    private static final int STATE_FINDING_SYNC = 0;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private int bytesRead;
    private Format format;
    private String formatId;
    private final ParsableBitArray headerScratchBits;
    private final ParsableByteArray headerScratchBytes;

    @Nullable
    private final String language;
    private boolean lastByteWas0B;
    private TrackOutput output;
    private long sampleDurationUs;
    private int sampleSize;
    private int state;
    private long timeUs;

    public Ac3Reader() {
        this(null);
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
        this.bytesRead = 0;
        this.lastByteWas0B = false;
        this.timeUs = -9223372036854775807L;
    }

    public Ac3Reader(@Nullable String str) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[128]);
        this.headerScratchBits = parsableBitArray;
        this.headerScratchBytes = new ParsableByteArray(parsableBitArray.data);
        this.state = 0;
        this.timeUs = -9223372036854775807L;
        this.language = str;
    }

    private void e() {
        this.headerScratchBits.p(0);
        Ac3Util.SyncFrameInfo syncFrameInfoF = Ac3Util.f(this.headerScratchBits);
        Format format = this.format;
        if (format == null || syncFrameInfoF.channelCount != format.channelCount || syncFrameInfoF.sampleRate != format.sampleRate || !Util.c(syncFrameInfoF.mimeType, format.sampleMimeType)) {
            Format.Builder builderB0 = new Format.Builder().U(this.formatId).g0(syncFrameInfoF.mimeType).J(syncFrameInfoF.channelCount).h0(syncFrameInfoF.sampleRate).X(this.language).b0(syncFrameInfoF.bitrate);
            if ("audio/ac3".equals(syncFrameInfoF.mimeType)) {
                builderB0.I(syncFrameInfoF.bitrate);
            }
            Format formatG = builderB0.G();
            this.format = formatG;
            this.output.d(formatG);
        }
        this.sampleSize = syncFrameInfoF.frameSize;
        this.sampleDurationUs = (((long) syncFrameInfoF.sampleCount) * 1000000) / ((long) this.format.sampleRate);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void a(ParsableByteArray parsableByteArray) {
        Assertions.i(this.output);
        while (parsableByteArray.a() > 0) {
            int i10 = this.state;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        int iMin = Math.min(parsableByteArray.a(), this.sampleSize - this.bytesRead);
                        this.output.b(parsableByteArray, iMin);
                        int i11 = this.bytesRead + iMin;
                        this.bytesRead = i11;
                        int i12 = this.sampleSize;
                        if (i11 == i12) {
                            long j6 = this.timeUs;
                            if (j6 != -9223372036854775807L) {
                                this.output.f(j6, 1, i12, 0, null);
                                this.timeUs += this.sampleDurationUs;
                            }
                            this.state = 0;
                        }
                    }
                } else if (d(parsableByteArray, this.headerScratchBytes.e(), 128)) {
                    e();
                    this.headerScratchBytes.U(0);
                    this.output.b(this.headerScratchBytes, 128);
                    this.state = 2;
                }
            } else if (f(parsableByteArray)) {
                this.state = 1;
                this.headerScratchBytes.e()[0] = com.google.common.base.c.VT;
                this.headerScratchBytes.e()[1] = 119;
                this.bytesRead = 2;
            }
        }
    }

    private boolean d(ParsableByteArray parsableByteArray, byte[] bArr, int i10) {
        int iMin = Math.min(parsableByteArray.a(), i10 - this.bytesRead);
        parsableByteArray.l(bArr, this.bytesRead, iMin);
        int i11 = this.bytesRead + iMin;
        this.bytesRead = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private boolean f(ParsableByteArray parsableByteArray) {
        while (true) {
            boolean z6 = false;
            if (parsableByteArray.a() <= 0) {
                return false;
            }
            if (!this.lastByteWas0B) {
                if (parsableByteArray.H() == 11) {
                    z6 = true;
                }
                this.lastByteWas0B = z6;
            } else {
                int iH = parsableByteArray.H();
                if (iH == 119) {
                    this.lastByteWas0B = false;
                    return true;
                }
                if (iH == 11) {
                    z6 = true;
                }
                this.lastByteWas0B = z6;
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        this.formatId = trackIdGenerator.b();
        this.output = extractorOutput.track(trackIdGenerator.c(), 1);
    }
}
