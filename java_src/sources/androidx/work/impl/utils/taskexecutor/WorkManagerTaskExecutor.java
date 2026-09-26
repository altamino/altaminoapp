package androidx.work.impl.utils.taskexecutor;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.impl.utils.SerialExecutorImpl;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public class WorkManagerTaskExecutor implements TaskExecutor {
    private final SerialExecutorImpl mBackgroundExecutor;
    final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
    private final Executor mMainThreadExecutor = new Executor() { // from class: androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor.1
        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable command) {
            WorkManagerTaskExecutor.this.mMainThreadHandler.post(command);
        }
    };

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    public /* synthetic */ void a(Runnable runnable) {
        a.a(this, runnable);
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    @NonNull
    public Executor b() {
        return this.mMainThreadExecutor;
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    @NonNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public SerialExecutorImpl c() {
        return this.mBackgroundExecutor;
    }

    public WorkManagerTaskExecutor(@NonNull Executor backgroundExecutor) {
        this.mBackgroundExecutor = new SerialExecutorImpl(backgroundExecutor);
    }
}
