package androidx.media3.exoplayer.source.chunk;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.TrackOutput;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class SingleSampleMediaChunk extends BaseMediaChunk {
    private boolean loadCompleted;
    private long nextLoadPosition;
    private final Format sampleFormat;
    private final int trackType;

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public void cancelLoad() {
    }

    @Override // androidx.media3.exoplayer.source.chunk.MediaChunk
    public boolean f() {
        return this.loadCompleted;
    }

    public SingleSampleMediaChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i10, @Nullable Object obj, long j6, long j10, long j11, int i11, Format format2) {
        super(dataSource, dataSpec, format, i10, obj, j6, j10, -9223372036854775807L, -9223372036854775807L, j11);
        this.trackType = i11;
        this.sampleFormat = format2;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public void load() throws IOException {
        BaseMediaChunkOutput baseMediaChunkOutputH = h();
        baseMediaChunkOutputH.b(0L);
        TrackOutput trackOutputTrack = baseMediaChunkOutputH.track(0, this.trackType);
        trackOutputTrack.d(this.sampleFormat);
        try {
            long jB = this.dataSource.b(this.dataSpec.e(this.nextLoadPosition));
            if (jB != -1) {
                jB += this.nextLoadPosition;
            }
            DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(this.dataSource, this.nextLoadPosition, jB);
            for (int iE = 0; iE != -1; iE = trackOutputTrack.e(defaultExtractorInput, Integer.MAX_VALUE, true)) {
                this.nextLoadPosition += (long) iE;
            }
            trackOutputTrack.f(this.startTimeUs, 1, (int) this.nextLoadPosition, 0, null);
            DataSourceUtil.a(this.dataSource);
            this.loadCompleted = true;
        } catch (Throwable th) {
            DataSourceUtil.a(this.dataSource);
            throw th;
        }
    }
}
