package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import androidx.work.Data;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Entity
@RestrictTo
public final class WorkProgress {

    @ColumnInfo
    @NotNull
    private final Data progress;

    @PrimaryKey
    @ColumnInfo
    @NotNull
    private final String workSpecId;

    @NotNull
    public final Data a() {
        return this.progress;
    }

    @NotNull
    public final String b() {
        return this.workSpecId;
    }

    public WorkProgress(@NotNull String workSpecId, @NotNull Data progress) {
        t.j(workSpecId, "workSpecId");
        t.j(progress, "progress");
        this.workSpecId = workSpecId;
        this.progress = progress;
    }
}
