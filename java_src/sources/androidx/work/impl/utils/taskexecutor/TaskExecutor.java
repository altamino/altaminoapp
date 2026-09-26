package androidx.work.impl.utils.taskexecutor;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public interface TaskExecutor {
    void a(@NonNull Runnable runnable);

    @NonNull
    Executor b();

    @NonNull
    SerialExecutor c();
}
