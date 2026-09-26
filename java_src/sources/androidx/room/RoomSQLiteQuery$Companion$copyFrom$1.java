package androidx.room;

import androidx.sqlite.db.SupportSQLiteProgram;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class RoomSQLiteQuery$Companion$copyFrom$1 implements SupportSQLiteProgram {
    private final /* synthetic */ RoomSQLiteQuery $$delegate_0;

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void I(int i10, long j6) {
        this.$$delegate_0.I(i10, j6);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void K(int i10, @NotNull byte[] value) {
        kotlin.jvm.internal.t.j(value, "value");
        this.$$delegate_0.K(i10, value);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void P(int i10) {
        this.$$delegate_0.P(i10);
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void Y(int i10, double d) {
        this.$$delegate_0.Y(i10, d);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.$$delegate_0.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteProgram
    public void s(int i10, @NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
        this.$$delegate_0.s(i10, value);
    }
}
