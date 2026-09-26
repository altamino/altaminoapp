package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@Dao
@RestrictTo
public interface WorkProgressDao {
    @Query
    void a(@NotNull String str);

    @Query
    void b();

    @Insert
    void c(@NotNull WorkProgress workProgress);
}
