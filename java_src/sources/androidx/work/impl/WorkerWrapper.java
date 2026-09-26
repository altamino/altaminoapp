package androidx.work.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.InputMerger;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.PackageManagerHelper;
import androidx.work.impl.utils.SynchronousExecutor;
import androidx.work.impl.utils.WorkForegroundRunnable;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.WorkProgressUpdater;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
public class WorkerWrapper implements Runnable {
    static final String TAG = Logger.i("WorkerWrapper");
    Context mAppContext;
    private Configuration mConfiguration;
    private DependencyDao mDependencyDao;
    private ForegroundProcessor mForegroundProcessor;
    private volatile boolean mInterrupted;
    private WorkerParameters.RuntimeExtras mRuntimeExtras;
    private List<Scheduler> mSchedulers;
    private List<String> mTags;
    private WorkDatabase mWorkDatabase;
    private String mWorkDescription;
    WorkSpec mWorkSpec;
    private WorkSpecDao mWorkSpecDao;
    private final String mWorkSpecId;
    TaskExecutor mWorkTaskExecutor;
    ListenableWorker mWorker;

    @NonNull
    ListenableWorker.Result mResult = ListenableWorker.Result.a();

    @NonNull
    SettableFuture<Boolean> mFuture = SettableFuture.s();

    @NonNull
    final SettableFuture<ListenableWorker.Result> mWorkerResultFuture = SettableFuture.s();

    @RestrictTo
    public static class Builder {

        @NonNull
        Context mAppContext;

        @NonNull
        Configuration mConfiguration;

        @NonNull
        ForegroundProcessor mForegroundProcessor;

        @NonNull
        WorkerParameters.RuntimeExtras mRuntimeExtras = new WorkerParameters.RuntimeExtras();
        List<Scheduler> mSchedulers;
        private final List<String> mTags;

        @NonNull
        WorkDatabase mWorkDatabase;

        @NonNull
        WorkSpec mWorkSpec;

        @NonNull
        TaskExecutor mWorkTaskExecutor;

        @Nullable
        ListenableWorker mWorker;

        @NonNull
        public Builder c(@Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
            if (runtimeExtras != null) {
                this.mRuntimeExtras = runtimeExtras;
            }
            return this;
        }

        @NonNull
        public Builder d(@NonNull List<Scheduler> schedulers) {
            this.mSchedulers = schedulers;
            return this;
        }

        @NonNull
        public WorkerWrapper b() {
            return new WorkerWrapper(this);
        }

        public Builder(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor workTaskExecutor, @NonNull ForegroundProcessor foregroundProcessor, @NonNull WorkDatabase database, @NonNull WorkSpec workSpec, @NonNull List<String> tags) {
            this.mAppContext = context.getApplicationContext();
            this.mWorkTaskExecutor = workTaskExecutor;
            this.mForegroundProcessor = foregroundProcessor;
            this.mConfiguration = configuration;
            this.mWorkDatabase = database;
            this.mWorkSpec = workSpec;
            this.mTags = tags;
        }
    }

    @NonNull
    public k<Boolean> c() {
        return this.mFuture;
    }

    @NonNull
    public WorkSpec e() {
        return this.mWorkSpec;
    }

    @RestrictTo
    public void g() {
        this.mInterrupted = true;
        r();
        this.mWorkerResultFuture.cancel(true);
        if (this.mWorker != null && this.mWorkerResultFuture.isCancelled()) {
            this.mWorker.stop();
            return;
        }
        Logger.e().a(TAG, "WorkSpec " + this.mWorkSpec + " is already done. Not interrupting.");
    }

