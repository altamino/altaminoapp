package androidx.media3.datasource;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class ByteArrayDataSink implements DataSink {
    private ByteArrayOutputStream stream;

    @Override // androidx.media3.datasource.DataSink
    public void b(DataSpec dataSpec) {
        long j6 = dataSpec.length;
        if (j6 == -1) {
            this.stream = new ByteArrayOutputStream();
        } else {
            Assertions.a(j6 <= 2147483647L);
            this.stream = new ByteArrayOutputStream((int) dataSpec.length);
        }
    }

    @Override // androidx.media3.datasource.DataSink
    public void close() throws IOException {
        ((ByteArrayOutputStream) Util.j(this.stream)).close();
    }

    @Override // androidx.media3.datasource.DataSink
    public void write(byte[] bArr, int i10, int i11) {
        ((ByteArrayOutputStream) Util.j(this.stream)).write(bArr, i10, i11);
    }
}
