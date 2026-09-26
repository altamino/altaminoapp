package androidx.work.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.PackageManagerHelper;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public class Schedulers {
    public static final String GCM_SCHEDULER = "androidx.work.impl.background.gcm.GcmScheduler";
    private static final String TAG = Logger.i("Schedulers");

    @NonNull
    static Scheduler a(@NonNull Context context, @NonNull WorkManagerImpl workManager) {
        SystemJobScheduler systemJobScheduler = new SystemJobScheduler(context, workManager);
        PackageManagerHelper.a(context, SystemJobService.class, true);
        Logger.e().a(TAG, "Created SystemJobScheduler and enabled SystemJobService");
        return systemJobScheduler;
    }

    public static void b(@NonNull Configuration configuration, @NonNull WorkDatabase workDatabase, @Nullable List<Scheduler> schedulers) {
        if (schedulers == null || schedulers.size() == 0) {
            return;
        }
        WorkSpecDao workSpecDaoM = workDatabase.M();
        workDatabase.e();
        try {
            List<WorkSpec> listW = workSpecDaoM.w(configuration.h());
            List<WorkSpec> listJ = workSpecDaoM.j(200);
            if (listW != null && listW.size() > 0) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                Iterator<WorkSpec> it = listW.iterator();
                while (it.hasNext()) {
                    workSpecDaoM.u(it.next().id, jCurrentTimeMillis);
                }
            }
            workDatabase.D();
            workDatabase.i();
            if (listW != null && listW.size() > 0) {
                WorkSpec[] workSpecArr = (WorkSpec[]) listW.toArray(new WorkSpec[listW.size()]);
                for (Scheduler scheduler : schedulers) {
                    if (scheduler.b()) {
                        scheduler.d(workSpecArr);
                    }
                }
            }
            if (listJ == null || listJ.size() <= 0) {
                return;
            }
            WorkSpec[] workSpecArr2 = (WorkSpec[]) listJ.toArray(new WorkSpec[listJ.size()]);
            for (Scheduler scheduler2 : schedulers) {
                if (!scheduler2.b()) {
                    scheduler2.d(workSpecArr2);
                }
            }
        } catch (Throwable th) {
            workDatabase.i();
            throw th;
        }
    }

    private Schedulers() {
    }
}
