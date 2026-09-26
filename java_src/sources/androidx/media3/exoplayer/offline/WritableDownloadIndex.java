package androidx.media3.exoplayer.offline;

import androidx.annotation.WorkerThread;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
@WorkerThread
@UnstableApi
public interface WritableDownloadIndex extends DownloadIndex {
    void a(String str, int i10) throws IOException;

    void b(Download download) throws IOException;

    void c(String str) throws IOException;

    void f(int i10) throws IOException;

    void g() throws IOException;

    void h() throws IOException;
}
