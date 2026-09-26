package androidx.media3.exoplayer.source.chunk;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public interface ChunkSource {
    long a(long j6, SeekParameters seekParameters);

    boolean c(Chunk chunk, boolean z6, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, LoadErrorHandlingPolicy loadErrorHandlingPolicy);

    void e(Chunk chunk);

    boolean g(long j6, Chunk chunk, List<? extends MediaChunk> list);

    int getPreferredQueueSize(long j6, List<? extends MediaChunk> list);

    void h(long j6, long j10, List<? extends MediaChunk> list, ChunkHolder chunkHolder);

    void maybeThrowError() throws IOException;

    void release();
}
