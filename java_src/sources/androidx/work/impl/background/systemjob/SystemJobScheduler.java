package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Consumer;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.IdGenerator;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
@RestrictTo
public class SystemJobScheduler implements Scheduler {
    private static final String TAG = Logger.i("SystemJobScheduler");
    private final Context mContext;
    private final JobScheduler mJobScheduler;
    private final SystemJobInfoConverter mSystemJobInfoConverter;
    private final WorkManagerImpl mWorkManager;

    public SystemJobScheduler(@NonNull Context context, @NonNull WorkManagerImpl workManager) {
        this(context, workManager, (JobScheduler) context.getSystemService("jobscheduler"), new SystemJobInfoConverter(context));
    }

    @Nullable
    private static List<JobInfo> g(@NonNull Context context, @NonNull JobScheduler jobScheduler) {
        List<JobInfo> allPendingJobs;
        try {
            allPendingJobs = jobScheduler.getAllPendingJobs();
        } catch (Throwable th) {
            Logger.e().d(TAG, "getAllPendingJobs() is not reliable on this device.", th);
            allPendingJobs = null;
        }
        if (allPendingJobs == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(allPendingJobs.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : allPendingJobs) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    @Override // androidx.work.impl.Scheduler
    public boolean b() {
        return true;
    }

    public static void a(@NonNull Context context) {
        List<JobInfo> listG;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (listG = g(context, jobScheduler)) == null || listG.isEmpty()) {
            return;
        }
        Iterator<JobInfo> it = listG.iterator();
        while (it.hasNext()) {
            e(jobScheduler, it.next().getId());
        }
    }

    @Nullable
    private static WorkGenerationalId h(@NonNull JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (!extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new WorkGenerationalId(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    public static boolean i(@NonNull Context context, @NonNull WorkManagerImpl workManager) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> listG = g(context, jobScheduler);
        List<String> listE = workManager.p().J().e();
        boolean z6 = false;
        HashSet hashSet = new HashSet(listG != null ? listG.size() : 0);
        if (listG != null && !listG.isEmpty()) {
            for (JobInfo jobInfo : listG) {
                WorkGenerationalId workGenerationalIdH = h(jobInfo);
                if (workGenerationalIdH != null) {
                    hashSet.add(workGenerationalIdH.b());
                } else {
                    e(jobScheduler, jobInfo.getId());
                }
            }
        }
        Iterator<String> it = listE.iterator();
        while (it.hasNext()) {
            if (!hashSet.contains(it.next())) {
                Logger.e().a(TAG, "Reconciling jobs");
                z6 = true;
                break;
            }
        }
        if (z6) {
            WorkDatabase workDatabaseP = workManager.p();
            workDatabaseP.e();
            try {
                WorkSpecDao workSpecDaoM = workDatabaseP.M();
                Iterator<String> it2 = listE.iterator();
                while (it2.hasNext()) {
                    workSpecDaoM.u(it2.next(), -1L);
                }
                workDatabaseP.D();
            } finally {
                workDatabaseP.i();
            }
        }
        return z6;
    }

    @Override // androidx.work.impl.Scheduler
    public void c(@NonNull String workSpecId) {
        List<Integer> listF = f(this.mContext, this.mJobScheduler, workSpecId);
        if (listF == null || listF.isEmpty()) {
            return;
        }
        Iterator<Integer> it = listF.iterator();
        while (it.hasNext()) {
            e(this.mJobScheduler, it.next().intValue());
        }
        this.mWorkManager.p().J().g(workSpecId);
    }

    @Override // androidx.work.impl.Scheduler
    public void d(@NonNull WorkSpec... workSpecs) {
        List<Integer> listF;
        WorkDatabase workDatabaseP = this.mWorkManager.p();
        IdGenerator idGenerator = new IdGenerator(workDatabaseP);
        for (WorkSpec workSpec : workSpecs) {
            workDatabaseP.e();
            try {
                WorkSpec workSpecS = workDatabaseP.M().s(workSpec.id);
                if (workSpecS == null) {
                    Logger.e().k(TAG, "Skipping scheduling " + workSpec.id + " because it's no longer in the DB");
                    workDatabaseP.D();
                } else if (workSpecS.state != WorkInfo.State.ENQUEUED) {
                    Logger.e().k(TAG, "Skipping scheduling " + workSpec.id + " because it is no longer enqueued");
                    workDatabaseP.D();
                } else {
                    WorkGenerationalId workGenerationalIdA = WorkSpecKt.a(workSpec);
                    SystemIdInfo systemIdInfoD = workDatabaseP.J().d(workGenerationalIdA);
                    int iE = systemIdInfoD != null ? systemIdInfoD.systemId : idGenerator.e(this.mWorkManager.i().i(), this.mWorkManager.i().g());
                    if (systemIdInfoD == null) {
                        this.mWorkManager.p().J().c(SystemIdInfoKt.a(workGenerationalIdA, iE));
                    }
                    j(workSpec, iE);
                    if (Build.VERSION.SDK_INT == 23 && (listF = f(this.mContext, this.mJobScheduler, workSpec.id)) != null) {
                        int iIndexOf = listF.indexOf(Integer.valueOf(iE));
                        if (iIndexOf >= 0) {
                            listF.remove(iIndexOf);
                        }
                        j(workSpec, !listF.isEmpty() ? listF.get(0).intValue() : idGenerator.e(this.mWorkManager.i().i(), this.mWorkManager.i().g()));
                    }
                    workDatabaseP.D();
                }
                workDatabaseP.i();
            } catch (Throwable th) {
                workDatabaseP.i();
                throw th;
            }
        }
    }

    @VisibleForTesting
    public void j(@NonNull WorkSpec workSpec, int jobId) {
        JobInfo jobInfoA = this.mSystemJobInfoConverter.a(workSpec, jobId);
        Logger loggerE = Logger.e();
        String str = TAG;
        loggerE.a(str, "Scheduling work ID " + workSpec.id + "Job ID " + jobId);
        try {
            if (this.mJobScheduler.schedule(jobInfoA) == 0) {
                Logger.e().k(str, "Unable to schedule work ID " + workSpec.id);
                if (workSpec.expedited && workSpec.outOfQuotaPolicy == OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST) {
                    workSpec.expedited = false;
                    Logger.e().a(str, String.format("Scheduling a non-expedited job (work ID %s)", workSpec.id));
                    j(workSpec, jobId);
                }
            }
        } catch (IllegalStateException e) {
            List<JobInfo> listG = g(this.mContext, this.mJobScheduler);
            String str2 = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(listG != null ? listG.size() : 0), Integer.valueOf(this.mWorkManager.p().M().q().size()), Integer.valueOf(this.mWorkManager.i().h()));
            Logger.e().c(TAG, str2);
            IllegalStateException illegalStateException = new IllegalStateException(str2, e);
            Consumer<Throwable> consumerL = this.mWorkManager.i().l();
            if (consumerL == null) {
                throw illegalStateException;
            }
            consumerL.accept(illegalStateException);
        } catch (Throwable th) {
            Logger.e().d(TAG, "Unable to schedule " + workSpec, th);
        }
    }

    @VisibleForTesting
    public SystemJobScheduler(@NonNull Context context, @NonNull WorkManagerImpl workManager, @NonNull JobScheduler jobScheduler, @NonNull SystemJobInfoConverter systemJobInfoConverter) {
        this.mContext = context;
        this.mWorkManager = workManager;
        this.mJobScheduler = jobScheduler;
        this.mSystemJobInfoConverter = systemJobInfoConverter;
    }

    private static void e(@NonNull JobScheduler jobScheduler, int id) {
        try {
            jobScheduler.cancel(id);
        } catch (Throwable th) {
            Logger.e().d(TAG, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(id)), th);
        }
    }

    @Nullable
    private static List<Integer> f(@NonNull Context context, @NonNull JobScheduler jobScheduler, @NonNull String workSpecId) {
        List<JobInfo> listG = g(context, jobScheduler);
        if (listG == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : listG) {
            WorkGenerationalId workGenerationalIdH = h(jobInfo);
            if (workGenerationalIdH != null && workSpecId.equals(workGenerationalIdH.b())) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }
}
