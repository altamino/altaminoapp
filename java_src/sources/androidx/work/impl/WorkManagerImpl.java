package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.Operation;
import androidx.work.R;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.WorkRequest;
import androidx.work.WorkerParameters;
import androidx.work.impl.background.greedy.GreedyScheduler;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.CancelWorkRunnable;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.PreferenceUtils;
import androidx.work.impl.utils.StartWorkRunnable;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import androidx.work.multiprocess.RemoteWorkManager;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo
public class WorkManagerImpl extends WorkManager {
    public static final int MAX_PRE_JOB_SCHEDULER_API_LEVEL = 22;
    public static final int MIN_JOB_SCHEDULER_API_LEVEL = 23;
    public static final String REMOTE_WORK_MANAGER_CLIENT = "androidx.work.multiprocess.RemoteWorkManagerClient";
    private Configuration mConfiguration;
    private Context mContext;
    private boolean mForceStopRunnableCompleted;
    private PreferenceUtils mPreferenceUtils;
    private Processor mProcessor;
    private volatile RemoteWorkManager mRemoteWorkManager;
    private BroadcastReceiver.PendingResult mRescheduleReceiverResult;
    private List<Scheduler> mSchedulers;
    private final Trackers mTrackers;
    private WorkDatabase mWorkDatabase;
    private TaskExecutor mWorkTaskExecutor;
    private static final String TAG = Logger.i("WorkManagerImpl");
    private static WorkManagerImpl sDelegatedInstance = null;
    private static WorkManagerImpl sDefaultInstance = null;
    private static final Object sLock = new Object();

