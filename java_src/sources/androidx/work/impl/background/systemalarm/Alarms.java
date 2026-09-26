package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.SystemIdInfoKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.IdGenerator;

/* JADX INFO: loaded from: classes8.dex */
@RestrictTo
class Alarms {
    private static final String TAG = Logger.i("Alarms");

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static void a(AlarmManager alarmManager, int type, long triggerAtMillis, PendingIntent operation) {
            alarmManager.setExact(type, triggerAtMillis, operation);
        }
    }

    private static void b(@NonNull Context context, @NonNull WorkGenerationalId id, int alarmId) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent service = PendingIntent.getService(context, alarmId, CommandHandler.b(context, id), 603979776);
        if (service == null || alarmManager == null) {
            return;
        }
        Logger.e().a(TAG, "Cancelling existing alarm with (workSpecId, systemId) (" + id + ", " + alarmId + ")");
        alarmManager.cancel(service);
    }

    private static void d(@NonNull Context context, @NonNull WorkGenerationalId id, int alarmId, long triggerAtMillis) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent service = PendingIntent.getService(context, alarmId, CommandHandler.b(context, id), 201326592);
        if (alarmManager != null) {
            Api19Impl.a(alarmManager, 0, triggerAtMillis, service);
        }
    }

    private Alarms() {
    }

    public static void a(@NonNull Context context, @NonNull WorkDatabase workDatabase, @NonNull WorkGenerationalId id) {
        SystemIdInfoDao systemIdInfoDaoJ = workDatabase.J();
        SystemIdInfo systemIdInfoD = systemIdInfoDaoJ.d(id);
        if (systemIdInfoD != null) {
            b(context, id, systemIdInfoD.systemId);
            Logger.e().a(TAG, "Removing SystemIdInfo for workSpecId (" + id + ")");
            systemIdInfoDaoJ.b(id);
        }
    }

    public static void c(@NonNull Context context, @NonNull WorkDatabase workDatabase, @NonNull WorkGenerationalId id, long triggerAtMillis) {
        SystemIdInfoDao systemIdInfoDaoJ = workDatabase.J();
        SystemIdInfo systemIdInfoD = systemIdInfoDaoJ.d(id);
        if (systemIdInfoD != null) {
            b(context, id, systemIdInfoD.systemId);
            d(context, id, systemIdInfoD.systemId, triggerAtMillis);
        } else {
            int iC = new IdGenerator(workDatabase).c();
            systemIdInfoDaoJ.c(SystemIdInfoKt.a(id, iC));
            d(context, id, iC, triggerAtMillis);
        }
    }
}
