package androidx.media3.datasource;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class ByteArrayDataSource extends BaseDataSource {
    private int bytesRemaining;
    private final byte[] data;
    private boolean opened;
    private int readPosition;

    @Nullable
    private Uri uri;

    public ByteArrayDataSource(byte[] bArr) {
        super(false);
        Assertions.e(bArr);
        Assertions.a(bArr.length > 0);
        this.data = bArr;
    }

    @Override // androidx.media3.datasource.DataSource
    @Nullable
    public Uri getUri() {
        return this.uri;
    }

    @Override // androidx.media3.datasource.DataSource
    public long b(DataSpec dataSpec) throws IOException {
        this.uri = dataSpec.uri;
        f(dataSpec);
        long j6 = dataSpec.position;
        byte[] bArr = this.data;
        if (j6 > bArr.length) {
            throw new DataSourceException(2008);
        }
        this.readPosition = (int) j6;
        int length = bArr.length - ((int) j6);
        this.bytesRemaining = length;
        long j10 = dataSpec.length;
        if (j10 != -1) {
            this.bytesRemaining = (int) Math.min(length, j10);
        }
        this.opened = true;
        g(dataSpec);
        long j11 = dataSpec.length;
        return j11 != -1 ? j11 : this.bytesRemaining;
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() {
        if (this.opened) {
            this.opened = false;
            e();
        }
        this.uri = null;
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.bytesRemaining;
        if (i12 == 0) {
            return -1;
        }
        int iMin = Math.min(i11, i12);
        System.arraycopy(this.data, this.readPosition, bArr, i10, iMin);
        this.readPosition += iMin;
        this.bytesRemaining -= iMin;
        d(iMin);
        return iMin;
    }
}
