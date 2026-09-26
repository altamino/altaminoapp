package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Entity
@RestrictTo
public final class WorkTag {

    @ColumnInfo
    @NotNull
    private final String tag;

    @ColumnInfo
    @NotNull
    private final String workSpecId;

    @NotNull
    public final String a() {
        return this.tag;
    }

    @NotNull
    public final String b() {
        return this.workSpecId;
    }

    public WorkTag(@NotNull String tag, @NotNull String workSpecId) {
        t.j(tag, "tag");
        t.j(workSpecId, "workSpecId");
        this.tag = tag;
        this.workSpecId = workSpecId;
    }
}
