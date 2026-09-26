package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.CeaUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
final class UserDataReader {
    private static final int USER_DATA_START_CODE = 434;
    private final List<Format> closedCaptionFormats;
    private final TrackOutput[] outputs;

    public void b(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        for (int i10 = 0; i10 < this.outputs.length; i10++) {
            trackIdGenerator.a();
            TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.c(), 3);
            Format format = this.closedCaptionFormats.get(i10);
            String str = format.sampleMimeType;
            Assertions.b("application/cea-608".equals(str) || "application/cea-708".equals(str), "Invalid closed caption MIME type provided: " + str);
            trackOutputTrack.d(new Format.Builder().U(trackIdGenerator.b()).g0(str).i0(format.selectionFlags).X(format.language).H(format.accessibilityChannel).V(format.initializationData).G());
            this.outputs[i10] = trackOutputTrack;
        }
    }

    public UserDataReader(List<Format> list) {
        this.closedCaptionFormats = list;
        this.outputs = new TrackOutput[list.size()];
    }

    public void a(long j6, ParsableByteArray parsableByteArray) {
        if (parsableByteArray.a() < 9) {
            return;
        }
        int iQ = parsableByteArray.q();
        int iQ2 = parsableByteArray.q();
        int iH = parsableByteArray.H();
        if (iQ == USER_DATA_START_CODE && iQ2 == 1195456820 && iH == 3) {
            CeaUtil.b(j6, parsableByteArray, this.outputs);
        }
    }
}
