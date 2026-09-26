package androidx.media3.exoplayer.hls;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public interface HlsMediaChunkExtractor {
    boolean a(ExtractorInput extractorInput) throws IOException;

    void b(ExtractorOutput extractorOutput);

    void c();

    boolean d();

    boolean e();

    HlsMediaChunkExtractor f();
}
