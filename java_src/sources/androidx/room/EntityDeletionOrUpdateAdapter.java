package androidx.room;

import androidx.annotation.RestrictTo;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public abstract class EntityDeletionOrUpdateAdapter<T> extends SharedSQLiteStatement {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EntityDeletionOrUpdateAdapter(@NotNull RoomDatabase database) {
        super(database);
        kotlin.jvm.internal.t.j(database, "database");
    }
}
