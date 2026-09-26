package androidx.room.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class MigrationImpl extends Migration {

    @NotNull
    private final l<SupportSQLiteDatabase, l0> migrateCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MigrationImpl(int i10, int i11, @NotNull l<? super SupportSQLiteDatabase, l0> migrateCallback) {
        super(i10, i11);
        t.j(migrateCallback, "migrateCallback");
        this.migrateCallback = migrateCallback;
    }

    @Override // androidx.room.migration.Migration
    public void a(@NotNull SupportSQLiteDatabase database) {
        t.j(database, "database");
        this.migrateCallback.invoke(database);
    }
}
