package androidx.media3.datasource;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public abstract class BaseDataSource implements DataSource {

    @Nullable
    private DataSpec dataSpec;
    private final boolean isNetwork;
    private int listenerCount;
    private final ArrayList<TransferListener> listeners = new ArrayList<>(1);

    protected final void f(DataSpec dataSpec) {
        for (int i10 = 0; i10 < this.listenerCount; i10++) {
            this.listeners.get(i10).h(this, dataSpec, this.isNetwork);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public /* synthetic */ Map getResponseHeaders() {
        return a.a(this);
    }

    protected final void d(int i10) {
        DataSpec dataSpec = (DataSpec) Util.j(this.dataSpec);
        for (int i11 = 0; i11 < this.listenerCount; i11++) {
            this.listeners.get(i11).f(this, dataSpec, this.isNetwork, i10);
        }
    }

    protected final void e() {
        DataSpec dataSpec = (DataSpec) Util.j(this.dataSpec);
        for (int i10 = 0; i10 < this.listenerCount; i10++) {
            this.listeners.get(i10).g(this, dataSpec, this.isNetwork);
        }
        this.dataSpec = null;
    }

    protected final void g(DataSpec dataSpec) {
        this.dataSpec = dataSpec;
        for (int i10 = 0; i10 < this.listenerCount; i10++) {
            this.listeners.get(i10).e(this, dataSpec, this.isNetwork);
        }
    }

    protected BaseDataSource(boolean z6) {
        this.isNetwork = z6;
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public final void c(TransferListener transferListener) {
        Assertions.e(transferListener);
        if (!this.listeners.contains(transferListener)) {
            this.listeners.add(transferListener);
            this.listenerCount++;
        }
    }
}
