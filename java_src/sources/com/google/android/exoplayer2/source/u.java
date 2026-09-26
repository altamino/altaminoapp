package com.google.android.exoplayer2.source;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes6.dex */
public final class u {
    private static final AtomicLong idSource = new AtomicLong();
    public final long bytesLoaded;
    public final com.google.android.exoplayer2.upstream.o dataSpec;
    public final long elapsedRealtimeMs;
    public final long loadDurationMs;
    public final long loadTaskId;
    public final Map<String, List<String>> responseHeaders;
    public final Uri uri;

    public u(long j6, com.google.android.exoplayer2.upstream.o oVar, long j10) {
        this(j6, oVar, oVar.uri, Collections.emptyMap(), j10, 0L, 0L);
    }

    public static long a() {
        return idSource.getAndIncrement();
    }

    public u(long j6, com.google.android.exoplayer2.upstream.o oVar, Uri uri, Map<String, List<String>> map, long j10, long j11, long j12) {
        this.loadTaskId = j6;
        this.dataSpec = oVar;
        this.uri = uri;
        this.responseHeaders = map;
        this.elapsedRealtimeMs = j10;
        this.loadDurationMs = j11;
        this.bytesLoaded = j12;
    }
}
