package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@Entity
@RestrictTo
public final class Dependency {

    @ColumnInfo
    @NotNull
    private final String prerequisiteId;

    @ColumnInfo
    @NotNull
    private final String workSpecId;

    @NotNull
    public final String a() {
        return this.prerequisiteId;
    }

    @NotNull
    public final String b() {
        return this.workSpecId;
    }

    public Dependency(@NotNull String workSpecId, @NotNull String prerequisiteId) {
        t.j(workSpecId, "workSpecId");
        t.j(prerequisiteId, "prerequisiteId");
        this.workSpecId = workSpecId;
        this.prerequisiteId = prerequisiteId;
    }
}
