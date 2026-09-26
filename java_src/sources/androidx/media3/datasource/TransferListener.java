package androidx.media3.datasource;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public interface TransferListener {
    void e(DataSource dataSource, DataSpec dataSpec, boolean z6);

    void f(DataSource dataSource, DataSpec dataSpec, boolean z6, int i10);

    void g(DataSource dataSource, DataSpec dataSpec, boolean z6);

    void h(DataSource dataSource, DataSpec dataSpec, boolean z6);
}
