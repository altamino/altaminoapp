package androidx.work.impl.model;

import androidx.room.Dao;
import androidx.room.RawQuery;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Dao
public interface RawWorkInfoDao {
    @RawQuery
    @NotNull
    List<WorkSpec.WorkInfoPojo> a(@NotNull SupportSQLiteQuery supportSQLiteQuery);
}
