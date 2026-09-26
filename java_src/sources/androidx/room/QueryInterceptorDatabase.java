package androidx.room;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class QueryInterceptorDatabase implements SupportSQLiteDatabase {

    @NotNull
    private final SupportSQLiteDatabase delegate;

    @NotNull
    private final RoomDatabase.QueryCallback queryCallback;

    @NotNull
    private final Executor queryCallbackExecutor;

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean B() {
        return this.delegate.B();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @RequiresApi
    public boolean B0() {
        return this.delegate.B0();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean C(int i10) {
        return this.delegate.C(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void C0(int i10) {
        this.delegate.C0(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void D0(long j6) {
        this.delegate.D0(j6);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @RequiresApi
    public void H(boolean z6) {
        this.delegate.H(z6);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long J() {
        return this.delegate.J();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long M(@NotNull String table, int i10, @NotNull ContentValues values) {
        kotlin.jvm.internal.t.j(table, "table");
        kotlin.jvm.internal.t.j(values, "values");
        return this.delegate.M(table, i10, values);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean X() {
        return this.delegate.X();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int c(@NotNull String table, @Nullable String str, @Nullable Object[] objArr) {
        kotlin.jvm.internal.t.j(table, "table");
        return this.delegate.c(table, str, objArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long c0() {
        return this.delegate.c0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public long f0(long j6) {
        return this.delegate.f0(j6);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @Nullable
    public String getPath() {
        return this.delegate.getPath();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int getVersion() {
        return this.delegate.getVersion();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isOpen() {
        return this.delegate.isOpen();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void j0(@NotNull Locale locale) {
        kotlin.jvm.internal.t.j(locale, "locale");
        this.delegate.j0(locale);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void p0(int i10) {
        this.delegate.p0(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean u0() {
        return this.delegate.u0();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int v0(@NotNull String table, int i10, @NotNull ContentValues values, @Nullable String str, @Nullable Object[] objArr) {
        kotlin.jvm.internal.t.j(table, "table");
        kotlin.jvm.internal.t.j(values, "values");
        return this.delegate.v0(table, i10, values, str, objArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @Nullable
    public List<Pair<String, String>> w() {
        return this.delegate.w();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean w0() {
        return this.delegate.w0();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean z0() {
        return this.delegate.z0();
    }

    public QueryInterceptorDatabase(@NotNull SupportSQLiteDatabase delegate, @NotNull Executor queryCallbackExecutor, @NotNull RoomDatabase.QueryCallback queryCallback) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        kotlin.jvm.internal.t.j(queryCallbackExecutor, "queryCallbackExecutor");
        kotlin.jvm.internal.t.j(queryCallback, "queryCallback");
        this.delegate = delegate;
        this.queryCallbackExecutor = queryCallbackExecutor;
        this.queryCallback = queryCallback;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void A() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.g
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.l(this.f828a);
            }
        });
        this.delegate.A();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void d0() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.i
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.L(this.f832a);
            }
        });
        this.delegate.d0();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void i0() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.m
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m(this.f839a);
            }
        });
        this.delegate.i0();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void u() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.k
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.k(this.f836a);
            }
        });
        this.delegate.u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(QueryInterceptorDatabase this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.queryCallback.a("TRANSACTION SUCCESSFUL", kotlin.collections.v.m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(QueryInterceptorDatabase this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.queryCallback.a("BEGIN EXCLUSIVE TRANSACTION", kotlin.collections.v.m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(QueryInterceptorDatabase this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.queryCallback.a("BEGIN DEFERRED TRANSACTION", kotlin.collections.v.m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(QueryInterceptorDatabase this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.queryCallback.a("END TRANSACTION", kotlin.collections.v.m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(QueryInterceptorDatabase this$0, String sql) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(sql, "$sql");
        this$0.queryCallback.a(sql, kotlin.collections.v.m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(QueryInterceptorDatabase this$0, String sql, List inputArguments) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(sql, "$sql");
        kotlin.jvm.internal.t.j(inputArguments, "$inputArguments");
        this$0.queryCallback.a(sql, inputArguments);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(QueryInterceptorDatabase this$0, String query) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(query, "$query");
        this$0.queryCallback.a(query, kotlin.collections.v.m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(QueryInterceptorDatabase this$0, SupportSQLiteQuery query, QueryInterceptorProgram queryInterceptorProgram) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(query, "$query");
        kotlin.jvm.internal.t.j(queryInterceptorProgram, "$queryInterceptorProgram");
        this$0.queryCallback.a(query.d(), queryInterceptorProgram.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(QueryInterceptorDatabase this$0, SupportSQLiteQuery query, QueryInterceptorProgram queryInterceptorProgram) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(query, "$query");
        kotlin.jvm.internal.t.j(queryInterceptorProgram, "$queryInterceptorProgram");
        this$0.queryCallback.a(query.d(), queryInterceptorProgram.d());
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @NotNull
    public Cursor D(@NotNull final SupportSQLiteQuery query) {
        kotlin.jvm.internal.t.j(query, "query");
        final QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.e(queryInterceptorProgram);
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.j
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.q(this.f833a, query, queryInterceptorProgram);
            }
        });
        return this.delegate.D(query);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void W(@NotNull final String sql) {
        kotlin.jvm.internal.t.j(sql, "sql");
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.o
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.n(this.f843a, sql);
            }
        });
        this.delegate.W(sql);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void e0(@NotNull final String sql, @NotNull Object[] bindArgs) {
        kotlin.jvm.internal.t.j(sql, "sql");
        kotlin.jvm.internal.t.j(bindArgs, "bindArgs");
        final ArrayList arrayList = new ArrayList();
        arrayList.addAll(kotlin.collections.u.e(bindArgs));
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.n
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.o(this.f840a, sql, arrayList);
            }
        });
        this.delegate.e0(sql, new List[]{arrayList});
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @NotNull
    public SupportSQLiteStatement q0(@NotNull String sql) {
        kotlin.jvm.internal.t.j(sql, "sql");
        return new QueryInterceptorStatement(this.delegate.q0(sql), sql, this.queryCallbackExecutor, this.queryCallback);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @NotNull
    public Cursor x0(@NotNull final String query) {
        kotlin.jvm.internal.t.j(query, "query");
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.l
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.p(this.f837a, query);
            }
        });
        return this.delegate.x0(query);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    @NotNull
    public Cursor z(@NotNull final SupportSQLiteQuery query, @Nullable CancellationSignal cancellationSignal) {
        kotlin.jvm.internal.t.j(query, "query");
        final QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.e(queryInterceptorProgram);
        this.queryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.h
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.r(this.f829a, query, queryInterceptorProgram);
            }
        });
        return this.delegate.D(query);
    }
}
