package androidx.work.impl.utils;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.ProgressUpdater;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkProgress;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.k;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public class WorkProgressUpdater implements ProgressUpdater {
    static final String TAG = Logger.i("WorkProgressUpdater");
    final TaskExecutor mTaskExecutor;
    final WorkDatabase mWorkDatabase;

    public WorkProgressUpdater(@NonNull WorkDatabase workDatabase, @NonNull TaskExecutor taskExecutor) {
        this.mWorkDatabase = workDatabase;
        this.mTaskExecutor = taskExecutor;
    }

    @Override // androidx.work.ProgressUpdater
    @NonNull
    public k<Void> a(@NonNull final Context context, @NonNull final UUID id, @NonNull final Data data) {
        final SettableFuture settableFutureS = SettableFuture.s();
        this.mTaskExecutor.a(new Runnable() { // from class: androidx.work.impl.utils.WorkProgressUpdater.1
            @Override // java.lang.Runnable
            public void run() {
                String string = id.toString();
                Logger loggerE = Logger.e();
                String str = WorkProgressUpdater.TAG;
                loggerE.a(str, "Updating progress for " + id + " (" + data + ")");
                WorkProgressUpdater.this.mWorkDatabase.e();
                try {
                    WorkSpec workSpecS = WorkProgressUpdater.this.mWorkDatabase.M().s(string);
                    if (workSpecS == null) {
                        throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                    }
                    if (workSpecS.state == WorkInfo.State.RUNNING) {
                        WorkProgressUpdater.this.mWorkDatabase.L().c(new WorkProgress(string, data));
                    } else {
                        Logger.e().k(str, "Ignoring setProgressAsync(...). WorkSpec (" + string + ") is not in a RUNNING state.");
                    }
                    settableFutureS.o(null);
                    WorkProgressUpdater.this.mWorkDatabase.D();
                } catch (Throwable th) {
                    try {
                        Logger.e().d(WorkProgressUpdater.TAG, "Error updating Worker progress", th);
                        settableFutureS.p(th);
                    } finally {
                        WorkProgressUpdater.this.mWorkDatabase.i();
                    }
                }
            }
        });
        return settableFutureS;
    }
}
