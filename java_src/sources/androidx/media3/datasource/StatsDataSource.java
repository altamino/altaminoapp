package androidx.media3.datasource;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class StatsDataSource implements DataSource {
    private long bytesRead;
    private final DataSource dataSource;
    private Uri lastOpenedUri = Uri.EMPTY;
    private Map<String, List<String>> lastResponseHeaders = Collections.emptyMap();

    public long d() {
        return this.bytesRead;
    }

    public Uri e() {
        return this.lastOpenedUri;
    }

    public Map<String, List<String>> f() {
        return this.lastResponseHeaders;
    }

    public void g() {
        this.bytesRead = 0L;
    }

    @Override // androidx.media3.datasource.DataSource
    public long b(DataSpec dataSpec) throws IOException {
        this.lastOpenedUri = dataSpec.uri;
        this.lastResponseHeaders = Collections.emptyMap();
        long jB = this.dataSource.b(dataSpec);
        this.lastOpenedUri = (Uri) Assertions.e(getUri());
        this.lastResponseHeaders = getResponseHeaders();
        return jB;
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws IOException {
        this.dataSource.close();
    }

    @Override // androidx.media3.datasource.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.dataSource.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.DataSource
    @Nullable
    public Uri getUri() {
        return this.dataSource.getUri();
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.dataSource.read(bArr, i10, i11);
        if (i12 != -1) {
            this.bytesRead += (long) i12;
        }
        return i12;
    }

    public StatsDataSource(DataSource dataSource) {
        this.dataSource = (DataSource) Assertions.e(dataSource);
    }

    @Override // androidx.media3.datasource.DataSource
    public void c(TransferListener transferListener) {
        Assertions.e(transferListener);
        this.dataSource.c(transferListener);
    }
}
