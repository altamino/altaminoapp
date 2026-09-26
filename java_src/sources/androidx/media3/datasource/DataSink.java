package androidx.media3.datasource;

import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public interface DataSink {

    public interface Factory {
        DataSink createDataSink();
    }

    void b(DataSpec dataSpec) throws IOException;

    void close() throws IOException;

    void write(byte[] bArr, int i10, int i11) throws IOException;
}
