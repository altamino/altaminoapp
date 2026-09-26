package androidx.media3.exoplayer.offline;

import androidx.media3.common.util.UnstableApi;
import java.io.Closeable;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public interface DownloadCursor extends Closeable {
    Download E();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    int getPosition();

    boolean moveToNext();

    boolean moveToPosition(int i10);
}