    /* JADX INFO: renamed from: androidx.work.impl.WorkManagerImpl$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ WorkManagerImpl this$0;
        final /* synthetic */ SettableFuture val$future;
        final /* synthetic */ PreferenceUtils val$preferenceUtils;

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.val$future.o(Long.valueOf(this.val$preferenceUtils.a()));
            } catch (Throwable th) {
                this.val$future.p(th);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.WorkManagerImpl$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes7.dex */
    class AnonymousClass2 implements Function<List<WorkSpec.WorkInfoPojo>, WorkInfo> {
        final /* synthetic */ WorkManagerImpl this$0;

        @Override // androidx.arch.core.util.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public WorkInfo apply(List<WorkSpec.WorkInfoPojo> input) {
            if (input == null || input.size() <= 0) {
                return null;
            }
            return input.get(0).a();
        }
    }

    @RestrictTo
    public WorkManagerImpl(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor workTaskExecutor) {
        this(context, configuration, workTaskExecutor, context.getResources().getBoolean(R.bool.workmanager_test_configuration));
    }

    @NonNull
    @RestrictTo
    public List<Scheduler> g(@NonNull Context context, @NonNull Configuration configuration, @NonNull Trackers trackers) {
        return Arrays.asList(Schedulers.a(context, this), new GreedyScheduler(context, configuration, trackers, this));
    }

    @NonNull
    @RestrictTo
    public Context h() {
        return this.mContext;
    }

    @NonNull
    public Configuration i() {
        return this.mConfiguration;
    }

    @NonNull
    @RestrictTo
    public PreferenceUtils l() {
        return this.mPreferenceUtils;
    }

    @NonNull
    @RestrictTo
    public Processor m() {
        return this.mProcessor;
    }

    @NonNull
    @RestrictTo
    public List<Scheduler> n() {
        return this.mSchedulers;
    }

    @NonNull
    @RestrictTo
    public Trackers o() {
        return this.mTrackers;
    }

    @NonNull
    @RestrictTo
    public WorkDatabase p() {
        return this.mWorkDatabase;
    }

    @NonNull
    @RestrictTo
    public TaskExecutor q() {
        return this.mWorkTaskExecutor;
    }

    @RestrictTo
    public void v(@NonNull StartStopToken workSpecId) {
        w(workSpecId, null);
    }

    @RequiresApi
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static boolean a(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    @RestrictTo
    public static void e(@NonNull Context context, @NonNull Configuration configuration) {
        synchronized (sLock) {
            try {
                WorkManagerImpl workManagerImpl = sDelegatedInstance;
                if (workManagerImpl != null && sDefaultInstance != null) {
                    throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
                }
                if (workManagerImpl == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (sDefaultInstance == null) {
                        sDefaultInstance = new WorkManagerImpl(applicationContext, configuration, new WorkManagerTaskExecutor(configuration.m()));
                    }
                    sDelegatedInstance = sDefaultInstance;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    @RestrictTo
    @Deprecated
    public static WorkManagerImpl j() {
        synchronized (sLock) {
            try {
                WorkManagerImpl workManagerImpl = sDelegatedInstance;
                if (workManagerImpl != null) {
                    return workManagerImpl;
                }
                return sDefaultInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    @RestrictTo
    public static WorkManagerImpl k(@NonNull Context context) {
        WorkManagerImpl workManagerImplJ;
        synchronized (sLock) {
            try {
                workManagerImplJ = j();
                if (workManagerImplJ == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (!(applicationContext instanceof Configuration.Provider)) {
                        throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                    }
                    e(applicationContext, ((Configuration.Provider) applicationContext).a());
                    workManagerImplJ = k(applicationContext);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return workManagerImplJ;
    }

    @RestrictTo
    public void s() {
        synchronized (sLock) {
            try {
                this.mForceStopRunnableCompleted = true;
                BroadcastReceiver.PendingResult pendingResult = this.mRescheduleReceiverResult;
                if (pendingResult != null) {
                    pendingResult.finish();
                    this.mRescheduleReceiverResult = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @RestrictTo
    public void u(@NonNull BroadcastReceiver.PendingResult rescheduleReceiverResult) {
        synchronized (sLock) {
            try {
                BroadcastReceiver.PendingResult pendingResult = this.mRescheduleReceiverResult;
                if (pendingResult != null) {
                    pendingResult.finish();
                }
                this.mRescheduleReceiverResult = rescheduleReceiverResult;
                if (this.mForceStopRunnableCompleted) {
                    rescheduleReceiverResult.finish();
                    this.mRescheduleReceiverResult = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @RestrictTo
    public void w(@NonNull StartStopToken workSpecId, @Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
        this.mWorkTaskExecutor.a(new StartWorkRunnable(this, workSpecId, runtimeExtras));
    }

    @RestrictTo
    public void x(@NonNull WorkGenerationalId id) {
        this.mWorkTaskExecutor.a(new StopWorkRunnable(this, new StartStopToken(id), true));
    }

    @RestrictTo
    public void y(@NonNull StartStopToken workSpecId) {
        this.mWorkTaskExecutor.a(new StopWorkRunnable(this, workSpecId, false));
    }

    @RestrictTo
    public WorkManagerImpl(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor workTaskExecutor, boolean useTestDatabase) {
        this(context, configuration, workTaskExecutor, WorkDatabase.F(context.getApplicationContext(), workTaskExecutor.c(), useTestDatabase));
    }

    private void r(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor workTaskExecutor, @NonNull WorkDatabase workDatabase, @NonNull List<Scheduler> schedulers, @NonNull Processor processor) {
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mConfiguration = configuration;
        this.mWorkTaskExecutor = workTaskExecutor;
        this.mWorkDatabase = workDatabase;
        this.mSchedulers = schedulers;
        this.mProcessor = processor;
        this.mPreferenceUtils = new PreferenceUtils(workDatabase);
        this.mForceStopRunnableCompleted = false;
        if (Build.VERSION.SDK_INT >= 24 && Api24Impl.a(applicationContext)) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        this.mWorkTaskExecutor.a(new ForceStopRunnable(applicationContext, this));
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation a(@NonNull final String tag) {
        CancelWorkRunnable cancelWorkRunnableD = CancelWorkRunnable.d(tag, this);
        this.mWorkTaskExecutor.a(cancelWorkRunnableD);
        return cancelWorkRunnableD.e();
    }

    @Override // androidx.work.WorkManager
    @NonNull
    public Operation c(@NonNull List<? extends WorkRequest> requests) {
        if (!requests.isEmpty()) {
            return new WorkContinuationImpl(this, requests).a();
        }
        throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
    }

    @NonNull
    public Operation f(@NonNull UUID id) {
        CancelWorkRunnable cancelWorkRunnableB = CancelWorkRunnable.b(id, this);
        this.mWorkTaskExecutor.a(cancelWorkRunnableB);
        return cancelWorkRunnableB.e();
    }

    public void t() {
        SystemJobScheduler.a(h());
        p().M().t();
        Schedulers.b(i(), p(), n());
    }

    @RestrictTo
    public WorkManagerImpl(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor workTaskExecutor, @NonNull WorkDatabase database) {
        Context applicationContext = context.getApplicationContext();
        Logger.h(new Logger.LogcatLogger(configuration.j()));
        Trackers trackers = new Trackers(applicationContext, workTaskExecutor);
        this.mTrackers = trackers;
        List<Scheduler> listG = g(applicationContext, configuration, trackers);
        r(context, configuration, workTaskExecutor, database, listG, new Processor(context, configuration, workTaskExecutor, database, listG));
    }

    @RestrictTo
    public WorkManagerImpl(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor workTaskExecutor, @NonNull WorkDatabase workDatabase, @NonNull List<Scheduler> schedulers, @NonNull Processor processor) {
        this(context, configuration, workTaskExecutor, workDatabase, schedulers, processor, new Trackers(context.getApplicationContext(), workTaskExecutor));
    }

    @RestrictTo
    public WorkManagerImpl(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor workTaskExecutor, @NonNull WorkDatabase workDatabase, @NonNull List<Scheduler> schedulers, @NonNull Processor processor, @NonNull Trackers trackers) {
        this.mTrackers = trackers;
        r(context, configuration, workTaskExecutor, workDatabase, schedulers, processor);
    }
}
