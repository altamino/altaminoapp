package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class IdGeneratorKt {
    public static final int INITIAL_ID = 0;

    @NotNull
    public static final String NEXT_ALARM_MANAGER_ID_KEY = "next_alarm_manager_id";

    @NotNull
    public static final String NEXT_JOB_SCHEDULER_ID_KEY = "next_job_scheduler_id";

    @NotNull
    public static final String PREFERENCE_FILE_KEY = "androidx.work.util.id";

    public static final void c(@NotNull Context context, @NotNull SupportSQLiteDatabase sqLiteDatabase) {
        t.j(context, "context");
        t.j(sqLiteDatabase, "sqLiteDatabase");
        SharedPreferences sharedPreferences = context.getSharedPreferences(PREFERENCE_FILE_KEY, 0);
        if (sharedPreferences.contains(NEXT_JOB_SCHEDULER_ID_KEY) || sharedPreferences.contains(NEXT_JOB_SCHEDULER_ID_KEY)) {
            int i10 = sharedPreferences.getInt(NEXT_JOB_SCHEDULER_ID_KEY, 0);
            int i11 = sharedPreferences.getInt(NEXT_ALARM_MANAGER_ID_KEY, 0);
            sqLiteDatabase.u();
            try {
                sqLiteDatabase.e0(PreferenceUtils.INSERT_PREFERENCE, new Object[]{NEXT_JOB_SCHEDULER_ID_KEY, Integer.valueOf(i10)});
                sqLiteDatabase.e0(PreferenceUtils.INSERT_PREFERENCE, new Object[]{NEXT_ALARM_MANAGER_ID_KEY, Integer.valueOf(i11)});
                sharedPreferences.edit().clear().apply();
                sqLiteDatabase.d0();
            } finally {
                sqLiteDatabase.i0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int d(WorkDatabase workDatabase, String str) {
        int iLongValue;
        Long lB = workDatabase.H().b(str);
        int i10 = 0;
        if (lB != null) {
            iLongValue = (int) lB.longValue();
        } else {
            iLongValue = 0;
        }
        if (iLongValue != Integer.MAX_VALUE) {
            i10 = iLongValue + 1;
        }
        e(workDatabase, str, i10);
        return iLongValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(WorkDatabase workDatabase, String str, int i10) {
        workDatabase.H().a(new Preference(str, Long.valueOf(i10)));
    }
}
