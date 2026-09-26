package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.db.SupportSQLiteProgram;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public class FrameworkSQLiteProgram implements SupportSQLiteProgram {

    @NotNull
    private final SQLiteProgram delegate;

    public FrameworkSQLiteProgram(@NotNull SQLiteProgram delegate) {
        t.j(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void I(int i10, long j6) {
        this.delegate.bindLong(i10, j6);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void P(int i10) {
        this.delegate.bindNull(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void Y(int i10, double d) {
        this.delegate.bindDouble(i10, d);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void K(int i10, @NotNull byte[] value) {
        t.j(value, "value");
        this.delegate.bindBlob(i10, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void s(int i10, @NotNull String value) {
        t.j(value, "value");
        this.delegate.bindString(i10, value);
    }
}
