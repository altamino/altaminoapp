package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.net.Network;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkGenerationalId;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi
@RestrictTo
public class SystemJobService extends JobService implements ExecutionListener {
    private static final String TAG = Logger.i("SystemJobService");
    private final Map<WorkGenerationalId, JobParameters> mJobParameters = new HashMap();
    private final StartStopTokens mStartStopTokens = new StartStopTokens();
    private WorkManagerImpl mWorkManagerImpl;

    @RequiresApi
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static String[] a(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentAuthorities();
        }

        @DoNotInline
        static Uri[] b(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentUris();
        }
    }

    @RequiresApi
    static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static Network a(JobParameters jobParameters) {
            return jobParameters.getNetwork();
        }
    }

    @Nullable
    private static WorkGenerationalId a(@NonNull JobParameters parameters) {
        try {
            PersistableBundle extras = parameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new WorkGenerationalId(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(@NonNull JobParameters params) {
        WorkerParameters.RuntimeExtras runtimeExtras;
        if (this.mWorkManagerImpl == null) {
            Logger.e().a(TAG, "WorkManager is not initialized; requesting retry.");
            jobFinished(params, true);
            return false;
        }
        WorkGenerationalId workGenerationalIdA = a(params);
        if (workGenerationalIdA == null) {
            Logger.e().c(TAG, "WorkSpec id not found!");
            return false;
        }
        synchronized (this.mJobParameters) {
            try {
                if (this.mJobParameters.containsKey(workGenerationalIdA)) {
                    Logger.e().a(TAG, "Job is already being executed by SystemJobService: " + workGenerationalIdA);
                    return false;
                }
                Logger.e().a(TAG, "onStartJob for " + workGenerationalIdA);
                this.mJobParameters.put(workGenerationalIdA, params);
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 24) {
                    runtimeExtras = new WorkerParameters.RuntimeExtras();
                    if (Api24Impl.b(params) != null) {
                        runtimeExtras.triggeredContentUris = Arrays.asList(Api24Impl.b(params));
                    }
                    if (Api24Impl.a(params) != null) {
                        runtimeExtras.triggeredContentAuthorities = Arrays.asList(Api24Impl.a(params));
                    }
                    if (i10 >= 28) {
                        runtimeExtras.network = Api28Impl.a(params);
                    }
                } else {
                    runtimeExtras = null;
                }
                this.mWorkManagerImpl.w(this.mStartStopTokens.d(workGenerationalIdA), runtimeExtras);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(@NonNull JobParameters params) {
        if (this.mWorkManagerImpl == null) {
            Logger.e().a(TAG, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        WorkGenerationalId workGenerationalIdA = a(params);
        if (workGenerationalIdA == null) {
            Logger.e().c(TAG, "WorkSpec id not found!");
            return false;
        }
        Logger.e().a(TAG, "onStopJob for " + workGenerationalIdA);
        synchronized (this.mJobParameters) {
            this.mJobParameters.remove(workGenerationalIdA);
        }
        StartStopToken startStopTokenB = this.mStartStopTokens.b(workGenerationalIdA);
        if (startStopTokenB != null) {
            this.mWorkManagerImpl.y(startStopTokenB);
        }
        return !this.mWorkManagerImpl.m().j(workGenerationalIdA.b());
    }

    @Override // androidx.work.impl.ExecutionListener
    /* JADX INFO: renamed from: e */
    public void l(@NonNull WorkGenerationalId id, boolean needsReschedule) {
        JobParameters jobParametersRemove;
        Logger.e().a(TAG, id.b() + " executed on JobScheduler");
        synchronized (this.mJobParameters) {
            jobParametersRemove = this.mJobParameters.remove(id);
        }
        this.mStartStopTokens.b(id);
        if (jobParametersRemove != null) {
            jobFinished(jobParametersRemove, needsReschedule);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            WorkManagerImpl workManagerImplK = WorkManagerImpl.k(getApplicationContext());
            this.mWorkManagerImpl = workManagerImplK;
            workManagerImplK.m().g(this);
        } catch (IllegalStateException unused) {
            if (Application.class.equals(getApplication().getClass())) {
                Logger.e().k(TAG, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
                return;
            }
            throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        WorkManagerImpl workManagerImpl = this.mWorkManagerImpl;
        if (workManagerImpl != null) {
            workManagerImpl.m().n(this);
        }
    }
}
