package androidx.work.impl.workers;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsCallback;
import androidx.work.impl.constraints.WorkConstraintsTrackerImpl;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import com.google.common.util.concurrent.k;
import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public final class ConstraintTrackingWorker extends ListenableWorker implements WorkConstraintsCallback {
    private volatile boolean areConstraintsUnmet;

    @Nullable
    private ListenableWorker delegate;
    private final SettableFuture<ListenableWorker.Result> future;

    @NotNull
    private final Object lock;

    @NotNull
    private final WorkerParameters workerParameters;

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void f(@NotNull List<WorkSpec> workSpecs) {
        t.j(workSpecs, "workSpecs");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(@NotNull Context appContext, @NotNull WorkerParameters workerParameters) {
        super(appContext, workerParameters);
        t.j(appContext, "appContext");
        t.j(workerParameters, "workerParameters");
        this.workerParameters = workerParameters;
        this.lock = new Object();
        this.future = SettableFuture.s();
    }

    private final void d() {
        if (this.future.isCancelled()) {
            return;
        }
        String strI = getInputData().i(ConstraintTrackingWorkerKt.ARGUMENT_CLASS_NAME);
        Logger loggerE = Logger.e();
        t.i(loggerE, "get()");
        if (strI == null || strI.length() == 0) {
            loggerE.c(ConstraintTrackingWorkerKt.TAG, "No worker to delegate to.");
            SettableFuture<ListenableWorker.Result> future = this.future;
            t.i(future, "future");
            ConstraintTrackingWorkerKt.d(future);
            return;
        }
        ListenableWorker listenableWorkerB = getWorkerFactory().b(getApplicationContext(), strI, this.workerParameters);
        this.delegate = listenableWorkerB;
        if (listenableWorkerB == null) {
            loggerE.a(ConstraintTrackingWorkerKt.TAG, "No worker to delegate to.");
            SettableFuture<ListenableWorker.Result> future2 = this.future;
            t.i(future2, "future");
            ConstraintTrackingWorkerKt.d(future2);
            return;
        }
        WorkManagerImpl workManagerImplK = WorkManagerImpl.k(getApplicationContext());
        t.i(workManagerImplK, "getInstance(applicationContext)");
        WorkSpecDao workSpecDaoM = workManagerImplK.p().M();
        String string = getId().toString();
        t.i(string, "id.toString()");
        WorkSpec workSpecS = workSpecDaoM.s(string);
        if (workSpecS == null) {
            SettableFuture<ListenableWorker.Result> future3 = this.future;
            t.i(future3, "future");
            ConstraintTrackingWorkerKt.d(future3);
            return;
        }
        Trackers trackersO = workManagerImplK.o();
        t.i(trackersO, "workManagerImpl.trackers");
        WorkConstraintsTrackerImpl workConstraintsTrackerImpl = new WorkConstraintsTrackerImpl(trackersO, this);
        workConstraintsTrackerImpl.a(u.e(workSpecS));
        String string2 = getId().toString();
        t.i(string2, "id.toString()");
        if (!workConstraintsTrackerImpl.d(string2)) {
            loggerE.a(ConstraintTrackingWorkerKt.TAG, "Constraints not met for delegate " + strI + ". Requesting retry.");
            SettableFuture<ListenableWorker.Result> future4 = this.future;
            t.i(future4, "future");
            ConstraintTrackingWorkerKt.e(future4);
            return;
        }
        loggerE.a(ConstraintTrackingWorkerKt.TAG, "Constraints met for delegate " + strI);
        try {
            ListenableWorker listenableWorker = this.delegate;
            t.g(listenableWorker);
            final k<ListenableWorker.Result> kVarStartWork = listenableWorker.startWork();
            t.i(kVarStartWork, "delegate!!.startWork()");
            kVarStartWork.addListener(new Runnable() { // from class: x.b
                @Override // java.lang.Runnable
                public final void run() {
                    ConstraintTrackingWorker.e(this.f3361a, kVarStartWork);
                }
            }, getBackgroundExecutor());
        } catch (Throwable th) {
            loggerE.b(ConstraintTrackingWorkerKt.TAG, "Delegated worker " + strI + " threw exception in startWork.", th);
            synchronized (this.lock) {
                try {
                    if (!this.areConstraintsUnmet) {
                        SettableFuture<ListenableWorker.Result> future5 = this.future;
                        t.i(future5, "future");
                        ConstraintTrackingWorkerKt.d(future5);
                    } else {
                        loggerE.a(ConstraintTrackingWorkerKt.TAG, "Constraints were unmet, Retrying.");
                        SettableFuture<ListenableWorker.Result> future6 = this.future;
                        t.i(future6, "future");
                        ConstraintTrackingWorkerKt.e(future6);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(ConstraintTrackingWorker this$0, k innerFuture) {
        t.j(this$0, "this$0");
        t.j(innerFuture, "$innerFuture");
        synchronized (this$0.lock) {
            try {
                if (this$0.areConstraintsUnmet) {
                    SettableFuture<ListenableWorker.Result> future = this$0.future;
                    t.i(future, "future");
                    ConstraintTrackingWorkerKt.e(future);
                } else {
                    this$0.future.q(innerFuture);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(ConstraintTrackingWorker this$0) {
        t.j(this$0, "this$0");
        this$0.d();
    }

    @Override // androidx.work.impl.constraints.WorkConstraintsCallback
    public void a(@NotNull List<WorkSpec> workSpecs) {
        t.j(workSpecs, "workSpecs");
        Logger.e().a(ConstraintTrackingWorkerKt.TAG, "Constraints changed for " + workSpecs);
        synchronized (this.lock) {
            this.areConstraintsUnmet = true;
            l0 l0Var = l0.INSTANCE;
        }
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.delegate;
        if (listenableWorker != null && !listenableWorker.isStopped()) {
            listenableWorker.stop();
        }
    }

    @Override // androidx.work.ListenableWorker
    @NotNull
    public k<ListenableWorker.Result> startWork() {
        getBackgroundExecutor().execute(new Runnable() { // from class: x.a
            @Override // java.lang.Runnable
            public final void run() {
                ConstraintTrackingWorker.g(this.f3360a);
            }
        });
        SettableFuture<ListenableWorker.Result> future = this.future;
        t.i(future, "future");
        return future;
    }
}
