package androidx.media3.datasource;

import android.content.Context;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BitmapLoader;
import androidx.media3.common.util.UnstableApi;
import com.google.common.base.u;
import com.google.common.base.v;
import com.google.common.util.concurrent.m;
import com.google.common.util.concurrent.n;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class DataSourceBitmapLoader implements BitmapLoader {
    public static final u<m> DEFAULT_EXECUTOR_SERVICE = v.a(new u() { // from class: androidx.media3.datasource.b
        @Override // com.google.common.base.u
        public final Object get() {
            return DataSourceBitmapLoader.b();
        }
    });
    private final DataSource.Factory dataSourceFactory;
    private final m listeningExecutorService;

    public DataSourceBitmapLoader(Context context) {
        this((m) Assertions.i(DEFAULT_EXECUTOR_SERVICE.get()), new DefaultDataSource.Factory(context));
    }

    public DataSourceBitmapLoader(m mVar, DataSource.Factory factory) {
        this.listeningExecutorService = mVar;
        this.dataSourceFactory = factory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ m b() {
        return n.a(Executors.newSingleThreadExecutor());
    }
}
