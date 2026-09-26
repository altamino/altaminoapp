package androidx.work.impl;

import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class CleanupCallback extends RoomDatabase.Callback {

    @NotNull
    public static final CleanupCallback INSTANCE = new CleanupCallback();

    private final String e() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < " + d() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    @Override // androidx.room.RoomDatabase.Callback
    public void c(@NotNull SupportSQLiteDatabase db) {
        t.j(db, "db");
        super.c(db);
        db.u();
        try {
            db.W(e());
            db.d0();
        } finally {
            db.i0();
        }
    }

    private CleanupCallback() {
    }

    public final long d() {
        return System.currentTimeMillis() - WorkDatabaseKt.PRUNE_THRESHOLD_MILLIS;
    }
}