    private String b(List<String> tags) {
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.mWorkSpecId);
        sb.append(", tags={ ");
        boolean z6 = true;
        for (String str : tags) {
            if (z6) {
                z6 = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(" } ]");
        return sb.toString();
    }

    private void f(ListenableWorker.Result result) {
        if (result instanceof ListenableWorker.Result.Success) {
            Logger.e().f(TAG, "Worker result SUCCESS for " + this.mWorkDescription);
            if (this.mWorkSpec.j()) {
                l();
                return;
            } else {
                q();
                return;
            }
        }
        if (result instanceof ListenableWorker.Result.Retry) {
            Logger.e().f(TAG, "Worker result RETRY for " + this.mWorkDescription);
            k();
            return;
        }
        Logger.e().f(TAG, "Worker result FAILURE for " + this.mWorkDescription);
        if (this.mWorkSpec.j()) {
            l();
        } else {
            p();
        }
    }

    private void h(String workSpecId) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(workSpecId);
        while (!linkedList.isEmpty()) {
            String str = (String) linkedList.remove();
            if (this.mWorkSpecDao.e(str) != WorkInfo.State.CANCELLED) {
                this.mWorkSpecDao.k(WorkInfo.State.FAILED, str);
            }
            linkedList.addAll(this.mDependencyDao.b(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(k kVar) {
        if (this.mWorkerResultFuture.isCancelled()) {
            kVar.cancel(true);
        }
    }

    private void k() {
        this.mWorkDatabase.e();
        try {
            this.mWorkSpecDao.k(WorkInfo.State.ENQUEUED, this.mWorkSpecId);
            this.mWorkSpecDao.f(this.mWorkSpecId, System.currentTimeMillis());
            this.mWorkSpecDao.u(this.mWorkSpecId, -1L);
            this.mWorkDatabase.D();
        } finally {
            this.mWorkDatabase.i();
            m(true);
        }
    }

    private void l() {
        this.mWorkDatabase.e();
        try {
            this.mWorkSpecDao.f(this.mWorkSpecId, System.currentTimeMillis());
            this.mWorkSpecDao.k(WorkInfo.State.ENQUEUED, this.mWorkSpecId);
            this.mWorkSpecDao.n(this.mWorkSpecId);
            this.mWorkSpecDao.o(this.mWorkSpecId);
            this.mWorkSpecDao.u(this.mWorkSpecId, -1L);
            this.mWorkDatabase.D();
        } finally {
            this.mWorkDatabase.i();
            m(false);
        }
    }

    private void m(final boolean needsReschedule) {
        this.mWorkDatabase.e();
        try {
            if (!this.mWorkDatabase.M().m()) {
                PackageManagerHelper.a(this.mAppContext, RescheduleReceiver.class, false);
            }
            if (needsReschedule) {
                this.mWorkSpecDao.k(WorkInfo.State.ENQUEUED, this.mWorkSpecId);
                this.mWorkSpecDao.u(this.mWorkSpecId, -1L);
            }
            if (this.mWorkSpec != null && this.mWorker != null && this.mForegroundProcessor.b(this.mWorkSpecId)) {
                this.mForegroundProcessor.a(this.mWorkSpecId);
            }
            this.mWorkDatabase.D();
            this.mWorkDatabase.i();
            this.mFuture.o(Boolean.valueOf(needsReschedule));
        } catch (Throwable th) {
            this.mWorkDatabase.i();
            throw th;
        }
    }

    private void n() {
        WorkInfo.State stateE = this.mWorkSpecDao.e(this.mWorkSpecId);
        if (stateE == WorkInfo.State.RUNNING) {
            Logger.e().a(TAG, "Status for " + this.mWorkSpecId + " is RUNNING; not doing any work and rescheduling for later execution");
            m(true);
            return;
        }
        Logger.e().a(TAG, "Status for " + this.mWorkSpecId + " is " + stateE + " ; not doing any work");
        m(false);
    }

    private void q() {
        this.mWorkDatabase.e();
        try {
            this.mWorkSpecDao.k(WorkInfo.State.SUCCEEDED, this.mWorkSpecId);
            this.mWorkSpecDao.x(this.mWorkSpecId, ((ListenableWorker.Result.Success) this.mResult).e());
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (String str : this.mDependencyDao.b(this.mWorkSpecId)) {
                if (this.mWorkSpecDao.e(str) == WorkInfo.State.BLOCKED && this.mDependencyDao.c(str)) {
                    Logger.e().f(TAG, "Setting status to enqueued for " + str);
                    this.mWorkSpecDao.k(WorkInfo.State.ENQUEUED, str);
                    this.mWorkSpecDao.f(str, jCurrentTimeMillis);
                }
            }
            this.mWorkDatabase.D();
        } finally {
            this.mWorkDatabase.i();
            m(false);
        }
    }

    private boolean r() {
        if (!this.mInterrupted) {
            return false;
        }
        Logger.e().a(TAG, "Work interrupted for " + this.mWorkDescription);
        WorkInfo.State stateE = this.mWorkSpecDao.e(this.mWorkSpecId);
        if (stateE == null) {
            m(false);
        } else {
            m(!stateE.b());
        }
        return true;
    }

    private boolean s() {
        boolean z6;
        this.mWorkDatabase.e();
        try {
            if (this.mWorkSpecDao.e(this.mWorkSpecId) == WorkInfo.State.ENQUEUED) {
                this.mWorkSpecDao.k(WorkInfo.State.RUNNING, this.mWorkSpecId);
                this.mWorkSpecDao.A(this.mWorkSpecId);
                z6 = true;
            } else {
                z6 = false;
            }
            this.mWorkDatabase.D();
            return z6;
        } finally {
            this.mWorkDatabase.i();
        }
    }

    @NonNull
    public WorkGenerationalId d() {
        return WorkSpecKt.a(this.mWorkSpec);
    }

    @VisibleForTesting
    void p() {
        this.mWorkDatabase.e();
        try {
            h(this.mWorkSpecId);
            this.mWorkSpecDao.x(this.mWorkSpecId, ((ListenableWorker.Result.Failure) this.mResult).e());
            this.mWorkDatabase.D();
        } finally {
            this.mWorkDatabase.i();
            m(false);
        }
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public void run() {
        this.mWorkDescription = b(this.mTags);
        o();
    }

    WorkerWrapper(@NonNull Builder builder) {
        this.mAppContext = builder.mAppContext;
        this.mWorkTaskExecutor = builder.mWorkTaskExecutor;
        this.mForegroundProcessor = builder.mForegroundProcessor;
        WorkSpec workSpec = builder.mWorkSpec;
        this.mWorkSpec = workSpec;
        this.mWorkSpecId = workSpec.id;
        this.mSchedulers = builder.mSchedulers;
        this.mRuntimeExtras = builder.mRuntimeExtras;
        this.mWorker = builder.mWorker;
        this.mConfiguration = builder.mConfiguration;
        WorkDatabase workDatabase = builder.mWorkDatabase;
        this.mWorkDatabase = workDatabase;
        this.mWorkSpecDao = workDatabase.M();
        this.mDependencyDao = this.mWorkDatabase.G();
        this.mTags = builder.mTags;
    }

    private void o() {
        Data dataB;
        if (r()) {
            return;
        }
        this.mWorkDatabase.e();
        try {
            WorkSpec workSpec = this.mWorkSpec;
            if (workSpec.state != WorkInfo.State.ENQUEUED) {
                n();
                this.mWorkDatabase.D();
                Logger.e().a(TAG, this.mWorkSpec.workerClassName + " is not in ENQUEUED state. Nothing more to do");
                this.mWorkDatabase.i();
                return;
            }
            if ((workSpec.j() || this.mWorkSpec.i()) && System.currentTimeMillis() < this.mWorkSpec.c()) {
                Logger.e().a(TAG, String.format("Delaying execution for %s because it is being executed before schedule.", this.mWorkSpec.workerClassName));
                m(true);
                this.mWorkDatabase.D();
                this.mWorkDatabase.i();
                return;
            }
            this.mWorkDatabase.D();
            this.mWorkDatabase.i();
            if (this.mWorkSpec.j()) {
                dataB = this.mWorkSpec.input;
            } else {
                InputMerger inputMergerB = this.mConfiguration.f().b(this.mWorkSpec.inputMergerClassName);
                if (inputMergerB == null) {
                    Logger.e().c(TAG, "Could not create Input Merger " + this.mWorkSpec.inputMergerClassName);
                    p();
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.mWorkSpec.input);
                arrayList.addAll(this.mWorkSpecDao.h(this.mWorkSpecId));
                dataB = inputMergerB.b(arrayList);
            }
            Data data = dataB;
            UUID uuidFromString = UUID.fromString(this.mWorkSpecId);
            List<String> list = this.mTags;
            WorkerParameters.RuntimeExtras runtimeExtras = this.mRuntimeExtras;
            WorkSpec workSpec2 = this.mWorkSpec;
            WorkerParameters workerParameters = new WorkerParameters(uuidFromString, data, list, runtimeExtras, workSpec2.runAttemptCount, workSpec2.f(), this.mConfiguration.d(), this.mWorkTaskExecutor, this.mConfiguration.n(), new WorkProgressUpdater(this.mWorkDatabase, this.mWorkTaskExecutor), new WorkForegroundUpdater(this.mWorkDatabase, this.mForegroundProcessor, this.mWorkTaskExecutor));
            if (this.mWorker == null) {
                this.mWorker = this.mConfiguration.n().b(this.mAppContext, this.mWorkSpec.workerClassName, workerParameters);
            }
            ListenableWorker listenableWorker = this.mWorker;
            if (listenableWorker == null) {
                Logger.e().c(TAG, "Could not create Worker " + this.mWorkSpec.workerClassName);
                p();
                return;
            }
            if (listenableWorker.isUsed()) {
                Logger.e().c(TAG, "Received an already-used Worker " + this.mWorkSpec.workerClassName + "; Worker Factory should return new instances");
                p();
                return;
            }
            this.mWorker.setUsed();
            if (s()) {
                if (r()) {
                    return;
                }
                WorkForegroundRunnable workForegroundRunnable = new WorkForegroundRunnable(this.mAppContext, this.mWorkSpec, this.mWorker, workerParameters.b(), this.mWorkTaskExecutor);
                this.mWorkTaskExecutor.b().execute(workForegroundRunnable);
                final k<Void> kVarB = workForegroundRunnable.b();
                this.mWorkerResultFuture.addListener(new Runnable() { // from class: androidx.work.impl.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f876a.i(kVarB);
                    }
                }, new SynchronousExecutor());
                kVarB.addListener(new Runnable() { // from class: androidx.work.impl.WorkerWrapper.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (WorkerWrapper.this.mWorkerResultFuture.isCancelled()) {
                            return;
                        }
                        try {
                            kVarB.get();
                            Logger.e().a(WorkerWrapper.TAG, "Starting work for " + WorkerWrapper.this.mWorkSpec.workerClassName);
                            WorkerWrapper workerWrapper = WorkerWrapper.this;
                            workerWrapper.mWorkerResultFuture.q(workerWrapper.mWorker.startWork());
                        } catch (Throwable th) {
                            WorkerWrapper.this.mWorkerResultFuture.p(th);
                        }
                    }
                }, this.mWorkTaskExecutor.b());
                final String str = this.mWorkDescription;
                this.mWorkerResultFuture.addListener(new Runnable() { // from class: androidx.work.impl.WorkerWrapper.2
                    @Override // java.lang.Runnable
                    @SuppressLint({"SyntheticAccessor"})
                    public void run() {
                        try {
                            try {
                                ListenableWorker.Result result = WorkerWrapper.this.mWorkerResultFuture.get();
                                if (result == null) {
                                    Logger.e().c(WorkerWrapper.TAG, WorkerWrapper.this.mWorkSpec.workerClassName + " returned a null result. Treating it as a failure.");
                                } else {
                                    Logger.e().a(WorkerWrapper.TAG, WorkerWrapper.this.mWorkSpec.workerClassName + " returned a " + result + ".");
                                    WorkerWrapper.this.mResult = result;
                                }
                            } catch (InterruptedException e) {
                                e = e;
                                Logger.e().d(WorkerWrapper.TAG, str + " failed because it threw an exception/error", e);
                            } catch (CancellationException e2) {
                                Logger.e().g(WorkerWrapper.TAG, str + " was cancelled", e2);
                            } catch (ExecutionException e6) {
                                e = e6;
                                Logger.e().d(WorkerWrapper.TAG, str + " failed because it threw an exception/error", e);
                            }
                            WorkerWrapper.this.j();
                        } catch (Throwable th) {
                            WorkerWrapper.this.j();
                            throw th;
                        }
                    }
                }, this.mWorkTaskExecutor.c());
                return;
            }
            n();
        } catch (Throwable th) {
            this.mWorkDatabase.i();
            throw th;
        }
    }

    void j() {
        if (!r()) {
            this.mWorkDatabase.e();
            try {
                WorkInfo.State stateE = this.mWorkSpecDao.e(this.mWorkSpecId);
                this.mWorkDatabase.L().a(this.mWorkSpecId);
                if (stateE == null) {
                    m(false);
                } else if (stateE == WorkInfo.State.RUNNING) {
                    f(this.mResult);
                } else if (!stateE.b()) {
                    k();
                }
                this.mWorkDatabase.D();
                this.mWorkDatabase.i();
            } catch (Throwable th) {
                this.mWorkDatabase.i();
                throw th;
            }
        }
        List<Scheduler> list = this.mSchedulers;
        if (list != null) {
            Iterator<Scheduler> it = list.iterator();
            while (it.hasNext()) {
                it.next().c(this.mWorkSpecId);
            }
            Schedulers.b(this.mConfiguration, this.mWorkDatabase, this.mSchedulers);
        }
    }
}
