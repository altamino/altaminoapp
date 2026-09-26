package androidx.media3.extractor.ts;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class MpegAudioReader implements ElementaryStreamReader {
    private static final int HEADER_SIZE = 4;
    private static final int STATE_FINDING_HEADER = 0;
    private static final int STATE_READING_FRAME = 2;
    private static final int STATE_READING_HEADER = 1;
    private String formatId;
    private int frameBytesRead;
    private long frameDurationUs;
    private int frameSize;
    private boolean hasOutputFormat;
    private final MpegAudioUtil.Header header;
    private final ParsableByteArray headerScratch;

    @Nullable
    private final String language;
    private boolean lastByteWasFF;
    private TrackOutput output;
    private int state;
    private long timeUs;

    public MpegAudioReader() {
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
        this.frameBytesRead = 0;
        this.lastByteWasFF = false;
        this.timeUs = -9223372036854775807L;
    }

    public MpegAudioReader(@Nullable String str) {
        this.state = 0;
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        this.headerScratch = parsableByteArray;
        parsableByteArray.e()[0] = -1;
        this.header = new MpegAudioUtil.Header();
        this.timeUs = -9223372036854775807L;
        this.language = str;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void a(ParsableByteArray parsableByteArray) {
        Assertions.i(this.output);
        while (parsableByteArray.a() > 0) {
            int i10 = this.state;
            if (i10 == 0) {
                d(parsableByteArray);
            } else if (i10 == 1) {
                f(parsableByteArray);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException();
                }
                e(parsableByteArray);
            }
        }
    }

    private void d(ParsableByteArray parsableByteArray) {
        boolean z6;
        boolean z10;
        byte[] bArrE = parsableByteArray.e();
        int iG = parsableByteArray.g();
        for (int iF = parsableByteArray.f(); iF < iG; iF++) {
            byte b7 = bArrE[iF];
            if ((b7 & 255) == 255) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (this.lastByteWasFF && (b7 & 224) == 224) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.lastByteWasFF = z6;
            if (z10) {
                parsableByteArray.U(iF + 1);
                this.lastByteWasFF = false;
                this.headerScratch.e()[1] = bArrE[iF];
                this.frameBytesRead = 2;
                this.state = 1;
                return;
            }
        }
        parsableByteArray.U(iG);
    }

    private void e(ParsableByteArray parsableByteArray) {
        int iMin = Math.min(parsableByteArray.a(), this.frameSize - this.frameBytesRead);
        this.output.b(parsableByteArray, iMin);
        int i10 = this.frameBytesRead + iMin;
        this.frameBytesRead = i10;
        int i11 = this.frameSize;
        if (i10 < i11) {
            return;
        }
        long j6 = this.timeUs;
        if (j6 != -9223372036854775807L) {
            this.output.f(j6, 1, i11, 0, null);
            this.timeUs += this.frameDurationUs;
        }
        this.frameBytesRead = 0;
        this.state = 0;
    }

    private void f(ParsableByteArray parsableByteArray) {
        int iMin = Math.min(parsableByteArray.a(), 4 - this.frameBytesRead);
        parsableByteArray.l(this.headerScratch.e(), this.frameBytesRead, iMin);
        int i10 = this.frameBytesRead + iMin;
        this.frameBytesRead = i10;
        if (i10 < 4) {
            return;
        }
        this.headerScratch.U(0);
        if (!this.header.a(this.headerScratch.q())) {
            this.frameBytesRead = 0;
            this.state = 1;
            return;
        }
        MpegAudioUtil.Header header = this.header;
        this.frameSize = header.frameSize;
        if (!this.hasOutputFormat) {
            this.frameDurationUs = (((long) header.samplesPerFrame) * 1000000) / ((long) header.sampleRate);
            this.output.d(new Format.Builder().U(this.formatId).g0(this.header.mimeType).Y(4096).J(this.header.channels).h0(this.header.sampleRate).X(this.language).G());
            this.hasOutputFormat = true;
        }
        this.headerScratch.U(0);
        this.output.b(this.headerScratch, 4);
        this.state = 2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        this.formatId = trackIdGenerator.b();
        this.output = extractorOutput.track(trackIdGenerator.c(), 1);
    }
}
