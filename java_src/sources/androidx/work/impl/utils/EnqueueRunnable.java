package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.Operation;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import androidx.work.impl.OperationImpl;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.model.Dependency;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkName;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public class EnqueueRunnable implements Runnable {
    private static final String TAG = Logger.i("EnqueueRunnable");
    private final OperationImpl mOperation;
    private final WorkContinuationImpl mWorkContinuation;

    public EnqueueRunnable(@NonNull WorkContinuationImpl workContinuation) {
        this(workContinuation, new OperationImpl());
    }

    @NonNull
    public Operation d() {
        return this.mOperation;
    }

    public EnqueueRunnable(@NonNull WorkContinuationImpl workContinuation, @NonNull OperationImpl result) {
        this.mWorkContinuation = workContinuation;
        this.mOperation = result;
    }

    /* JADX WARN: Code duplicated, block: B:83:0x014e  */
    private static boolean c(WorkManagerImpl workManagerImpl, @NonNull List<? extends WorkRequest> workList, String[] prerequisiteIds, String name, ExistingWorkPolicy existingWorkPolicy) {
        boolean z6;
        boolean z10;
        boolean z11;
        String[] strArr = prerequisiteIds;
        long jCurrentTimeMillis = System.currentTimeMillis();
        WorkDatabase workDatabaseP = workManagerImpl.p();
        boolean z12 = true;
        boolean z13 = strArr != null && strArr.length > 0;
        if (z13) {
            z6 = true;
            z10 = false;
            z11 = false;
            for (String str : strArr) {
                WorkSpec workSpecS = workDatabaseP.M().s(str);
                if (workSpecS == null) {
                    Logger.e().c(TAG, "Prerequisite " + str + " doesn't exist; not enqueuing");
                    return false;
                }
                WorkInfo.State state = workSpecS.state;
                z6 &= state == WorkInfo.State.SUCCEEDED;
                if (state == WorkInfo.State.FAILED) {
                    z11 = true;
                } else if (state == WorkInfo.State.CANCELLED) {
                    z10 = true;
                }
            }
        } else {
            z6 = true;
            z10 = false;
            z11 = false;
        }
        boolean z14 = !TextUtils.isEmpty(name);
        if (!z14 || z13) {
            z12 = false;
        } else {
            List<WorkSpec.IdAndState> listV = workDatabaseP.M().v(name);
            if (!listV.isEmpty()) {
                if (existingWorkPolicy == ExistingWorkPolicy.APPEND || existingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE) {
                    DependencyDao dependencyDaoG = workDatabaseP.G();
                    List arrayList = new ArrayList();
                    for (WorkSpec.IdAndState idAndState : listV) {
                        if (!dependencyDaoG.d(idAndState.id)) {
                            WorkInfo.State state2 = idAndState.state;
                            boolean z15 = (state2 == WorkInfo.State.SUCCEEDED) & z6;
                            if (state2 == WorkInfo.State.FAILED) {
                                z11 = true;
                            } else if (state2 == WorkInfo.State.CANCELLED) {
                                z10 = true;
                            }
                            arrayList.add(idAndState.id);
                            z6 = z15;
                        }
                        dependencyDaoG = dependencyDaoG;
                    }
                    if (existingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE && (z10 || z11)) {
                        WorkSpecDao workSpecDaoM = workDatabaseP.M();
                        Iterator<WorkSpec.IdAndState> it = workSpecDaoM.v(name).iterator();
                        while (it.hasNext()) {
                            workSpecDaoM.a(it.next().id);
                        }
                        arrayList = Collections.emptyList();
                        z10 = false;
                        z11 = false;
                    }
                    strArr = (String[]) arrayList.toArray(strArr);
                    z13 = strArr.length > 0;
                } else {
                    if (existingWorkPolicy == ExistingWorkPolicy.KEEP) {
                        Iterator<WorkSpec.IdAndState> it2 = listV.iterator();
                        while (it2.hasNext()) {
                            WorkInfo.State state3 = it2.next().state;
                            if (state3 == WorkInfo.State.ENQUEUED || state3 == WorkInfo.State.RUNNING) {
                                return false;
                            }
                        }
                    }
                    CancelWorkRunnable.c(name, workManagerImpl, false).run();
                    WorkSpecDao workSpecDaoM2 = workDatabaseP.M();
                    Iterator<WorkSpec.IdAndState> it3 = listV.iterator();
                    while (it3.hasNext()) {
                        workSpecDaoM2.a(it3.next().id);
                    }
                }
            }
            z12 = false;
        }
        Iterator<? extends WorkRequest> it4 = workList.iterator();
        while (it4.hasNext()) {
            WorkRequest next = it4.next();
            WorkSpec workSpecD = next.d();
            if (!z13 || z6) {
                workSpecD.lastEnqueueTime = jCurrentTimeMillis;
            } else if (z11) {
                workSpecD.state = WorkInfo.State.FAILED;
            } else if (z10) {
                workSpecD.state = WorkInfo.State.CANCELLED;
            } else {
                workSpecD.state = WorkInfo.State.BLOCKED;
            }
            Iterator<? extends WorkRequest> it5 = it4;
            if (workSpecD.state == WorkInfo.State.ENQUEUED) {
                z12 = true;
            }
            workDatabaseP.M().c(EnqueueUtilsKt.b(workManagerImpl.n(), workSpecD));
            if (z13) {
                int length = strArr.length;
                int i10 = 0;
                while (i10 < length) {
                    workDatabaseP.G().a(new Dependency(next.b(), strArr[i10]));
                    i10++;
                    length = length;
                    strArr = strArr;
                }
            }
            String[] strArr2 = strArr;
            workDatabaseP.N().a(next.b(), next.c());
            if (z14) {
                workDatabaseP.K().a(new WorkName(name, next.b()));
            }
            it4 = it5;
            strArr = strArr2;
        }
        return z12;
    }

    @VisibleForTesting
    public boolean a() {
        WorkDatabase workDatabaseP = this.mWorkContinuation.g().p();
        workDatabaseP.e();
        try {
            boolean zE = e(this.mWorkContinuation);
            workDatabaseP.D();
            return zE;
        } finally {
            workDatabaseP.i();
        }
    }

    @VisibleForTesting
    public void f() {
        WorkManagerImpl workManagerImplG = this.mWorkContinuation.g();
        Schedulers.b(workManagerImplG.i(), workManagerImplG.p(), workManagerImplG.n());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.mWorkContinuation.h()) {
                throw new IllegalStateException("WorkContinuation has cycles (" + this.mWorkContinuation + ")");
            }
            if (a()) {
                PackageManagerHelper.a(this.mWorkContinuation.g().h(), RescheduleReceiver.class, true);
                f();
            }
            this.mOperation.b(Operation.SUCCESS);
        } catch (Throwable th) {
            this.mOperation.b(new Operation.State.FAILURE(th));
        }
    }

    private static boolean b(@NonNull WorkContinuationImpl workContinuation) {
        boolean zC = c(workContinuation.g(), workContinuation.f(), (String[]) WorkContinuationImpl.l(workContinuation).toArray(new String[0]), workContinuation.d(), workContinuation.b());
        workContinuation.k();
        return zC;
    }

    private static boolean e(@NonNull WorkContinuationImpl workContinuation) {
        List<WorkContinuationImpl> listE = workContinuation.e();
        boolean zE = false;
        if (listE != null) {
            for (WorkContinuationImpl workContinuationImpl : listE) {
                if (!workContinuationImpl.j()) {
                    zE |= e(workContinuationImpl);
                } else {
                    Logger.e().k(TAG, "Already enqueued work ids (" + TextUtils.join(", ", workContinuationImpl.c()) + ")");
                }
            }
        }
        return b(workContinuation) | zE;
    }
}
