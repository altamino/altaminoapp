package androidx.work.impl;

import android.content.Context;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.impl.utils.PreferenceUtils;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class RescheduleMigration extends Migration {

    @NotNull
    private final Context mContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RescheduleMigration(@NotNull Context mContext, int i10, int i11) {
        super(i10, i11);
        t.j(mContext, "mContext");
        this.mContext = mContext;
    }

    @Override // androidx.room.migration.Migration
    public void a(@NotNull SupportSQLiteDatabase db) {
        t.j(db, "db");
        if (this.endVersion >= 10) {
            db.e0(PreferenceUtils.INSERT_PREFERENCE, new Object[]{PreferenceUtils.KEY_RESCHEDULE_NEEDED, 1});
        } else {
            this.mContext.getSharedPreferences(PreferenceUtils.PREFERENCES_FILE_NAME, 0).edit().putBoolean(PreferenceUtils.KEY_RESCHEDULE_NEEDED, true).apply();
        }
    }
}
