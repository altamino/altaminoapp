package androidx.media3.extractor.ts;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.ExtractorOutput;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public interface ElementaryStreamReader {
    void a(ParsableByteArray parsableByteArray) throws ParserException;

    void b(long j6, int i10);

    void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator);

    void packetFinished();

    void seek();
}
