package androidx.work.impl.model;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@Dao
public interface DependencyDao {
    @Insert
    void a(@NotNull Dependency dependency);

    @Query
    @NotNull
    List<String> b(@NotNull String str);

    @Query
    boolean c(@NotNull String str);

    @Query
    boolean d(@NotNull String str);
}
