package androidx.media3.exoplayer.source.chunk;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public abstract class DataChunk extends Chunk {
    private static final int READ_GRANULARITY = 16384;
    private byte[] data;
    private volatile boolean loadCanceled;

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    protected abstract void e(byte[] bArr, int i10) throws IOException;

    public byte[] f() {
        return this.data;
    }

    private void g(int i10) {
        byte[] bArr = this.data;
        if (bArr.length < i10 + 16384) {
            this.data = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
    public final void load() throws IOException {
        try {
            this.dataSource.b(this.dataSpec);
            int i10 = 0;
            int i11 = 0;
            while (i10 != -1 && !this.loadCanceled) {
                g(i11);
                i10 = this.dataSource.read(this.data, i11, 16384);
                if (i10 != -1) {
                    i11 += i10;
                }
            }
            if (!this.loadCanceled) {
                e(this.data, i11);
            }
        } finally {
            DataSourceUtil.a(this.dataSource);
        }
    }

    public DataChunk(DataSource dataSource, DataSpec dataSpec, int i10, Format format, int i11, @Nullable Object obj, @Nullable byte[] bArr) {
        byte[] bArr2;
        super(dataSource, dataSpec, i10, format, i11, obj, -9223372036854775807L, -9223372036854775807L);
        if (bArr == null) {
            bArr2 = Util.EMPTY_BYTE_ARRAY;
        } else {
            bArr2 = bArr;
        }
        this.data = bArr2;
    }
}
