package androidx.room;

import androidx.sqlite.db.SupportSQLiteDatabase;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
/* synthetic */ class AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1 extends kotlin.jvm.internal.q implements e8.l<SupportSQLiteDatabase, Boolean> {
    public static final AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1 INSTANCE = new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1();

    AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1() {
        super(1, SupportSQLiteDatabase.class, "inTransaction", "inTransaction()Z", 0);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull SupportSQLiteDatabase p0) {
        kotlin.jvm.internal.t.j(p0, "p0");
        return Boolean.valueOf(p0.z0());
    }
}
