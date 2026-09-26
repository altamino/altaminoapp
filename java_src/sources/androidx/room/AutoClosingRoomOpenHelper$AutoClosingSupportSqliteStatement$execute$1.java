package androidx.room;

import androidx.sqlite.db.SupportSQLiteStatement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$execute$1 extends kotlin.jvm.internal.v implements e8.l<SupportSQLiteStatement, Object> {
    public static final AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$execute$1 INSTANCE = new AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$execute$1();

    AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$execute$1() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SupportSQLiteStatement statement) {
        kotlin.jvm.internal.t.j(statement, "statement");
        statement.execute();
        return null;
    }
}
