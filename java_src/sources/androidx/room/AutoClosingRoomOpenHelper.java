package androidx.room;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.database.SQLException;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import androidx.sqlite.db.SupportSQLiteCompat;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.a0;
import kotlin.jvm.internal.g0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class AutoClosingRoomOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {

    @NotNull
    public final AutoCloser autoCloser;

    @NotNull
    private final AutoClosingSupportSQLiteDatabase autoClosingDb;

    @NotNull
    private final SupportSQLiteOpenHelper delegate;

    public static final class AutoClosingSupportSQLiteDatabase implements SupportSQLiteDatabase {

        @NotNull
        private final AutoCloser autoCloser;

        public AutoClosingSupportSQLiteDatabase(@NotNull AutoCloser autoCloser) {
            kotlin.jvm.internal.t.j(autoCloser, "autoCloser");
            this.autoCloser = autoCloser;
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void A() {
            try {
                this.autoCloser.j().A();
            } catch (Throwable th) {
                this.autoCloser.e();
                throw th;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean B() {
            if (this.autoCloser.h() == null) {
                return false;
            }
            return ((Boolean) this.autoCloser.g(new g0() { // from class: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isDbLockedByCurrentThread$1
                @Override // kotlin.jvm.internal.g0, kotlin.reflect.KProperty1
                @Nullable
                public Object get(@Nullable Object obj) {
                    return Boolean.valueOf(((SupportSQLiteDatabase) obj).B());
                }
            })).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @RequiresApi
        public boolean B0() {
            return ((Boolean) this.autoCloser.g(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isWriteAheadLoggingEnabled$1.INSTANCE)).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean C(int i10) {
            return ((Boolean) this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$needUpgrade$1(i10))).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void C0(int i10) {
            this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setMaxSqlCacheSize$1(i10));
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void D0(long j6) {
            this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$pageSize$2(j6));
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @RequiresApi
        public void H(boolean z6) {
            this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setForeignKeyConstraintsEnabled$1(z6));
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public long J() {
            return ((Number) this.autoCloser.g(new g0() { // from class: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$maximumSize$1
                @Override // kotlin.jvm.internal.g0, kotlin.reflect.KProperty1
                @Nullable
                public Object get(@Nullable Object obj) {
                    return Long.valueOf(((SupportSQLiteDatabase) obj).J());
                }
            })).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean X() {
            return ((Boolean) this.autoCloser.g(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isDatabaseIntegrityOk$1.INSTANCE)).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public long c0() {
            return ((Number) this.autoCloser.g(new a0() { // from class: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$pageSize$1
                @Override // kotlin.jvm.internal.a0, kotlin.reflect.KProperty1
                @Nullable
                public Object get(@Nullable Object obj) {
                    return Long.valueOf(((SupportSQLiteDatabase) obj).c0());
                }

                @Override // kotlin.jvm.internal.a0, kotlin.reflect.KMutableProperty1
                public void set(@Nullable Object obj, @Nullable Object obj2) {
                    ((SupportSQLiteDatabase) obj).D0(((Number) obj2).longValue());
                }
            })).longValue();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.autoCloser.d();
        }

        public final void d() {
            this.autoCloser.g(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$pokeOpen$1.INSTANCE);
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void d0() {
            l0 l0Var;
            SupportSQLiteDatabase supportSQLiteDatabaseH = this.autoCloser.h();
            if (supportSQLiteDatabaseH != null) {
                supportSQLiteDatabaseH.d0();
                l0Var = l0.INSTANCE;
            } else {
                l0Var = null;
            }
            if (l0Var == null) {
                throw new IllegalStateException("setTransactionSuccessful called but delegateDb is null".toString());
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public long f0(long j6) {
            return ((Number) this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setMaximumSize$1(j6))).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @Nullable
        public String getPath() {
            return (String) this.autoCloser.g(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$path$1.INSTANCE);
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public int getVersion() {
            return ((Number) this.autoCloser.g(new a0() { // from class: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$version$1
                @Override // kotlin.jvm.internal.a0, kotlin.reflect.KProperty1
                @Nullable
                public Object get(@Nullable Object obj) {
                    return Integer.valueOf(((SupportSQLiteDatabase) obj).getVersion());
                }

                @Override // kotlin.jvm.internal.a0, kotlin.reflect.KMutableProperty1
                public void set(@Nullable Object obj, @Nullable Object obj2) {
                    ((SupportSQLiteDatabase) obj).p0(((Number) obj2).intValue());
                }
            })).intValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void i0() {
            if (this.autoCloser.h() == null) {
                throw new IllegalStateException("End transaction called but delegateDb is null".toString());
            }
            try {
                SupportSQLiteDatabase supportSQLiteDatabaseH = this.autoCloser.h();
                kotlin.jvm.internal.t.g(supportSQLiteDatabaseH);
                supportSQLiteDatabaseH.i0();
            } finally {
                this.autoCloser.e();
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean isOpen() {
            SupportSQLiteDatabase supportSQLiteDatabaseH = this.autoCloser.h();
            if (supportSQLiteDatabaseH == null) {
                return false;
            }
            return supportSQLiteDatabaseH.isOpen();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void j0(@NotNull Locale locale) {
            kotlin.jvm.internal.t.j(locale, "locale");
            this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$setLocale$1(locale));
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void p0(int i10) {
            this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$version$2(i10));
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void u() {
            try {
                this.autoCloser.j().u();
            } catch (Throwable th) {
                this.autoCloser.e();
                throw th;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean u0() {
            return ((Boolean) this.autoCloser.g(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isReadOnly$1.INSTANCE)).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @Nullable
        public List<Pair<String, String>> w() {
            return (List) this.autoCloser.g(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$attachedDbs$1.INSTANCE);
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean w0() {
            return ((Boolean) this.autoCloser.g(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$yieldIfContendedSafely$1.INSTANCE)).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public boolean z0() {
            if (this.autoCloser.h() == null) {
                return false;
            }
            return ((Boolean) this.autoCloser.g(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1.INSTANCE)).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @NotNull
        public Cursor D(@NotNull SupportSQLiteQuery query) {
            kotlin.jvm.internal.t.j(query, "query");
            try {
                return new KeepAliveCursor(this.autoCloser.j().D(query), this.autoCloser);
            } catch (Throwable th) {
                this.autoCloser.e();
                throw th;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public long M(@NotNull String table, int i10, @NotNull ContentValues values) throws SQLException {
            kotlin.jvm.internal.t.j(table, "table");
            kotlin.jvm.internal.t.j(values, "values");
            return ((Number) this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$insert$1(table, i10, values))).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void W(@NotNull String sql) throws SQLException {
            kotlin.jvm.internal.t.j(sql, "sql");
            this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$execSQL$1(sql));
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public int c(@NotNull String table, @Nullable String str, @Nullable Object[] objArr) {
            kotlin.jvm.internal.t.j(table, "table");
            return ((Number) this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$delete$1(table, str, objArr))).intValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public void e0(@NotNull String sql, @NotNull Object[] bindArgs) throws SQLException {
            kotlin.jvm.internal.t.j(sql, "sql");
            kotlin.jvm.internal.t.j(bindArgs, "bindArgs");
            this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$execSQL$2(sql, bindArgs));
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @NotNull
        public SupportSQLiteStatement q0(@NotNull String sql) {
            kotlin.jvm.internal.t.j(sql, "sql");
            return new AutoClosingSupportSqliteStatement(sql, this.autoCloser);
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public int v0(@NotNull String table, int i10, @NotNull ContentValues values, @Nullable String str, @Nullable Object[] objArr) {
            kotlin.jvm.internal.t.j(table, "table");
            kotlin.jvm.internal.t.j(values, "values");
            return ((Number) this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$update$1(table, i10, values, str, objArr))).intValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @NotNull
        public Cursor x0(@NotNull String query) {
            kotlin.jvm.internal.t.j(query, "query");
            try {
                return new KeepAliveCursor(this.autoCloser.j().x0(query), this.autoCloser);
            } catch (Throwable th) {
                this.autoCloser.e();
                throw th;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        @RequiresApi
        @NotNull
        public Cursor z(@NotNull SupportSQLiteQuery query, @Nullable CancellationSignal cancellationSignal) {
            kotlin.jvm.internal.t.j(query, "query");
            try {
                return new KeepAliveCursor(this.autoCloser.j().z(query, cancellationSignal), this.autoCloser);
            } catch (Throwable th) {
                this.autoCloser.e();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class AutoClosingSupportSqliteStatement implements SupportSQLiteStatement {

        @NotNull
        private final AutoCloser autoCloser;

        @NotNull
        private final ArrayList<Object> binds;

        @NotNull
        private final String sql;

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public void P(int i10) {
            f(i10, null);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void d(SupportSQLiteStatement supportSQLiteStatement) {
            Iterator<T> it = this.binds.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                it.next();
                int i11 = i10 + 1;
                if (i10 < 0) {
                    kotlin.collections.v.w();
                }
                Object obj = this.binds.get(i10);
                if (obj == null) {
                    supportSQLiteStatement.P(i11);
                } else if (obj instanceof Long) {
                    supportSQLiteStatement.I(i11, ((Number) obj).longValue());
                } else if (obj instanceof Double) {
                    supportSQLiteStatement.Y(i11, ((Number) obj).doubleValue());
                } else if (obj instanceof String) {
                    supportSQLiteStatement.s(i11, (String) obj);
                } else if (obj instanceof byte[]) {
                    supportSQLiteStatement.K(i11, (byte[]) obj);
                }
                i10 = i11;
            }
        }

        private final <T> T e(e8.l<? super SupportSQLiteStatement, ? extends T> lVar) {
            return (T) this.autoCloser.g(new AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$executeSqliteStatementWithRefCount$1(this, lVar));
        }

        private final void f(int i10, Object obj) {
            int size;
            int i11 = i10 - 1;
            if (i11 >= this.binds.size() && (size = this.binds.size()) <= i11) {
                while (true) {
                    this.binds.add(null);
                    if (size == i11) {
                        break;
                    } else {
                        size++;
                    }
                }
            }
            this.binds.set(i11, obj);
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        public long F() {
            return ((Number) e(AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$simpleQueryForLong$1.INSTANCE)).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        public void execute() {
            e(AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$execute$1.INSTANCE);
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        @Nullable
        public String h0() {
            return (String) e(AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$simpleQueryForString$1.INSTANCE);
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        public long o0() {
            return ((Number) e(AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$executeInsert$1.INSTANCE)).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        public int x() {
            return ((Number) e(AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$executeUpdateDelete$1.INSTANCE)).intValue();
        }

        public AutoClosingSupportSqliteStatement(@NotNull String sql, @NotNull AutoCloser autoCloser) {
            kotlin.jvm.internal.t.j(sql, "sql");
            kotlin.jvm.internal.t.j(autoCloser, "autoCloser");
            this.sql = sql;
            this.autoCloser = autoCloser;
            this.binds = new ArrayList<>();
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public void I(int i10, long j6) {
            f(i10, Long.valueOf(j6));
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public void K(int i10, @NotNull byte[] value) {
            kotlin.jvm.internal.t.j(value, "value");
            f(i10, value);
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public void Y(int i10, double d) {
            f(i10, Double.valueOf(d));
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public void s(int i10, @NotNull String value) {
            kotlin.jvm.internal.t.j(value, "value");
            f(i10, value);
        }
    }

    private static final class KeepAliveCursor implements Cursor {

        @NotNull
        private final AutoCloser autoCloser;

        @NotNull
        private final Cursor delegate;

        @Override // android.database.Cursor
        public void copyStringToBuffer(int i10, CharArrayBuffer charArrayBuffer) {
            this.delegate.copyStringToBuffer(i10, charArrayBuffer);
        }

        @Override // android.database.Cursor
        public void deactivate() {
            this.delegate.deactivate();
        }

        @Override // android.database.Cursor
        public byte[] getBlob(int i10) {
            return this.delegate.getBlob(i10);
        }

        @Override // android.database.Cursor
        public int getColumnCount() {
            return this.delegate.getColumnCount();
        }

        @Override // android.database.Cursor
        public int getColumnIndex(String str) {
            return this.delegate.getColumnIndex(str);
        }

        @Override // android.database.Cursor
        public int getColumnIndexOrThrow(String str) {
            return this.delegate.getColumnIndexOrThrow(str);
        }

        @Override // android.database.Cursor
        public String getColumnName(int i10) {
            return this.delegate.getColumnName(i10);
        }

        @Override // android.database.Cursor
        public String[] getColumnNames() {
            return this.delegate.getColumnNames();
        }

        @Override // android.database.Cursor
        public int getCount() {
            return this.delegate.getCount();
        }

        @Override // android.database.Cursor
        public double getDouble(int i10) {
            return this.delegate.getDouble(i10);
        }

        @Override // android.database.Cursor
        public Bundle getExtras() {
            return this.delegate.getExtras();
        }

        @Override // android.database.Cursor
        public float getFloat(int i10) {
            return this.delegate.getFloat(i10);
        }

        @Override // android.database.Cursor
        public int getInt(int i10) {
            return this.delegate.getInt(i10);
        }

        @Override // android.database.Cursor
        public long getLong(int i10) {
            return this.delegate.getLong(i10);
        }

        @Override // android.database.Cursor
        public int getPosition() {
            return this.delegate.getPosition();
        }

        @Override // android.database.Cursor
        public short getShort(int i10) {
            return this.delegate.getShort(i10);
        }

        @Override // android.database.Cursor
        public String getString(int i10) {
            return this.delegate.getString(i10);
        }

        @Override // android.database.Cursor
        public int getType(int i10) {
            return this.delegate.getType(i10);
        }

        @Override // android.database.Cursor
        public boolean getWantsAllOnMoveCalls() {
            return this.delegate.getWantsAllOnMoveCalls();
        }

        @Override // android.database.Cursor
        public boolean isAfterLast() {
            return this.delegate.isAfterLast();
        }

        @Override // android.database.Cursor
        public boolean isBeforeFirst() {
            return this.delegate.isBeforeFirst();
        }

        @Override // android.database.Cursor
        public boolean isClosed() {
            return this.delegate.isClosed();
        }

        @Override // android.database.Cursor
        public boolean isFirst() {
            return this.delegate.isFirst();
        }

        @Override // android.database.Cursor
        public boolean isLast() {
            return this.delegate.isLast();
        }

        @Override // android.database.Cursor
        public boolean isNull(int i10) {
            return this.delegate.isNull(i10);
        }

        @Override // android.database.Cursor
        public boolean move(int i10) {
            return this.delegate.move(i10);
        }

        @Override // android.database.Cursor
        public boolean moveToFirst() {
            return this.delegate.moveToFirst();
        }

        @Override // android.database.Cursor
        public boolean moveToLast() {
            return this.delegate.moveToLast();
        }

        @Override // android.database.Cursor
        public boolean moveToNext() {
            return this.delegate.moveToNext();
        }

        @Override // android.database.Cursor
        public boolean moveToPosition(int i10) {
            return this.delegate.moveToPosition(i10);
        }

        @Override // android.database.Cursor
        public boolean moveToPrevious() {
            return this.delegate.moveToPrevious();
        }

        @Override // android.database.Cursor
        public void registerContentObserver(ContentObserver contentObserver) {
            this.delegate.registerContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.delegate.registerDataSetObserver(dataSetObserver);
        }

        @Override // android.database.Cursor
        public boolean requery() {
            return this.delegate.requery();
        }

        @Override // android.database.Cursor
        public Bundle respond(Bundle bundle) {
            return this.delegate.respond(bundle);
        }

        @Override // android.database.Cursor
        public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
            this.delegate.setNotificationUri(contentResolver, uri);
        }

        @Override // android.database.Cursor
        public void unregisterContentObserver(ContentObserver contentObserver) {
            this.delegate.unregisterContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.delegate.unregisterDataSetObserver(dataSetObserver);
        }

        public KeepAliveCursor(@NotNull Cursor delegate, @NotNull AutoCloser autoCloser) {
            kotlin.jvm.internal.t.j(delegate, "delegate");
            kotlin.jvm.internal.t.j(autoCloser, "autoCloser");
            this.delegate = delegate;
            this.autoCloser = autoCloser;
        }

        @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
            this.autoCloser.e();
        }

        @Override // android.database.Cursor
        @RequiresApi
        @NotNull
        public Uri getNotificationUri() {
            return SupportSQLiteCompat.Api19Impl.a(this.delegate);
        }

        @Override // android.database.Cursor
        @RequiresApi
        @NotNull
        public List<Uri> getNotificationUris() {
            return SupportSQLiteCompat.Api29Impl.a(this.delegate);
        }

        @Override // android.database.Cursor
        @RequiresApi
        public void setExtras(@NotNull Bundle extras) {
            kotlin.jvm.internal.t.j(extras, "extras");
            SupportSQLiteCompat.Api23Impl.a(this.delegate, extras);
        }

        @Override // android.database.Cursor
        @RequiresApi
        public void setNotificationUris(@NotNull ContentResolver cr, @NotNull List<? extends Uri> uris) {
            kotlin.jvm.internal.t.j(cr, "cr");
            kotlin.jvm.internal.t.j(uris, "uris");
            SupportSQLiteCompat.Api29Impl.b(this.delegate, cr, uris);
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @Nullable
    public String getDatabaseName() {
        return this.delegate.getDatabaseName();
    }

    @Override // androidx.room.DelegatingOpenHelper
    @NotNull
    public SupportSQLiteOpenHelper getDelegate() {
        return this.delegate;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @RequiresApi
    public void setWriteAheadLoggingEnabled(boolean z6) {
        this.delegate.setWriteAheadLoggingEnabled(z6);
    }

    public AutoClosingRoomOpenHelper(@NotNull SupportSQLiteOpenHelper delegate, @NotNull AutoCloser autoCloser) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        kotlin.jvm.internal.t.j(autoCloser, "autoCloser");
        this.delegate = delegate;
        this.autoCloser = autoCloser;
        autoCloser.k(getDelegate());
        this.autoClosingDb = new AutoClosingSupportSQLiteDatabase(autoCloser);
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.autoClosingDb.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @RequiresApi
    @NotNull
    public SupportSQLiteDatabase getReadableDatabase() {
        this.autoClosingDb.d();
        return this.autoClosingDb;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    @RequiresApi
    @NotNull
    public SupportSQLiteDatabase getWritableDatabase() {
        this.autoClosingDb.d();
        return this.autoClosingDb;
    }
}
