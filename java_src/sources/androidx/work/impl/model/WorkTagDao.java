package androidx.work.impl.model;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@Dao
public interface WorkTagDao {

    public static final class DefaultImpls {
        public static void a(@NotNull WorkTagDao workTagDao, @NotNull String id, @NotNull Set<String> tags) {
            t.j(id, "id");
            t.j(tags, "tags");
            Iterator<T> it = tags.iterator();
            while (it.hasNext()) {
                workTagDao.c(new WorkTag((String) it.next(), id));
            }
        }
    }

    void a(@NotNull String str, @NotNull Set<String> set);

    @Query
    @NotNull
    List<String> b(@NotNull String str);

    @Insert
    void c(@NotNull WorkTag workTag);
}
