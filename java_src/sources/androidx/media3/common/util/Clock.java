package androidx.media3.common.util;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public interface Clock {
    public static final Clock DEFAULT = new SystemClock();

    void a();

    HandlerWrapper createHandler(Looper looper, @Nullable Handler.Callback callback);

    long elapsedRealtime();

    long uptimeMillis();
}
