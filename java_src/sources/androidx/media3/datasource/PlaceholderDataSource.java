package androidx.media3.datasource;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class PlaceholderDataSource implements DataSource {
    public static final PlaceholderDataSource INSTANCE = new PlaceholderDataSource();
    public static final DataSource.Factory FACTORY = new DataSource.Factory() { // from class: androidx.media3.datasource.g
        @Override // androidx.media3.datasource.DataSource.Factory
        public final DataSource createDataSource() {
            return PlaceholderDataSource.d();
        }
    };

    public static /* synthetic */ PlaceholderDataSource d() {
        return new PlaceholderDataSource();
    }

    @Override // androidx.media3.datasource.DataSource
    public void c(TransferListener transferListener) {
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() {
    }

    @Override // androidx.media3.datasource.DataSource
    public /* synthetic */ Map getResponseHeaders() {
        return a.a(this);
    }

    @Override // androidx.media3.datasource.DataSource
    @Nullable
    public Uri getUri() {
        return null;
    }

    @Override // androidx.media3.datasource.DataSource
    public long b(DataSpec dataSpec) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    private PlaceholderDataSource() {
    }
}
