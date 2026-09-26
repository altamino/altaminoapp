package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.core.util.Consumer;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabasePathHelper;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
public class ForceStopRunnable implements Runnable {

    @VisibleForTesting
    static final String ACTION_FORCE_STOP_RESCHEDULE = "ACTION_FORCE_STOP_RESCHEDULE";
    private static final int ALARM_ID = -1;
    private static final long BACKOFF_DURATION_MS = 300;

    @VisibleForTesting
    static final int MAX_ATTEMPTS = 3;
    private static final String TAG = Logger.i("ForceStopRunnable");
    private static final long TEN_YEARS = TimeUnit.DAYS.toMillis(3650);
    private final Context mContext;
    private final PreferenceUtils mPreferenceUtils;
    private int mRetryCount = 0;
    private final WorkManagerImpl mWorkManager;

    @RestrictTo
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {
        private static final String TAG = Logger.i("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, @Nullable Intent intent) {
            if (intent == null || !ForceStopRunnable.ACTION_FORCE_STOP_RESCHEDULE.equals(intent.getAction())) {
                return;
            }
            Logger.e().j(TAG, "Rescheduling alarm that keeps track of force-stops.");
            ForceStopRunnable.g(context);
        }
    }

    @SuppressLint({"ClassVerificationFailure"})
    @VisibleForTesting
    public boolean e() {
        try {
            int i10 = Build.VERSION.SDK_INT;
            PendingIntent pendingIntentD = d(this.mContext, i10 >= 31 ? 570425344 : 536870912);
            if (i10 >= 30) {
                if (pendingIntentD != null) {
                    pendingIntentD.cancel();
                }
                List historicalProcessExitReasons = ((ActivityManager) this.mContext.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                    long jB = this.mPreferenceUtils.b();
                    for (int i11 = 0; i11 < historicalProcessExitReasons.size(); i11++) {
                        ApplicationExitInfo applicationExitInfoA = b.a(historicalProcessExitReasons.get(i11));
                        if (applicationExitInfoA.getReason() == 10 && applicationExitInfoA.getTimestamp() >= jB) {
                            return true;
                        }
                    }
                }
            } else if (pendingIntentD == null) {
                g(this.mContext);
                return true;
            }
            return false;
        } catch (IllegalArgumentException e) {
            e = e;
            Logger.e().l(TAG, "Ignoring exception", e);
            return true;
        } catch (SecurityException e2) {
            e = e2;
            Logger.e().l(TAG, "Ignoring exception", e);
            return true;
        }
    }

    @VisibleForTesting
    static Intent c(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction(ACTION_FORCE_STOP_RESCHEDULE);
        return intent;
    }

    @SuppressLint({"ClassVerificationFailure"})
    static void g(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent pendingIntentD = d(context, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728);
        long jCurrentTimeMillis = System.currentTimeMillis() + TEN_YEARS;
        if (alarmManager != null) {
            alarmManager.setExact(0, jCurrentTimeMillis, pendingIntentD);
        }
    }

    @VisibleForTesting
    public boolean a() {
        boolean zI = SystemJobScheduler.i(this.mContext, this.mWorkManager);
        WorkDatabase workDatabaseP = this.mWorkManager.p();
        WorkSpecDao workSpecDaoM = workDatabaseP.M();
        WorkProgressDao workProgressDaoL = workDatabaseP.L();
        workDatabaseP.e();
        try {
            List<WorkSpec> listY = workSpecDaoM.y();
            boolean z6 = (listY == null || listY.isEmpty()) ? false : true;
            if (z6) {
                for (WorkSpec workSpec : listY) {
                    workSpecDaoM.k(WorkInfo.State.ENQUEUED, workSpec.id);
                    workSpecDaoM.u(workSpec.id, -1L);
                }
            }
            workProgressDaoL.b();
            workDatabaseP.D();
            workDatabaseP.i();
            return z6 || zI;
        } catch (Throwable th) {
            workDatabaseP.i();
            throw th;
        }
    }

    @VisibleForTesting
    public boolean f() {
        Configuration configurationI = this.mWorkManager.i();
        if (TextUtils.isEmpty(configurationI.c())) {
            Logger.e().a(TAG, "The default process name was not specified.");
            return true;
        }
        boolean zB = ProcessUtils.b(this.mContext, configurationI);
        Logger.e().a(TAG, "Is default app process = " + zB);
        return zB;
    }

    @VisibleForTesting
    public boolean h() {
        return this.mWorkManager.l().c();
    }

    public ForceStopRunnable(@NonNull Context context, @NonNull WorkManagerImpl workManager) {
        this.mContext = context.getApplicationContext();
        this.mWorkManager = workManager;
        this.mPreferenceUtils = workManager.l();
    }

    private static PendingIntent d(Context context, int flags) {
        return PendingIntent.getBroadcast(context, -1, c(context), flags);
    }

    @VisibleForTesting
    public void b() {
        boolean zA = a();
        if (h()) {
            Logger.e().a(TAG, "Rescheduling Workers.");
            this.mWorkManager.t();
            this.mWorkManager.l().g(false);
        } else if (e()) {
            Logger.e().a(TAG, "Application was force-stopped, rescheduling.");
            this.mWorkManager.t();
            this.mPreferenceUtils.f(System.currentTimeMillis());
        } else if (zA) {
            Logger.e().a(TAG, "Found unfinished work, scheduling it.");
            Schedulers.b(this.mWorkManager.i(), this.mWorkManager.p(), this.mWorkManager.n());
        }
    }

    @VisibleForTesting
    public void i(long duration) {
        try {
            Thread.sleep(duration);
        } catch (InterruptedException unused) {
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i10;
        try {
            if (!f()) {
                this.mWorkManager.s();
                return;
            }
            while (true) {
                try {
                    WorkDatabasePathHelper.d(this.mContext);
                    Logger.e().a(TAG, "Performing cleanup operations.");
                    try {
                        b();
                        break;
                    } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteTableLockedException e) {
                        i10 = this.mRetryCount + 1;
                        this.mRetryCount = i10;
                        if (i10 >= 3) {
                            Logger loggerE = Logger.e();
                            String str = TAG;
                            loggerE.d(str, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                            IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                            Consumer<Throwable> consumerE = this.mWorkManager.i().e();
                            if (consumerE != null) {
                                Logger.e().b(str, "Routing exception to the specified exception handler", illegalStateException);
                                consumerE.accept(illegalStateException);
                                break;
                            }
                            throw illegalStateException;
                        }
                        long j6 = ((long) i10) * BACKOFF_DURATION_MS;
                        Logger.e().b(TAG, "Retrying after " + j6, e);
                        i(((long) this.mRetryCount) * BACKOFF_DURATION_MS);
                    }
                    long j10 = ((long) i10) * BACKOFF_DURATION_MS;
                    Logger.e().b(TAG, "Retrying after " + j10, e);
                    i(((long) this.mRetryCount) * BACKOFF_DURATION_MS);
                } catch (SQLiteException e2) {
                    Logger.e().c(TAG, "Unexpected SQLite exception during migrations");
                    IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e2);
                    Consumer<Throwable> consumerE2 = this.mWorkManager.i().e();
                    if (consumerE2 != null) {
                        consumerE2.accept(illegalStateException2);
                    } else {
                        throw illegalStateException2;
                    }
                }
            }
            this.mWorkManager.s();
        } catch (Throwable th) {
            this.mWorkManager.s();
            throw th;
        }
    }
}
