package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSpec;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class LoadEventInfo {
    private static final AtomicLong idSource = new AtomicLong();
    public final long bytesLoaded;
    public final DataSpec dataSpec;
    public final long elapsedRealtimeMs;
    public final long loadDurationMs;
    public final long loadTaskId;
    public final Map<String, List<String>> responseHeaders;
    public final Uri uri;

    public LoadEventInfo(long j6, DataSpec dataSpec, long j10) {
        this(j6, dataSpec, dataSpec.uri, Collections.emptyMap(), j10, 0L, 0L);
    }

    public static long a() {
        return idSource.getAndIncrement();
    }

    public LoadEventInfo(long j6, DataSpec dataSpec, Uri uri, Map<String, List<String>> map, long j10, long j11, long j12) {
        this.loadTaskId = j6;
        this.dataSpec = dataSpec;
        this.uri = uri;
        this.responseHeaders = map;
        this.elapsedRealtimeMs = j10;
        this.loadDurationMs = j11;
        this.bytesLoaded = j12;
    }
}
