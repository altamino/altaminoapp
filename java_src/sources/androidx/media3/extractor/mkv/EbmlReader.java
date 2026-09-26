package androidx.media3.extractor.mkv;

import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
interface EbmlReader {
    boolean a(ExtractorInput extractorInput) throws IOException;

    void b(EbmlProcessor ebmlProcessor);

    void reset();
}
