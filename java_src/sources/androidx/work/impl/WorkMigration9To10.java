package androidx.work.impl;

import android.content.Context;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.impl.utils.IdGeneratorKt;
import androidx.work.impl.utils.PreferenceUtils;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class WorkMigration9To10 extends Migration {

    @NotNull
    private final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkMigration9To10(@NotNull Context context) {
        super(9, 10);
        t.j(context, "context");
        this.context = context;
    }

    @Override // androidx.room.migration.Migration
    public void a(@NotNull SupportSQLiteDatabase db) {
        t.j(db, "db");
        db.W(PreferenceUtils.CREATE_PREFERENCE);
        PreferenceUtils.d(this.context, db);
        IdGeneratorKt.c(this.context, db);
    }
}
