package androidx.work;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
public interface RunnableScheduler {
    void a(@NonNull Runnable runnable);

    void b(@IntRange long delayInMillis, @NonNull Runnable runnable);
}
