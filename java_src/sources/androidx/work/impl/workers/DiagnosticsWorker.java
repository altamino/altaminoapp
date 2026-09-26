package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class DiagnosticsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(@NotNull Context context, @NotNull WorkerParameters parameters) {
        super(context, parameters);
        t.j(context, "context");
        t.j(parameters, "parameters");
    }

    @Override // androidx.work.Worker
    @NotNull
    public ListenableWorker.Result doWork() {
        WorkManagerImpl workManagerImplK = WorkManagerImpl.k(getApplicationContext());
        t.i(workManagerImplK, "getInstance(applicationContext)");
        WorkDatabase workDatabaseP = workManagerImplK.p();
        t.i(workDatabaseP, "workManager.workDatabase");
        WorkSpecDao workSpecDaoM = workDatabaseP.M();
        WorkNameDao workNameDaoK = workDatabaseP.K();
        WorkTagDao workTagDaoN = workDatabaseP.N();
        SystemIdInfoDao systemIdInfoDaoJ = workDatabaseP.J();
        List<WorkSpec> listP = workSpecDaoM.p(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        List<WorkSpec> listY = workSpecDaoM.y();
        List<WorkSpec> listJ = workSpecDaoM.j(200);
        if (!listP.isEmpty()) {
            Logger.e().f(DiagnosticsWorkerKt.TAG, "Recently completed work:\n\n");
            Logger.e().f(DiagnosticsWorkerKt.TAG, DiagnosticsWorkerKt.d(workNameDaoK, workTagDaoN, systemIdInfoDaoJ, listP));
        }
        if (!listY.isEmpty()) {
            Logger.e().f(DiagnosticsWorkerKt.TAG, "Running work:\n\n");
            Logger.e().f(DiagnosticsWorkerKt.TAG, DiagnosticsWorkerKt.d(workNameDaoK, workTagDaoN, systemIdInfoDaoJ, listY));
        }
        if (!listJ.isEmpty()) {
            Logger.e().f(DiagnosticsWorkerKt.TAG, "Enqueued work:\n\n");
            Logger.e().f(DiagnosticsWorkerKt.TAG, DiagnosticsWorkerKt.d(workNameDaoK, workTagDaoN, systemIdInfoDaoJ, listJ));
        }
        ListenableWorker.Result resultC = ListenableWorker.Result.c();
        t.i(resultC, "success()");
        return resultC;
    }
}
