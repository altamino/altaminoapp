package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.arch.core.util.Function;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo
public class PreferenceUtils {
    public static final String CREATE_PREFERENCE = "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))";
    public static final String INSERT_PREFERENCE = "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)";
    public static final String KEY_LAST_CANCEL_ALL_TIME_MS = "last_cancel_all_time_ms";
    private static final String KEY_LAST_FORCE_STOP_MS = "last_force_stop_ms";
    public static final String KEY_RESCHEDULE_NEEDED = "reschedule_needed";
    public static final String PREFERENCES_FILE_NAME = "androidx.work.util.preferences";
    private final WorkDatabase mWorkDatabase;

    /* JADX INFO: renamed from: androidx.work.impl.utils.PreferenceUtils$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    class AnonymousClass1 implements Function<Long, Long> {
        final /* synthetic */ PreferenceUtils this$0;

        @Override // androidx.arch.core.util.Function
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long apply(Long value) {
            return Long.valueOf(value != null ? value.longValue() : 0L);
        }
    }

    public static void d(@NonNull Context context, @NonNull SupportSQLiteDatabase sqLiteDatabase) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFERENCES_FILE_NAME, 0);
        if (sharedPreferences.contains(KEY_RESCHEDULE_NEEDED) || sharedPreferences.contains(KEY_LAST_CANCEL_ALL_TIME_MS)) {
            long j6 = sharedPreferences.getLong(KEY_LAST_CANCEL_ALL_TIME_MS, 0L);
            long j10 = sharedPreferences.getBoolean(KEY_RESCHEDULE_NEEDED, false) ? 1L : 0L;
            sqLiteDatabase.u();
            try {
                sqLiteDatabase.e0(INSERT_PREFERENCE, new Object[]{KEY_LAST_CANCEL_ALL_TIME_MS, Long.valueOf(j6)});
                sqLiteDatabase.e0(INSERT_PREFERENCE, new Object[]{KEY_RESCHEDULE_NEEDED, Long.valueOf(j10)});
                sharedPreferences.edit().clear().apply();
                sqLiteDatabase.d0();
            } finally {
                sqLiteDatabase.i0();
            }
        }
    }

    public long a() {
        Long lB = this.mWorkDatabase.H().b(KEY_LAST_CANCEL_ALL_TIME_MS);
        if (lB != null) {
            return lB.longValue();
        }
        return 0L;
    }

    public long b() {
        Long lB = this.mWorkDatabase.H().b(KEY_LAST_FORCE_STOP_MS);
        if (lB != null) {
            return lB.longValue();
        }
        return 0L;
    }

    public boolean c() {
        Long lB = this.mWorkDatabase.H().b(KEY_RESCHEDULE_NEEDED);
        return lB != null && lB.longValue() == 1;
    }

    public void e(final long timeMillis) {
        this.mWorkDatabase.H().a(new Preference(KEY_LAST_CANCEL_ALL_TIME_MS, Long.valueOf(timeMillis)));
    }

    public void f(long lastForceStopTimeMillis) {
        this.mWorkDatabase.H().a(new Preference(KEY_LAST_FORCE_STOP_MS, Long.valueOf(lastForceStopTimeMillis)));
    }

    public void g(boolean needsReschedule) {
        this.mWorkDatabase.H().a(new Preference(KEY_RESCHEDULE_NEEDED, needsReschedule));
    }

    public PreferenceUtils(@NonNull WorkDatabase workDatabase) {
        this.mWorkDatabase = workDatabase;
    }
}
