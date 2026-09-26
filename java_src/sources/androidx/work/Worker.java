package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.k;

/* JADX INFO: loaded from: classes8.dex */
public abstract class Worker extends ListenableWorker {
    SettableFuture<ListenableWorker.Result> mFuture;

    @NonNull
    @WorkerThread
    public abstract ListenableWorker.Result doWork();

    @NonNull
    @WorkerThread
    public ForegroundInfo getForegroundInfo() {
        throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`");
    }

    public Worker(@NonNull Context context, @NonNull WorkerParameters workerParams) {
        super(context, workerParams);
    }

    @Override // androidx.work.ListenableWorker
    @NonNull
    public k<ForegroundInfo> getForegroundInfoAsync() {
        final SettableFuture settableFutureS = SettableFuture.s();
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.Worker.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    settableFutureS.o(Worker.this.getForegroundInfo());
                } catch (Throwable th) {
                    settableFutureS.p(th);
                }
            }
        });
        return settableFutureS;
    }

    @Override // androidx.work.ListenableWorker
    @NonNull
    public final k<ListenableWorker.Result> startWork() {
        this.mFuture = SettableFuture.s();
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.Worker.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Worker.this.mFuture.o(Worker.this.doWork());
                } catch (Throwable th) {
                    Worker.this.mFuture.p(th);
                }
            }
        });
        return this.mFuture;
    }
}
