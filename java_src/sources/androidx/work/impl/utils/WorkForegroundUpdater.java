package androidx.work.impl.utils;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.ForegroundInfo;
import androidx.work.ForegroundUpdater;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.k;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
@RestrictTo
public class WorkForegroundUpdater implements ForegroundUpdater {
    private static final String TAG = Logger.i("WMFgUpdater");
    final ForegroundProcessor mForegroundProcessor;
    private final TaskExecutor mTaskExecutor;
    final WorkSpecDao mWorkSpecDao;

    public WorkForegroundUpdater(@NonNull WorkDatabase workDatabase, @NonNull ForegroundProcessor foregroundProcessor, @NonNull TaskExecutor taskExecutor) {
        this.mForegroundProcessor = foregroundProcessor;
        this.mTaskExecutor = taskExecutor;
        this.mWorkSpecDao = workDatabase.M();
    }

    @Override // androidx.work.ForegroundUpdater
    @NonNull
    public k<Void> a(@NonNull final Context context, @NonNull final UUID id, @NonNull final ForegroundInfo foregroundInfo) {
        final SettableFuture settableFutureS = SettableFuture.s();
        this.mTaskExecutor.a(new Runnable() { // from class: androidx.work.impl.utils.WorkForegroundUpdater.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!settableFutureS.isCancelled()) {
                        String string = id.toString();
                        WorkSpec workSpecS = WorkForegroundUpdater.this.mWorkSpecDao.s(string);
                        if (workSpecS == null || workSpecS.state.b()) {
                            throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                        }
                        WorkForegroundUpdater.this.mForegroundProcessor.c(string, foregroundInfo);
                        context.startService(SystemForegroundDispatcher.c(context, WorkSpecKt.a(workSpecS), foregroundInfo));
                    }
                    settableFutureS.o(null);
                } catch (Throwable th) {
                    settableFutureS.p(th);
                }
            }
        });
        return settableFutureS;
    }
}
