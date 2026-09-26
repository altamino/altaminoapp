package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.ExtractorOutput;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public interface SectionPayloadReader {
    void a(ParsableByteArray parsableByteArray);

    void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator);
}
