package androidx.media3.exoplayer.source.chunk;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.TrackOutput;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public interface ChunkExtractor {

    public interface Factory {
        @Nullable
        ChunkExtractor a(int i10, Format format, boolean z6, List<Format> list, @Nullable TrackOutput trackOutput, PlayerId playerId);
    }

    public interface TrackOutputProvider {
        TrackOutput track(int i10, int i11);
    }

    boolean a(ExtractorInput extractorInput) throws IOException;

    void b(@Nullable TrackOutputProvider trackOutputProvider, long j6, long j10);

    @Nullable
    ChunkIndex c();

    @Nullable
    Format[] e();

    void release();
}
