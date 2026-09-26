package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class CombineContinuationsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineContinuationsWorker(@NotNull Context context, @NotNull WorkerParameters workerParams) {
        super(context, workerParams);
        t.j(context, "context");
        t.j(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    @NotNull
    public ListenableWorker.Result doWork() {
        ListenableWorker.Result resultD = ListenableWorker.Result.d(getInputData());
        t.i(resultD, "success(inputData)");
        return resultD;
    }
}
