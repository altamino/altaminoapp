package androidx.room;

import androidx.sqlite.db.SupportSQLiteProgram;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class QueryInterceptorProgram implements SupportSQLiteProgram {

    @NotNull
    private final List<Object> bindArgsCache = new ArrayList();

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void P(int i10) {
        e(i10, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @NotNull
    public final List<Object> d() {
        return this.bindArgsCache;
    }

    private final void e(int i10, Object obj) {
        int size;
        int i11 = i10 - 1;
        if (i11 >= this.bindArgsCache.size() && (size = this.bindArgsCache.size()) <= i11) {
            while (true) {
                this.bindArgsCache.add(null);
                if (size == i11) {
                    break;
                } else {
                    size++;
                }
            }
        }
        this.bindArgsCache.set(i11, obj);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void I(int i10, long j6) {
        e(i10, Long.valueOf(j6));
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void K(int i10, @NotNull byte[] value) {
        kotlin.jvm.internal.t.j(value, "value");
        e(i10, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void Y(int i10, double d) {
        e(i10, Double.valueOf(d));
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void s(int i10, @NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
        e(i10, value);
    }
}
