package androidx.media3.exoplayer.hls;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public interface HlsExtractorFactory {
    public static final HlsExtractorFactory DEFAULT = new DefaultHlsExtractorFactory();

    HlsMediaChunkExtractor a(Uri uri, Format format, @Nullable List<Format> list, TimestampAdjuster timestampAdjuster, Map<String, List<String>> map, ExtractorInput extractorInput, PlayerId playerId) throws IOException;
}
