package androidx.media3.extractor.ts;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class DtsReader implements ElementaryStreamReader {
    private static final int HEADER_SIZE = 18;
    private static final int STATE_FINDING_SYNC = 0;
    private static final int STATE_READING_HEADER = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private int bytesRead;
    private Format format;
    private String formatId;

    @Nullable
    private final String language;
    private TrackOutput output;
    private long sampleDurationUs;
    private int sampleSize;
    private int syncBytes;
    private final ParsableByteArray headerScratchBytes = new ParsableByteArray(new byte[18]);
    private int state = 0;
    private long timeUs = -9223372036854775807L;

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
        this.syncBytes = 0;
        this.timeUs = -9223372036854775807L;
    }

    private void e() {
        byte[] bArrE = this.headerScratchBytes.e();
        if (this.format == null) {
            Format formatG = DtsUtil.g(bArrE, this.formatId, this.language, null);
            this.format = formatG;
            this.output.d(formatG);
        }
        this.sampleSize = DtsUtil.a(bArrE);
        this.sampleDurationUs = (int) ((((long) DtsUtil.f(bArrE)) * 1000000) / ((long) this.format.sampleRate));
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void a(ParsableByteArray parsableByteArray) {
        Assertions.i(this.output);
        while (parsableByteArray.a() > 0) {
            int i10 = this.state;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        throw new IllegalStateException();
                    }
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
                } else if (d(parsableByteArray, this.headerScratchBytes.e(), 18)) {
                    e();
                    this.headerScratchBytes.U(0);
                    this.output.b(this.headerScratchBytes, 18);
                    this.state = 2;
                }
            } else if (f(parsableByteArray)) {
                this.state = 1;
            }
        }
    }

    public DtsReader(@Nullable String str) {
        this.language = str;
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
        while (parsableByteArray.a() > 0) {
            int i10 = this.syncBytes << 8;
            this.syncBytes = i10;
            int iH = i10 | parsableByteArray.H();
            this.syncBytes = iH;
            if (DtsUtil.d(iH)) {
                byte[] bArrE = this.headerScratchBytes.e();
                int i11 = this.syncBytes;
                bArrE[0] = (byte) ((i11 >> 24) & 255);
                bArrE[1] = (byte) ((i11 >> 16) & 255);
                bArrE[2] = (byte) ((i11 >> 8) & 255);
                bArrE[3] = (byte) (i11 & 255);
                this.bytesRead = 4;
                this.syncBytes = 0;
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        this.formatId = trackIdGenerator.b();
        this.output = extractorOutput.track(trackIdGenerator.c(), 1);
    }
}
