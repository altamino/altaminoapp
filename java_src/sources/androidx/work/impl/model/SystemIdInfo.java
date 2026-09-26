package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Entity
@RestrictTo
public final class SystemIdInfo {

    @ColumnInfo
    private final int generation;

    @ColumnInfo
    public final int systemId;

    @ColumnInfo
    @NotNull
    public final String workSpecId;

    public final int a() {
        return this.generation;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SystemIdInfo)) {
            return false;
        }
        SystemIdInfo systemIdInfo = (SystemIdInfo) obj;
        return t.e(this.workSpecId, systemIdInfo.workSpecId) && this.generation == systemIdInfo.generation && this.systemId == systemIdInfo.systemId;
    }

    public int hashCode() {
        return (((this.workSpecId.hashCode() * 31) + this.generation) * 31) + this.systemId;
    }

    @NotNull
    public String toString() {
        return "SystemIdInfo(workSpecId=" + this.workSpecId + ", generation=" + this.generation + ", systemId=" + this.systemId + ')';
    }

    public SystemIdInfo(@NotNull String workSpecId, int i10, int i11) {
        t.j(workSpecId, "workSpecId");
        this.workSpecId = workSpecId;
        this.generation = i10;
        this.systemId = i11;
    }
}
