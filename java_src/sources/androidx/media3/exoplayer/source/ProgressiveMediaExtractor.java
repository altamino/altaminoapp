package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.DataReader;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@UnstableApi
public interface ProgressiveMediaExtractor {

    public interface Factory {
        ProgressiveMediaExtractor a(PlayerId playerId);
    }

    long a();

    void b();

    void c(DataReader dataReader, Uri uri, Map<String, List<String>> map, long j6, long j10, ExtractorOutput extractorOutput) throws IOException;

    int d(PositionHolder positionHolder) throws IOException;

    void release();

    void seek(long j6, long j10);
}
