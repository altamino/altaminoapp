package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public abstract class StateRecord {
    public static final int $stable = 8;

    @Nullable
    private StateRecord next;
    private int snapshotId = SnapshotKt.B().f();

    public abstract void a(@NotNull StateRecord stateRecord);

    @NotNull
    public abstract StateRecord b();

    @Nullable
    public final StateRecord c() {
        return this.next;
    }

    public final int d() {
        return this.snapshotId;
    }

    public final void e(@Nullable StateRecord stateRecord) {
        this.next = stateRecord;
    }

    public final void f(int i10) {
        this.snapshotId = i10;
    }
}
