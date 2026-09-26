package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteStatement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public abstract class EntityInsertionAdapter<T> extends SharedSQLiteStatement {
    protected abstract void i(@Nullable SupportSQLiteStatement supportSQLiteStatement, T t5);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EntityInsertionAdapter(@NotNull RoomDatabase database) {
        super(database);
        kotlin.jvm.internal.t.j(database, "database");
    }

    public final void j(T t5) {
        SupportSQLiteStatement supportSQLiteStatementB = b();
        try {
            i(supportSQLiteStatementB, t5);
            supportSQLiteStatementB.o0();
        } finally {
            h(supportSQLiteStatementB);
        }
    }

    public final long k(T t5) {
        SupportSQLiteStatement supportSQLiteStatementB = b();
        try {
            i(supportSQLiteStatementB, t5);
            return supportSQLiteStatementB.o0();
        } finally {
            h(supportSQLiteStatementB);
        }
    }
}
