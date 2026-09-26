package androidx.media3.exoplayer.source.chunk;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public abstract class BaseMediaChunk extends MediaChunk {
    public final long clippedEndTimeUs;
    public final long clippedStartTimeUs;
    private int[] firstSampleIndices;
    private BaseMediaChunkOutput output;

    public BaseMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i10, @Nullable Object obj, long j6, long j10, long j11, long j12, long j13) {
        super(dataSource, dataSpec, format, i10, obj, j6, j10, j13);
        this.clippedStartTimeUs = j11;
        this.clippedEndTimeUs = j12;
    }

    public final int g(int i10) {
        return ((int[]) Assertions.i(this.firstSampleIndices))[i10];
    }

    protected final BaseMediaChunkOutput h() {
        return (BaseMediaChunkOutput) Assertions.i(this.output);
    }

    public void i(BaseMediaChunkOutput baseMediaChunkOutput) {
        this.output = baseMediaChunkOutput;
        this.firstSampleIndices = baseMediaChunkOutput.a();
    }
}
