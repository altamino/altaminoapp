package androidx.media3.exoplayer.source.chunk;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.upstream.Loader;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public abstract class Chunk implements Loader.Loadable {
    protected final StatsDataSource dataSource;
    public final DataSpec dataSpec;
    public final long endTimeUs;
    public final long loadTaskId = LoadEventInfo.a();
    public final long startTimeUs;
    public final Format trackFormat;

    @Nullable
    public final Object trackSelectionData;
    public final int trackSelectionReason;
    public final int type;

    public final long b() {
        return this.endTimeUs - this.startTimeUs;
    }

    public final long a() {
        return this.dataSource.d();
    }

    public final Map<String, List<String>> c() {
        return this.dataSource.f();
    }

    public final Uri d() {
        return this.dataSource.e();
    }

    public Chunk(DataSource dataSource, DataSpec dataSpec, int i10, Format format, int i11, @Nullable Object obj, long j6, long j10) {
        this.dataSource = new StatsDataSource(dataSource);
        this.dataSpec = (DataSpec) Assertions.e(dataSpec);
        this.type = i10;
        this.trackFormat = format;
        this.trackSelectionReason = i11;
        this.trackSelectionData = obj;
        this.startTimeUs = j6;
        this.endTimeUs = j10;
    }
}
