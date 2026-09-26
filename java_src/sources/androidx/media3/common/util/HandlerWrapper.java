package androidx.media3.common.util;

import android.os.Looper;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public interface HandlerWrapper {

    public interface Message {
        void a();
    }

    boolean a(int i10);

    boolean b(int i10, int i11);

    boolean c(Message message);

    Looper getLooper();

    Message obtainMessage(int i10);

    Message obtainMessage(int i10, int i11, int i12);

    Message obtainMessage(int i10, int i11, int i12, @Nullable Object obj);

    Message obtainMessage(int i10, @Nullable Object obj);

    boolean post(Runnable runnable);

    void removeCallbacksAndMessages(@Nullable Object obj);

    void removeMessages(int i10);

    boolean sendEmptyMessage(int i10);

    boolean sendEmptyMessageAtTime(int i10, long j6);
}
