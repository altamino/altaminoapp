package androidx.media3.exoplayer.offline;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@WorkerThread
@UnstableApi
public interface DownloadIndex {
    DownloadCursor d(int... iArr) throws IOException;

    @Nullable
    Download e(String str) throws IOException;
}
