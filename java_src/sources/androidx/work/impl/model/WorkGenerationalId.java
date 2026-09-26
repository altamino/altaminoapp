package androidx.work.impl.model;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class WorkGenerationalId {
    private final int generation;

    @NotNull
    private final String workSpecId;

    public final int a() {
        return this.generation;
    }

    @NotNull
    public final String b() {
        return this.workSpecId;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkGenerationalId)) {
            return false;
        }
        WorkGenerationalId workGenerationalId = (WorkGenerationalId) obj;
        return t.e(this.workSpecId, workGenerationalId.workSpecId) && this.generation == workGenerationalId.generation;
    }

    public int hashCode() {
        return (this.workSpecId.hashCode() * 31) + this.generation;
    }

    @NotNull
    public String toString() {
        return "WorkGenerationalId(workSpecId=" + this.workSpecId + ", generation=" + this.generation + ')';
    }

    public WorkGenerationalId(@NotNull String workSpecId, int i10) {
        t.j(workSpecId, "workSpecId");
        this.workSpecId = workSpecId;
        this.generation = i10;
    }
}
