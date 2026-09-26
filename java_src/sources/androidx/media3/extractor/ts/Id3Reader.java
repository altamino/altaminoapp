package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class Id3Reader implements ElementaryStreamReader {
    private static final String TAG = "Id3Reader";
    private TrackOutput output;
    private int sampleBytesRead;
    private int sampleSize;
    private boolean writingSample;
    private final ParsableByteArray id3Header = new ParsableByteArray(10);
    private long sampleTimeUs = -9223372036854775807L;

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void b(long j6, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.writingSample = true;
        if (j6 != -9223372036854775807L) {
            this.sampleTimeUs = j6;
        }
        this.sampleSize = 0;
        this.sampleBytesRead = 0;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.writingSample = false;
        this.sampleTimeUs = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void a(ParsableByteArray parsableByteArray) {
        Assertions.i(this.output);
        if (this.writingSample) {
            int iA = parsableByteArray.a();
            int i10 = this.sampleBytesRead;
            if (i10 < 10) {
                int iMin = Math.min(iA, 10 - i10);
                System.arraycopy(parsableByteArray.e(), parsableByteArray.f(), this.id3Header.e(), this.sampleBytesRead, iMin);
                if (this.sampleBytesRead + iMin == 10) {
                    this.id3Header.U(0);
                    if (73 != this.id3Header.H() || 68 != this.id3Header.H() || 51 != this.id3Header.H()) {
                        Log.i(TAG, "Discarding invalid ID3 tag");
                        this.writingSample = false;
                        return;
                    } else {
                        this.id3Header.V(3);
                        this.sampleSize = this.id3Header.G() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iA, this.sampleSize - this.sampleBytesRead);
            this.output.b(parsableByteArray, iMin2);
            this.sampleBytesRead += iMin2;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
        int i10;
        Assertions.i(this.output);
        if (this.writingSample && (i10 = this.sampleSize) != 0 && this.sampleBytesRead == i10) {
            long j6 = this.sampleTimeUs;
            if (j6 != -9223372036854775807L) {
                this.output.f(j6, 1, i10, 0, null);
            }
            this.writingSample = false;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.c(), 5);
        this.output = trackOutputTrack;
        trackOutputTrack.d(new Format.Builder().U(trackIdGenerator.b()).g0("application/id3").G());
    }
}
