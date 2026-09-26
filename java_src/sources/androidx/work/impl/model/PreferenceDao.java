package androidx.work.impl.model;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Dao
public interface PreferenceDao {
    @Insert
    void a(@NotNull Preference preference);

    @Query
    @Nullable
    Long b(@NotNull String str);
}
