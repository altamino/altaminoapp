package androidx.media3.datasource;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class DataSchemeDataSource extends BaseDataSource {
    public static final String SCHEME_DATA = "data";
    private int bytesRemaining;

    @Nullable
    private byte[] data;

    @Nullable
    private DataSpec dataSpec;
    private int readPosition;

    public DataSchemeDataSource() {
        super(false);
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() {
        if (this.data != null) {
            this.data = null;
            e();
        }
        this.dataSpec = null;
    }

    @Override // androidx.media3.datasource.DataSource
    @Nullable
    public Uri getUri() {
        DataSpec dataSpec = this.dataSpec;
        if (dataSpec != null) {
            return dataSpec.uri;
        }
        return null;
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
        System.arraycopy(Util.j(this.data), this.readPosition, bArr, i10, iMin);
        this.readPosition += iMin;
        this.bytesRemaining -= iMin;
        d(iMin);
        return iMin;
    }

    @Override // androidx.media3.datasource.DataSource
    public long b(DataSpec dataSpec) throws IOException {
        f(dataSpec);
        this.dataSpec = dataSpec;
        Uri uriNormalizeScheme = dataSpec.uri.normalizeScheme();
        String scheme = uriNormalizeScheme.getScheme();
        Assertions.b("data".equals(scheme), "Unsupported scheme: " + scheme);
        String[] strArrD1 = Util.d1(uriNormalizeScheme.getSchemeSpecificPart(), ",");
        if (strArrD1.length == 2) {
            String str = strArrD1[1];
            if (strArrD1[0].contains(";base64")) {
                try {
                    this.data = Base64.decode(str, 0);
                } catch (IllegalArgumentException e) {
                    throw ParserException.b("Error while parsing Base64 encoded string: " + str, e);
                }
            } else {
                this.data = Util.q0(URLDecoder.decode(str, com.google.common.base.e.US_ASCII.name()));
            }
            long j6 = dataSpec.position;
            byte[] bArr = this.data;
            if (j6 <= bArr.length) {
                int i10 = (int) j6;
                this.readPosition = i10;
                int length = bArr.length - i10;
                this.bytesRemaining = length;
                long j10 = dataSpec.length;
                if (j10 != -1) {
                    this.bytesRemaining = (int) Math.min(length, j10);
                }
                g(dataSpec);
                long j11 = dataSpec.length;
                if (j11 == -1) {
                    return this.bytesRemaining;
                }
                return j11;
            }
            this.data = null;
            throw new DataSourceException(2008);
        }
        throw ParserException.b("Unexpected URI format: " + uriNormalizeScheme, null);
    }
}
