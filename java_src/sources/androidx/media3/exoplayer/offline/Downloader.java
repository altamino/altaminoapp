package androidx.media3.exoplayer.offline;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public interface Downloader {

    public interface ProgressListener {
        void a(long j6, long j10, float f);
    }

    void a(@Nullable ProgressListener progressListener) throws InterruptedException, IOException;

    void cancel();

    void remove();
}
