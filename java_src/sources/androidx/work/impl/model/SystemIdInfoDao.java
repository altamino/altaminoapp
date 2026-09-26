package androidx.work.impl.model;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Dao
public interface SystemIdInfoDao {

    public static final class DefaultImpls {
        @Nullable
        public static SystemIdInfo a(@NotNull SystemIdInfoDao systemIdInfoDao, @NotNull WorkGenerationalId id) {
            t.j(id, "id");
            return systemIdInfoDao.a(id.b(), id.a());
        }

        public static void b(@NotNull SystemIdInfoDao systemIdInfoDao, @NotNull WorkGenerationalId id) {
            t.j(id, "id");
            systemIdInfoDao.f(id.b(), id.a());
        }
    }

    @Query
    @Nullable
    SystemIdInfo a(@NotNull String str, int i10);

    void b(@NotNull WorkGenerationalId workGenerationalId);

    @Insert
    void c(@NotNull SystemIdInfo systemIdInfo);

    @Nullable
    SystemIdInfo d(@NotNull WorkGenerationalId workGenerationalId);

    @Query
    @NotNull
    List<String> e();

    @Query
    void f(@NotNull String str, int i10);

    @Query
    void g(@NotNull String str);
}
