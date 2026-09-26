package androidx.media3.exoplayer.scheduler;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes4.dex */
@RequiresApi
@UnstableApi
public final class PlatformScheduler implements Scheduler {
    private static final String KEY_REQUIREMENTS = "requirements";
    private static final String KEY_SERVICE_ACTION = "service_action";
    private static final String KEY_SERVICE_PACKAGE = "service_package";
    private static final int SUPPORTED_REQUIREMENTS;
    private static final String TAG = "PlatformScheduler";
    private final int jobId;
    private final JobScheduler jobScheduler;
    private final ComponentName jobServiceComponentName;

    public static final class PlatformSchedulerService extends JobService {
        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            return false;
        }

        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            PersistableBundle extras = jobParameters.getExtras();
            int iE = new Requirements(extras.getInt("requirements")).e(this);
            if (iE == 0) {
                Util.g1(this, new Intent((String) Assertions.e(extras.getString(PlatformScheduler.KEY_SERVICE_ACTION))).setPackage((String) Assertions.e(extras.getString(PlatformScheduler.KEY_SERVICE_PACKAGE))));
                return false;
            }
            Log.i(PlatformScheduler.TAG, "Requirements not met: " + iE);
            jobFinished(jobParameters, true);
            return false;
        }
    }

    static {
        SUPPORTED_REQUIREMENTS = (Util.SDK_INT >= 26 ? 16 : 0) | 15;
    }

    private static JobInfo c(int i10, ComponentName componentName, Requirements requirements, String str, String str2) {
        Requirements requirementsA = requirements.a(SUPPORTED_REQUIREMENTS);
        if (!requirementsA.equals(requirements)) {
            Log.i(TAG, "Ignoring unsupported requirements: " + (requirementsA.g() ^ requirements.g()));
        }
        JobInfo.Builder builder = new JobInfo.Builder(i10, componentName);
        if (requirements.s()) {
            builder.setRequiredNetworkType(2);
        } else if (requirements.n()) {
            builder.setRequiredNetworkType(1);
        }
        builder.setRequiresDeviceIdle(requirements.l());
        builder.setRequiresCharging(requirements.h());
        if (Util.SDK_INT >= 26 && requirements.p()) {
            builder.setRequiresStorageNotLow(true);
        }
        builder.setPersisted(true);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString(KEY_SERVICE_ACTION, str);
        persistableBundle.putString(KEY_SERVICE_PACKAGE, str2);
        persistableBundle.putInt("requirements", requirements.g());
        builder.setExtras(persistableBundle);
        return builder.build();
    }

    @Override // androidx.media3.exoplayer.scheduler.Scheduler
    public boolean a(Requirements requirements, String str, String str2) {
        return this.jobScheduler.schedule(c(this.jobId, this.jobServiceComponentName, requirements, str2, str)) == 1;
    }

    @Override // androidx.media3.exoplayer.scheduler.Scheduler
    public Requirements b(Requirements requirements) {
        return requirements.a(SUPPORTED_REQUIREMENTS);
    }

    @Override // androidx.media3.exoplayer.scheduler.Scheduler
    public boolean cancel() {
        this.jobScheduler.cancel(this.jobId);
        return true;
    }

    @RequiresPermission
    public PlatformScheduler(Context context, int i10) {
        Context applicationContext = context.getApplicationContext();
        this.jobId = i10;
        this.jobServiceComponentName = new ComponentName(applicationContext, (Class<?>) PlatformSchedulerService.class);
        this.jobScheduler = (JobScheduler) Assertions.e((JobScheduler) applicationContext.getSystemService("jobscheduler"));
    }
}
