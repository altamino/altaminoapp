package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import androidx.sqlite.db.SupportSQLiteQuery;
import e8.r;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class FrameworkSQLiteDatabase$query$cursorFactory$1 extends v implements r<SQLiteDatabase, SQLiteCursorDriver, String, SQLiteQuery, SQLiteCursor> {
    final /* synthetic */ SupportSQLiteQuery $query;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FrameworkSQLiteDatabase$query$cursorFactory$1(SupportSQLiteQuery supportSQLiteQuery) {
        super(4);
        this.$query = supportSQLiteQuery;
    }

    @Override // e8.r
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final SQLiteCursor invoke(@Nullable SQLiteDatabase sQLiteDatabase, @Nullable SQLiteCursorDriver sQLiteCursorDriver, @Nullable String str, @Nullable SQLiteQuery sQLiteQuery) {
        SupportSQLiteQuery supportSQLiteQuery = this.$query;
        t.g(sQLiteQuery);
        supportSQLiteQuery.e(new FrameworkSQLiteProgram(sQLiteQuery));
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }
}
