package androidx.media3.datasource;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class PriorityDataSource implements DataSource {
    private final int priority;
    private final PriorityTaskManager priorityTaskManager;
    private final DataSource upstream;

    public static final class Factory implements DataSource.Factory {
        private final int priority;
        private final PriorityTaskManager priorityTaskManager;
        private final DataSource.Factory upstreamFactory;

        @Override // androidx.media3.datasource.DataSource.Factory
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PriorityDataSource createDataSource() {
            return new PriorityDataSource(this.upstreamFactory.createDataSource(), this.priorityTaskManager, this.priority);
        }

        public Factory(DataSource.Factory factory, PriorityTaskManager priorityTaskManager, int i10) {
            this.upstreamFactory = factory;
            this.priorityTaskManager = priorityTaskManager;
            this.priority = i10;
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public long b(DataSpec dataSpec) throws IOException {
        this.priorityTaskManager.c(this.priority);
        return this.upstream.b(dataSpec);
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws IOException {
        this.upstream.close();
    }

    @Override // androidx.media3.datasource.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.upstream.getResponseHeaders();
    }

    @Override // androidx.media3.datasource.DataSource
    @Nullable
    public Uri getUri() {
        return this.upstream.getUri();
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        this.priorityTaskManager.c(this.priority);
        return this.upstream.read(bArr, i10, i11);
    }

    public PriorityDataSource(DataSource dataSource, PriorityTaskManager priorityTaskManager, int i10) {
        this.upstream = (DataSource) Assertions.e(dataSource);
        this.priorityTaskManager = (PriorityTaskManager) Assertions.e(priorityTaskManager);
        this.priority = i10;
    }

    @Override // androidx.media3.datasource.DataSource
    public void c(TransferListener transferListener) {
        Assertions.e(transferListener);
        this.upstream.c(transferListener);
    }
}
