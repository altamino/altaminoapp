package androidx.media3.extractor.ogg;

import androidx.annotation.Nullable;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.SeekMap;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
interface OggSeeker {
    long a(ExtractorInput extractorInput) throws IOException;

    @Nullable
    SeekMap createSeekMap();

    void startSeek(long j6);
}
