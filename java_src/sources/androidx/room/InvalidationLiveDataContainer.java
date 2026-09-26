package androidx.room;

import androidx.lifecycle.LiveData;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class InvalidationLiveDataContainer {

    @NotNull
    private final RoomDatabase database;

    @NotNull
    private final Set<LiveData<?>> liveDataSet;

    public InvalidationLiveDataContainer(@NotNull RoomDatabase database) {
        kotlin.jvm.internal.t.j(database, "database");
        this.database = database;
        Set<LiveData<?>> setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        kotlin.jvm.internal.t.i(setNewSetFromMap, "newSetFromMap(IdentityHashMap())");
        this.liveDataSet = setNewSetFromMap;
    }

    public final void a(@NotNull LiveData<?> liveData) {
        kotlin.jvm.internal.t.j(liveData, "liveData");
        this.liveDataSet.add(liveData);
    }

    public final void b(@NotNull LiveData<?> liveData) {
        kotlin.jvm.internal.t.j(liveData, "liveData");
        this.liveDataSet.remove(liveData);
    }
}
