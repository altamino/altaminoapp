package androidx.room;

import androidx.sqlite.db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class QueryInterceptorStatement implements SupportSQLiteStatement {

    @NotNull
    private final List<Object> bindArgsCache;

    @NotNull
    private final SupportSQLiteStatement delegate;

    @NotNull
    private final RoomDatabase.QueryCallback queryCallback;

    @NotNull
    private final Executor queryCallbackExecutor;

    @NotNull
    private final String sqlStatement;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public QueryInterceptorStatement(@NotNull SupportSQLiteStatement delegate, @NotNull String sqlStatement, @NotNull Executor queryCallbackExecutor, @NotNull RoomDatabase.QueryCallback queryCallback) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        kotlin.jvm.internal.t.j(sqlStatement, "sqlStatement");
        kotlin.jvm.internal.t.j(queryCallbackExecutor, "queryCallbackExecutor");
        kotlin.jvm.internal.t.j(queryCallback, "queryCallback");
        this.delegate = delegate;
        this.sqlStatement = sqlStatement;
        this.queryCallbackExecutor = queryCallbackExecutor;
        this.queryCallback = queryCallback;
        this.bindArgsCache = new ArrayList();
    }

    private final void j(int i10, Object obj) {
        int i11 = i10 - 1;
        if (i11 >= this.bindArgsCache.size()) {
            int size = (i11 - this.bindArgsCache.size()) + 1;
            for (int i12 = 0; i12 < size; i12++) {
                this.bindArgsCache.add(null);
            }
        }
        this.bindArgsCache.set(i11, obj);
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public long F() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.u
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.k(this.f849a);
            }
        });
        return this.delegate.F();
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void P(int i10) {
        Object[] array = this.bindArgsCache.toArray(new Object[0]);
        kotlin.jvm.internal.t.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        j(i10, Arrays.copyOf(array, array.length));
        this.delegate.P(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public void execute() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.q
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.g(this.f846a);
            }
        });
        this.delegate.execute();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    @Nullable
    public String h0() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.t
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.l(this.f848a);
            }
        });
        return this.delegate.h0();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public long o0() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.s
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.h(this.f847a);
            }
        });
        return this.delegate.o0();
    }

    @Override // androidx.sqlite.db.SupportSQLiteStatement
    public int x() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.p
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.i(this.f845a);
            }
        });
        return this.delegate.x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(QueryInterceptorStatement this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.queryCallback.a(this$0.sqlStatement, this$0.bindArgsCache);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(QueryInterceptorStatement this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.queryCallback.a(this$0.sqlStatement, this$0.bindArgsCache);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(QueryInterceptorStatement this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.queryCallback.a(this$0.sqlStatement, this$0.bindArgsCache);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(QueryInterceptorStatement this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.queryCallback.a(this$0.sqlStatement, this$0.bindArgsCache);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(QueryInterceptorStatement this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.queryCallback.a(this$0.sqlStatement, this$0.bindArgsCache);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void I(int i10, long j6) {
        j(i10, Long.valueOf(j6));
        this.delegate.I(i10, j6);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void K(int i10, @NotNull byte[] value) {
        kotlin.jvm.internal.t.j(value, "value");
        j(i10, value);
        this.delegate.K(i10, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void Y(int i10, double d) {
        j(i10, Double.valueOf(d));
        this.delegate.Y(i10, d);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void s(int i10, @NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
        j(i10, value);
        this.delegate.s(i10, value);
    }
}
