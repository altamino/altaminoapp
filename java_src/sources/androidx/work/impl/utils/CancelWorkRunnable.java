package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.work.Operation;
import androidx.work.WorkInfo;
import androidx.work.impl.OperationImpl;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpecDao;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.UUID;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public abstract class CancelWorkRunnable implements Runnable {
    private final OperationImpl mOperation = new OperationImpl();

    /* JADX INFO: renamed from: androidx.work.impl.utils.CancelWorkRunnable$4, reason: invalid class name */
    class AnonymousClass4 extends CancelWorkRunnable {
        final /* synthetic */ WorkManagerImpl val$workManagerImpl;

        @Override // androidx.work.impl.utils.CancelWorkRunnable
        @WorkerThread
        void h() {
            WorkDatabase workDatabaseP = this.val$workManagerImpl.p();
            workDatabaseP.e();
            try {
                Iterator<String> it = workDatabaseP.M().l().iterator();
                while (it.hasNext()) {
                    a(this.val$workManagerImpl, it.next());
                }
                new PreferenceUtils(this.val$workManagerImpl.p()).e(System.currentTimeMillis());
                workDatabaseP.D();
            } finally {
                workDatabaseP.i();
            }
        }
    }

    @NonNull
    public Operation e() {
        return this.mOperation;
    }

    abstract void h();

    @NonNull
    public static CancelWorkRunnable b(@NonNull final UUID id, @NonNull final WorkManagerImpl workManagerImpl) {
        return new CancelWorkRunnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable.1
            @Override // androidx.work.impl.utils.CancelWorkRunnable
            @WorkerThread
            void h() {
                WorkDatabase workDatabaseP = workManagerImpl.p();
                workDatabaseP.e();
                try {
                    a(workManagerImpl, id.toString());
                    workDatabaseP.D();
                    workDatabaseP.i();
                    g(workManagerImpl);
                } catch (Throwable th) {
                    workDatabaseP.i();
                    throw th;
                }
            }
        };
    }

    @NonNull
    public static CancelWorkRunnable c(@NonNull final String name, @NonNull final WorkManagerImpl workManagerImpl, final boolean allowReschedule) {
        return new CancelWorkRunnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable.3
            @Override // androidx.work.impl.utils.CancelWorkRunnable
            @WorkerThread
            void h() {
                WorkDatabase workDatabaseP = workManagerImpl.p();
                workDatabaseP.e();
                try {
                    Iterator<String> it = workDatabaseP.M().d(name).iterator();
                    while (it.hasNext()) {
                        a(workManagerImpl, it.next());
                    }
                    workDatabaseP.D();
                    workDatabaseP.i();
                    if (allowReschedule) {
                        g(workManagerImpl);
                    }
                } catch (Throwable th) {
                    workDatabaseP.i();
                    throw th;
                }
            }
        };
    }

    @NonNull
    public static CancelWorkRunnable d(@NonNull final String tag, @NonNull final WorkManagerImpl workManagerImpl) {
        return new CancelWorkRunnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable.2
            @Override // androidx.work.impl.utils.CancelWorkRunnable
            @WorkerThread
            void h() {
                WorkDatabase workDatabaseP = workManagerImpl.p();
                workDatabaseP.e();
                try {
                    Iterator<String> it = workDatabaseP.M().g(tag).iterator();
                    while (it.hasNext()) {
                        a(workManagerImpl, it.next());
                    }
                    workDatabaseP.D();
                    workDatabaseP.i();
                    g(workManagerImpl);
                } catch (Throwable th) {
                    workDatabaseP.i();
                    throw th;
                }
            }
        };
    }

    private void f(WorkDatabase workDatabase, String workSpecId) {
        WorkSpecDao workSpecDaoM = workDatabase.M();
        DependencyDao dependencyDaoG = workDatabase.G();
        LinkedList linkedList = new LinkedList();
        linkedList.add(workSpecId);
        while (!linkedList.isEmpty()) {
            String str = (String) linkedList.remove();
            WorkInfo.State stateE = workSpecDaoM.e(str);
            if (stateE != WorkInfo.State.SUCCEEDED && stateE != WorkInfo.State.FAILED) {
                workSpecDaoM.k(WorkInfo.State.CANCELLED, str);
            }
            linkedList.addAll(dependencyDaoG.b(str));
        }
    }

    void a(WorkManagerImpl workManagerImpl, String workSpecId) {
        f(workManagerImpl.p(), workSpecId);
        workManagerImpl.m().r(workSpecId);
        Iterator<Scheduler> it = workManagerImpl.n().iterator();
        while (it.hasNext()) {
            it.next().c(workSpecId);
        }
    }

    void g(WorkManagerImpl workManagerImpl) {
        Schedulers.b(workManagerImpl.i(), workManagerImpl.p(), workManagerImpl.n());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            h();
            this.mOperation.b(Operation.SUCCESS);
        } catch (Throwable th) {
            this.mOperation.b(new Operation.State.FAILURE(th));
        }
    }
}
