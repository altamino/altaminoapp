package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Entity
@RestrictTo
public final class WorkName {

    @ColumnInfo
    @NotNull
    private final String name;

    @ColumnInfo
    @NotNull
    private final String workSpecId;

    @NotNull
    public final String a() {
        return this.name;
    }

    @NotNull
    public final String b() {
        return this.workSpecId;
    }

    public WorkName(@NotNull String name, @NotNull String workSpecId) {
        t.j(name, "name");
        t.j(workSpecId, "workSpecId");
        this.name = name;
        this.workSpecId = workSpecId;
    }
}
