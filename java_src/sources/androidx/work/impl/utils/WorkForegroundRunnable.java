package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.ForegroundInfo;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.k;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class WorkForegroundRunnable implements Runnable {
    static final String TAG = Logger.i("WorkForegroundRunnable");
    final Context mContext;
    final ForegroundUpdater mForegroundUpdater;
    final SettableFuture<Void> mFuture = SettableFuture.s();
    final TaskExecutor mTaskExecutor;
    final WorkSpec mWorkSpec;
    final ListenableWorker mWorker;

    @NonNull
    public k<Void> b() {
        return this.mFuture;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(SettableFuture settableFuture) {
        if (this.mFuture.isCancelled()) {
            settableFuture.cancel(true);
        } else {
            settableFuture.q(this.mWorker.getForegroundInfoAsync());
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"UnsafeExperimentalUsageError"})
    public void run() {
        if (!this.mWorkSpec.expedited || Build.VERSION.SDK_INT >= 31) {
            this.mFuture.o(null);
            return;
        }
        final SettableFuture settableFutureS = SettableFuture.s();
        this.mTaskExecutor.b().execute(new Runnable() { // from class: androidx.work.impl.utils.g
            @Override // java.lang.Runnable
            public final void run() {
                this.f882a.c(settableFutureS);
            }
        });
        settableFutureS.addListener(new Runnable() { // from class: androidx.work.impl.utils.WorkForegroundRunnable.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                if (WorkForegroundRunnable.this.mFuture.isCancelled()) {
                    return;
                }
                try {
                    ForegroundInfo foregroundInfo = (ForegroundInfo) settableFutureS.get();
                    if (foregroundInfo == null) {
                        throw new IllegalStateException("Worker was marked important (" + WorkForegroundRunnable.this.mWorkSpec.workerClassName + ") but did not provide ForegroundInfo");
                    }
                    Logger.e().a(WorkForegroundRunnable.TAG, "Updating notification for " + WorkForegroundRunnable.this.mWorkSpec.workerClassName);
                    WorkForegroundRunnable workForegroundRunnable = WorkForegroundRunnable.this;
                    workForegroundRunnable.mFuture.q(workForegroundRunnable.mForegroundUpdater.a(workForegroundRunnable.mContext, workForegroundRunnable.mWorker.getId(), foregroundInfo));
                } catch (Throwable th) {
                    WorkForegroundRunnable.this.mFuture.p(th);
                }
            }
        }, this.mTaskExecutor.b());
    }

    @SuppressLint({"LambdaLast"})
    public WorkForegroundRunnable(@NonNull Context context, @NonNull WorkSpec workSpec, @NonNull ListenableWorker worker, @NonNull ForegroundUpdater foregroundUpdater, @NonNull TaskExecutor taskExecutor) {
        this.mContext = context;
        this.mWorkSpec = workSpec;
        this.mWorker = worker;
        this.mForegroundUpdater = foregroundUpdater;
        this.mTaskExecutor = taskExecutor;
    }
}
