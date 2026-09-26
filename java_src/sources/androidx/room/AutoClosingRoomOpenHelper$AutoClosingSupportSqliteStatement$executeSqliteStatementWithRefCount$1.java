package androidx.room;

import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes2.dex */
final class AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$executeSqliteStatementWithRefCount$1<T> extends kotlin.jvm.internal.v implements e8.l<SupportSQLiteDatabase, T> {
    final /* synthetic */ e8.l<SupportSQLiteStatement, T> $block;
    final /* synthetic */ AutoClosingRoomOpenHelper.AutoClosingSupportSqliteStatement this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$executeSqliteStatementWithRefCount$1(AutoClosingRoomOpenHelper.AutoClosingSupportSqliteStatement autoClosingSupportSqliteStatement, e8.l<? super SupportSQLiteStatement, ? extends T> lVar) {
        super(1);
        this.this$0 = autoClosingSupportSqliteStatement;
        this.$block = lVar;
    }

    @Override // e8.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final T invoke(@NotNull SupportSQLiteDatabase db) {
        kotlin.jvm.internal.t.j(db, "db");
        SupportSQLiteStatement supportSQLiteStatementQ0 = db.q0(this.this$0.sql);
        this.this$0.d(supportSQLiteStatementQ0);
        return this.$block.invoke(supportSQLiteStatementQ0);
    }
}
