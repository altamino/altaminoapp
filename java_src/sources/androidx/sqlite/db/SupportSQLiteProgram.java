package androidx.sqlite.db;

import java.io.Closeable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public interface SupportSQLiteProgram extends Closeable {
    void I(int i10, long j6);

    void K(int i10, @NotNull byte[] bArr);

    void P(int i10);

    void Y(int i10, double d);

    void s(int i10, @NotNull String str);
}
