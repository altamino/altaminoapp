package androidx.room;

import androidx.annotation.RestrictTo;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public final class EntityUpsertionAdapter<T> {

    @NotNull
    private final EntityInsertionAdapter<T> insertionAdapter;

    @NotNull
    private final EntityDeletionOrUpdateAdapter<T> updateAdapter;

    public EntityUpsertionAdapter(@NotNull EntityInsertionAdapter<T> insertionAdapter, @NotNull EntityDeletionOrUpdateAdapter<T> updateAdapter) {
        kotlin.jvm.internal.t.j(insertionAdapter, "insertionAdapter");
        kotlin.jvm.internal.t.j(updateAdapter, "updateAdapter");
        this.insertionAdapter = insertionAdapter;
        this.updateAdapter = updateAdapter;
    }
}
