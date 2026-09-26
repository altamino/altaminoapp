package androidx.media3.exoplayer.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceInputStream;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class ParsingLoadable<T> implements Loader.Loadable {
    private final StatsDataSource dataSource;
    public final DataSpec dataSpec;
    public final long loadTaskId;
    private final Parser<? extends T> parser;

    @Nullable
    private volatile T result;
    public final int type;

    public interface Parser<T> {
        T parse(Uri uri, InputStream inputStream) throws IOException;
    }

    public ParsingLoadable(DataSource dataSource, Uri uri, int i10, Parser<? extends T> parser) {
        this(dataSource, new DataSpec.Builder().i(uri).b(1).a(), i10, parser);
    }

    @Nullable
    public final T c() {
        return this.result;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void cancelLoad() {
    }

    public static <T> T e(DataSource dataSource, Parser<? extends T> parser, DataSpec dataSpec, int i10) throws IOException {
        ParsingLoadable parsingLoadable = new ParsingLoadable(dataSource, dataSpec, i10, parser);
        parsingLoadable.load();
        return (T) Assertions.e(parsingLoadable.c());
    }

    public long a() {
        return this.dataSource.d();
    }

    public Map<String, List<String>> b() {
        return this.dataSource.f();
    }

    public Uri d() {
        return this.dataSource.e();
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void load() throws IOException {
        this.dataSource.g();
        DataSourceInputStream dataSourceInputStream = new DataSourceInputStream(this.dataSource, this.dataSpec);
        try {
            dataSourceInputStream.h();
            this.result = this.parser.parse((Uri) Assertions.e(this.dataSource.getUri()), dataSourceInputStream);
        } finally {
            Util.n(dataSourceInputStream);
        }
    }

    public ParsingLoadable(DataSource dataSource, DataSpec dataSpec, int i10, Parser<? extends T> parser) {
        this.dataSource = new StatsDataSource(dataSource);
        this.dataSpec = dataSpec;
        this.type = i10;
        this.parser = parser;
        this.loadTaskId = LoadEventInfo.a();
    }
}
