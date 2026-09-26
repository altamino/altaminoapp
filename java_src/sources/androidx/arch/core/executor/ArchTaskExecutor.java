package androidx.arch.core.executor;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes11.dex */
@RestrictTo
public class ArchTaskExecutor extends TaskExecutor {
    private static volatile ArchTaskExecutor sInstance;

    @NonNull
    private final TaskExecutor mDefaultTaskExecutor;

    @NonNull
    private TaskExecutor mDelegate;

    @NonNull
    private static final Executor sMainThreadExecutor = new Executor() { // from class: androidx.arch.core.executor.a
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            ArchTaskExecutor.i(runnable);
        }
    };

    @NonNull
    private static final Executor sIOThreadExecutor = new Executor() { // from class: androidx.arch.core.executor.b
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            ArchTaskExecutor.j(runnable);
        }
    };

    @NonNull
    public static Executor g() {
        return sIOThreadExecutor;
    }

    @NonNull
    public static ArchTaskExecutor h() {
        if (sInstance != null) {
            return sInstance;
        }
        synchronized (ArchTaskExecutor.class) {
            try {
                if (sInstance == null) {
                    sInstance = new ArchTaskExecutor();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sInstance;
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void a(@NonNull Runnable runnable) {
        this.mDelegate.a(runnable);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public boolean c() {
        return this.mDelegate.c();
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void d(@NonNull Runnable runnable) {
        this.mDelegate.d(runnable);
    }

    private ArchTaskExecutor() {
        DefaultTaskExecutor defaultTaskExecutor = new DefaultTaskExecutor();
        this.mDefaultTaskExecutor = defaultTaskExecutor;
        this.mDelegate = defaultTaskExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void i(Runnable runnable) {
        h().d(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j(Runnable runnable) {
        h().a(runnable);
    }
}
