package androidx.media3.exoplayer.source.chunk;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public abstract class MediaChunk extends Chunk {
    public final long chunkIndex;

    public MediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i10, @Nullable Object obj, long j6, long j10, long j11) {
        super(dataSource, dataSpec, 1, format, i10, obj, j6, j10);
        Assertions.e(format);
        this.chunkIndex = j11;
    }

    public long e() {
        long j6 = this.chunkIndex;
        if (j6 != -1) {
            return 1 + j6;
        }
        return -1L;
    }

    public abstract boolean f();
}
