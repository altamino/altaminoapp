package androidx.sqlite.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import java.io.Closeable;
import java.util.List;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public interface SupportSQLiteDatabase extends Closeable {
    void A();

    boolean B();

    @RequiresApi
    boolean B0();

    boolean C(int i10);

    void C0(int i10);

    @NotNull
    Cursor D(@NotNull SupportSQLiteQuery supportSQLiteQuery);

    void D0(long j6);

    @RequiresApi
    void H(boolean z6);

    long J();

    long M(@NotNull String str, int i10, @NotNull ContentValues contentValues) throws SQLException;

    void W(@NotNull String str) throws SQLException;

    boolean X();

    int c(@NotNull String str, @Nullable String str2, @Nullable Object[] objArr);

    long c0();

    void d0();

    void e0(@NotNull String str, @NotNull Object[] objArr) throws SQLException;

    long f0(long j6);

    @Nullable
    String getPath();

    int getVersion();

    void i0();

    boolean isOpen();

    void j0(@NotNull Locale locale);

    void p0(int i10);

    @NotNull
    SupportSQLiteStatement q0(@NotNull String str);

    void u();

    boolean u0();

    int v0(@NotNull String str, int i10, @NotNull ContentValues contentValues, @Nullable String str2, @Nullable Object[] objArr);

    @Nullable
    List<Pair<String, String>> w();

    boolean w0();

    @NotNull
    Cursor x0(@NotNull String str);

    @RequiresApi
    @NotNull
    Cursor z(@NotNull SupportSQLiteQuery supportSQLiteQuery, @Nullable CancellationSignal cancellationSignal);

    boolean z0();
}
