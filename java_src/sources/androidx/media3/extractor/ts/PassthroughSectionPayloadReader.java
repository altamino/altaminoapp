package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class PassthroughSectionPayloadReader implements SectionPayloadReader {
    private Format format;
    private TrackOutput output;
    private TimestampAdjuster timestampAdjuster;

    private void c() {
        Assertions.i(this.timestampAdjuster);
        Util.j(this.output);
    }

    @Override // androidx.media3.extractor.ts.SectionPayloadReader
    public void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.timestampAdjuster = timestampAdjuster;
        trackIdGenerator.a();
        TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.c(), 5);
        this.output = trackOutputTrack;
        trackOutputTrack.d(this.format);
    }

    public PassthroughSectionPayloadReader(String str) {
        this.format = new Format.Builder().g0(str).G();
    }

    @Override // androidx.media3.extractor.ts.SectionPayloadReader
    public void a(ParsableByteArray parsableByteArray) {
        c();
        long jD = this.timestampAdjuster.d();
        long jE = this.timestampAdjuster.e();
        if (jD != -9223372036854775807L && jE != -9223372036854775807L) {
            Format format = this.format;
            if (jE != format.subsampleOffsetUs) {
                Format formatG = format.b().k0(jE).G();
                this.format = formatG;
                this.output.d(formatG);
            }
            int iA = parsableByteArray.a();
            this.output.b(parsableByteArray, iA);
            this.output.f(jD, 1, iA, 0, null);
        }
    }
}
