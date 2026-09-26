package androidx.work.impl.model;

import android.annotation.SuppressLint;
import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Transaction;
import androidx.work.Data;
import androidx.work.WorkInfo;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Dao
@SuppressLint({"UnknownNullness"})
public interface WorkSpecDao {
    @Query
    int A(@NotNull String str);

    @Query
    @Transaction
    @NotNull
    List<WorkSpec.WorkInfoPojo> B(@NotNull List<String> list);

    @Query
    void a(@NotNull String str);

    @Query
    void b();

    @Insert
    void c(@NotNull WorkSpec workSpec);

    @Query
    @NotNull
    List<String> d(@NotNull String str);

    @Query
    @Nullable
    WorkInfo.State e(@NotNull String str);

    @Query
    void f(@NotNull String str, long j6);

    @Query
    @NotNull
    List<String> g(@NotNull String str);

    @Query
    @NotNull
    List<Data> h(@NotNull String str);

    @Query
    @Transaction
    @NotNull
    List<WorkSpec.WorkInfoPojo> i(@NotNull String str);

    @Query
    @NotNull
    List<WorkSpec> j(int i10);

    @Query
    int k(@NotNull WorkInfo.State state, @NotNull String str);

    @Query
    @NotNull
    List<String> l();

    @Query
    boolean m();

    @Query
    int n(@NotNull String str);

    @Query
    void o(@NotNull String str);

    @Query
    @NotNull
    List<WorkSpec> p(long j6);

    @Query
    @NotNull
    List<WorkSpec> q();

    @Query
    @Transaction
    @Nullable
    WorkSpec.WorkInfoPojo r(@NotNull String str);

    @Query
    @Nullable
    WorkSpec s(@NotNull String str);

    @Query
    int t();

    @Query
    int u(@NotNull String str, long j6);

    @Query
    @NotNull
    List<WorkSpec.IdAndState> v(@NotNull String str);

    @Query
    @NotNull
    List<WorkSpec> w(int i10);

    @Query
    void x(@NotNull String str, @NotNull Data data);

    @Query
    @NotNull
    List<WorkSpec> y();

    @Query
    @Transaction
    @NotNull
    List<WorkSpec.WorkInfoPojo> z(@NotNull String str);
}
