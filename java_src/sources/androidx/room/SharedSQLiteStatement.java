package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@RestrictTo
public abstract class SharedSQLiteStatement {

    @NotNull
    private final RoomDatabase database;

    @NotNull
    private final AtomicBoolean lock;

    @NotNull
    private final w7.m stmt$delegate;

    @NotNull
    protected abstract String e();

    public SharedSQLiteStatement(@NotNull RoomDatabase database) {
        kotlin.jvm.internal.t.j(database, "database");
        this.database = database;
        this.lock = new AtomicBoolean(false);
        this.stmt$delegate = w7.o.a(new SharedSQLiteStatement$stmt$2(this));
    }

    private final SupportSQLiteStatement f() {
        return (SupportSQLiteStatement) this.stmt$delegate.getValue();
    }

    private final SupportSQLiteStatement g(boolean z6) {
        return z6 ? f() : d();
    }

    protected void c() {
        this.database.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SupportSQLiteStatement d() {
        return this.database.f(e());
    }

    @NotNull
    public SupportSQLiteStatement b() {
        c();
        return g(this.lock.compareAndSet(false, true));
    }

    public void h(@NotNull SupportSQLiteStatement statement) {
        kotlin.jvm.internal.t.j(statement, "statement");
        if (statement == f()) {
            this.lock.set(false);
        }
    }
}
