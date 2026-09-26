package androidx.media3.exoplayer.source.chunk;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.extractor.DefaultExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public class ContainerMediaChunk extends BaseMediaChunk {
    private final int chunkCount;
    private final ChunkExtractor chunkExtractor;
    private volatile boolean loadCanceled;
    private boolean loadCompleted;
    private long nextLoadPosition;
    private final long sampleOffsetUs;

    public ContainerMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i10, @Nullable Object obj, long j6, long j10, long j11, long j12, long j13, int i11, long j14, ChunkExtractor chunkExtractor) {
        super(dataSource, dataSpec, format, i10, obj, j6, j10, j11, j12, j13);
        this.chunkCount = i11;
        this.sampleOffsetUs = j14;
        this.chunkExtractor = chunkExtractor;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // androidx.media3.exoplayer.source.chunk.MediaChunk
    public long e() {
        return this.chunkIndex + ((long) this.chunkCount);
    }

    @Override // androidx.media3.exoplayer.source.chunk.MediaChunk
    public boolean f() {
        return this.loadCompleted;
    }

    protected ChunkExtractor.TrackOutputProvider j(BaseMediaChunkOutput baseMediaChunkOutput) {
        return baseMediaChunkOutput;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void load() throws IOException {
        if (this.nextLoadPosition == 0) {
            BaseMediaChunkOutput baseMediaChunkOutputH = h();
            baseMediaChunkOutputH.b(this.sampleOffsetUs);
            ChunkExtractor chunkExtractor = this.chunkExtractor;
            ChunkExtractor.TrackOutputProvider trackOutputProviderJ = j(baseMediaChunkOutputH);
            long j6 = this.clippedStartTimeUs;
            long j10 = j6 == -9223372036854775807L ? -9223372036854775807L : j6 - this.sampleOffsetUs;
            long j11 = this.clippedEndTimeUs;
            chunkExtractor.b(trackOutputProviderJ, j10, j11 == -9223372036854775807L ? -9223372036854775807L : j11 - this.sampleOffsetUs);
        }
        try {
            DataSpec dataSpecE = this.dataSpec.e(this.nextLoadPosition);
            StatsDataSource statsDataSource = this.dataSource;
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(statsDataSource, dataSpecE.position, statsDataSource.b(dataSpecE));
            do {
                try {
                    if (this.loadCanceled) {
                        break;
                    }
                } catch (Throwable th) {
                    this.nextLoadPosition = defaultExtractorInput.getPosition() - this.dataSpec.position;
                    throw th;
                }
            } while (this.chunkExtractor.a(defaultExtractorInput));
            this.nextLoadPosition = defaultExtractorInput.getPosition() - this.dataSpec.position;
            DataSourceUtil.a(this.dataSource);
            this.loadCompleted = !this.loadCanceled;
        } catch (Throwable th2) {
            DataSourceUtil.a(this.dataSource);
            throw th2;
        }
    }
}
