package androidx.media3.extractor.ts;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class Ac4Reader implements ElementaryStreamReader {
    private static final int STATE_FINDING_SYNC = 0;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private int bytesRead;
    private Format format;
    private String formatId;
    private boolean hasCRC;
    private final ParsableBitArray headerScratchBits;
    private final ParsableByteArray headerScratchBytes;

    @Nullable
    private final String language;
    private boolean lastByteWasAC;
    private TrackOutput output;
    private long sampleDurationUs;
    private int sampleSize;
    private int state;
    private long timeUs;

    public Ac4Reader() {
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
        this.lastByteWasAC = false;
        this.hasCRC = false;
        this.timeUs = -9223372036854775807L;
    }

    public Ac4Reader(@Nullable String str) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[16]);
        this.headerScratchBits = parsableBitArray;
        this.headerScratchBytes = new ParsableByteArray(parsableBitArray.data);
        this.state = 0;
        this.bytesRead = 0;
        this.lastByteWasAC = false;
        this.hasCRC = false;
        this.timeUs = -9223372036854775807L;
        this.language = str;
    }

    private void e() {
        this.headerScratchBits.p(0);
        Ac4Util.SyncFrameInfo syncFrameInfoD = Ac4Util.d(this.headerScratchBits);
        Format format = this.format;
        if (format == null || syncFrameInfoD.channelCount != format.channelCount || syncFrameInfoD.sampleRate != format.sampleRate || !"audio/ac4".equals(format.sampleMimeType)) {
            Format formatG = new Format.Builder().U(this.formatId).g0("audio/ac4").J(syncFrameInfoD.channelCount).h0(syncFrameInfoD.sampleRate).X(this.language).G();
            this.format = formatG;
            this.output.d(formatG);
        }
        this.sampleSize = syncFrameInfoD.frameSize;
        this.sampleDurationUs = (((long) syncFrameInfoD.sampleCount) * 1000000) / ((long) this.format.sampleRate);
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
                } else if (d(parsableByteArray, this.headerScratchBytes.e(), 16)) {
                    e();
                    this.headerScratchBytes.U(0);
                    this.output.b(this.headerScratchBytes, 16);
                    this.state = 2;
                }
            } else if (f(parsableByteArray)) {
                this.state = 1;
                this.headerScratchBytes.e()[0] = -84;
                this.headerScratchBytes.e()[1] = (byte) (this.hasCRC ? 65 : 64);
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
        boolean z6;
        while (true) {
            boolean z10 = false;
            if (parsableByteArray.a() <= 0) {
                return false;
            }
            if (!this.lastByteWasAC) {
                if (parsableByteArray.H() == 172) {
                    z10 = true;
                }
                this.lastByteWasAC = z10;
            } else {
                int iH = parsableByteArray.H();
                if (iH == 172) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                this.lastByteWasAC = z6;
                if (iH == 64 || iH == 65) {
                    if (iH == 65) {
                        z10 = true;
                    }
                    this.hasCRC = z10;
                    return true;
                }
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
