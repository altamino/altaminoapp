package androidx.media3.datasource;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class AesCipherDataSource implements DataSource {

    @Nullable
    private AesFlushingCipher cipher;
    private final byte[] secretKey;
    private final DataSource upstream;

    @Override // androidx.media3.datasource.DataSource
    public void close() throws IOException {
        this.cipher = null;
        this.upstream.close();
    }

    @Override // androidx.media3.datasource.DataSource
    public long b(DataSpec dataSpec) throws IOException {
        long jB = this.upstream.b(dataSpec);
        this.cipher = new AesFlushingCipher(2, this.secretKey, dataSpec.key, dataSpec.uriPositionOffset + dataSpec.position);
        return jB;
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
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.upstream.read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        ((AesFlushingCipher) Util.j(this.cipher)).e(bArr, i10, i12);
        return i12;
    }

    public AesCipherDataSource(byte[] bArr, DataSource dataSource) {
        this.upstream = dataSource;
        this.secretKey = bArr;
    }

    @Override // androidx.media3.datasource.DataSource
    public void c(TransferListener transferListener) {
        Assertions.e(transferListener);
        this.upstream.c(transferListener);
    }
}
