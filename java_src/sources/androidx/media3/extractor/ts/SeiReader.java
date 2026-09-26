package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.CeaUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class SeiReader {
    private final List<Format> closedCaptionFormats;
    private final TrackOutput[] outputs;

    public void b(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        for (int i10 = 0; i10 < this.outputs.length; i10++) {
            trackIdGenerator.a();
            TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.c(), 3);
            Format format = this.closedCaptionFormats.get(i10);
            String str = format.sampleMimeType;
            Assertions.b("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption MIME type provided: " + str);
            String strB = format.id;
            if (strB == null) {
                strB = trackIdGenerator.b();
            }
            trackOutputTrack.d(new Format.Builder().U(strB).g0(str).i0(format.selectionFlags).X(format.language).H(format.accessibilityChannel).V(format.initializationData).G());
            this.outputs[i10] = trackOutputTrack;
        }
    }

    public void a(long j6, ParsableByteArray parsableByteArray) {
        CeaUtil.a(j6, parsableByteArray, this.outputs);
    }

    public SeiReader(List<Format> list) {
        this.closedCaptionFormats = list;
        this.outputs = new TrackOutput[list.size()];
    }
}
