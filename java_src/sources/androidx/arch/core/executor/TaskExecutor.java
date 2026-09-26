package androidx.arch.core.executor;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public abstract class TaskExecutor {
    public abstract void a(@NonNull Runnable runnable);

    public abstract boolean c();

    public abstract void d(@NonNull Runnable runnable);

    public void b(@NonNull Runnable runnable) {
        if (c()) {
            runnable.run();
        } else {
            d(runnable);
        }
    }
}
