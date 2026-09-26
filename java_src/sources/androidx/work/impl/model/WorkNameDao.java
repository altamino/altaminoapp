package androidx.work.impl.model;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Dao
public interface WorkNameDao {
    @Insert
    void a(@NotNull WorkName workName);

    @Query
    @NotNull
    List<String> b(@NotNull String str);
}
