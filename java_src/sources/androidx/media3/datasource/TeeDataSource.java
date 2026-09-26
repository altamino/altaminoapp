package androidx.media3.datasource;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class TeeDataSource implements DataSource {
    private long bytesRemaining;
    private final DataSink dataSink;
    private boolean dataSinkNeedsClosing;
    private final DataSource upstream;

    @Override // androidx.media3.datasource.DataSource
    public void close() throws IOException {
        try {
            this.upstream.close();
        } finally {
            if (this.dataSinkNeedsClosing) {
                this.dataSinkNeedsClosing = false;
                this.dataSink.close();
            }
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public long b(DataSpec dataSpec) throws IOException {
        long jB = this.upstream.b(dataSpec);
        this.bytesRemaining = jB;
        if (jB == 0) {
            return 0L;
        }
        if (dataSpec.length == -1 && jB != -1) {
            dataSpec = dataSpec.f(0L, jB);
        }
        this.dataSinkNeedsClosing = true;
        this.dataSink.b(dataSpec);
        return this.bytesRemaining;
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
        if (this.bytesRemaining == 0) {
            return -1;
        }
        int i12 = this.upstream.read(bArr, i10, i11);
        if (i12 > 0) {
            this.dataSink.write(bArr, i10, i12);
            long j6 = this.bytesRemaining;
            if (j6 != -1) {
                this.bytesRemaining = j6 - ((long) i12);
            }
        }
        return i12;
    }

    public TeeDataSource(DataSource dataSource, DataSink dataSink) {
        this.upstream = (DataSource) Assertions.e(dataSource);
        this.dataSink = (DataSink) Assertions.e(dataSink);
    }

    @Override // androidx.media3.datasource.DataSource
    public void c(TransferListener transferListener) {
        Assertions.e(transferListener);
        this.upstream.c(transferListener);
    }
}
