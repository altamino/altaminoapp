package androidx.core.app;

import android.app.AlarmManager;
import android.app.PendingIntent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
public final class AlarmManagerCompat {

    @RequiresApi
    static class Api21Impl {
        @DoNotInline
        static AlarmManager.AlarmClockInfo a(long j6, PendingIntent pendingIntent) {
            return new AlarmManager.AlarmClockInfo(j6, pendingIntent);
        }

        @DoNotInline
        static void b(AlarmManager alarmManager, Object obj, PendingIntent pendingIntent) {
            alarmManager.setAlarmClock((AlarmManager.AlarmClockInfo) obj, pendingIntent);
        }

        private Api21Impl() {
        }
    }

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static void a(AlarmManager alarmManager, int i10, long j6, PendingIntent pendingIntent) {
            alarmManager.setExact(i10, j6, pendingIntent);
        }
    }

    @RequiresApi
    static class Api23Impl {
        private Api23Impl() {
        }

        @DoNotInline
        static void a(AlarmManager alarmManager, int i10, long j6, PendingIntent pendingIntent) {
            alarmManager.setAndAllowWhileIdle(i10, j6, pendingIntent);
        }

        @DoNotInline
        static void b(AlarmManager alarmManager, int i10, long j6, PendingIntent pendingIntent) {
            alarmManager.setExactAndAllowWhileIdle(i10, j6, pendingIntent);
        }
    }

    private AlarmManagerCompat() {
    }
}
