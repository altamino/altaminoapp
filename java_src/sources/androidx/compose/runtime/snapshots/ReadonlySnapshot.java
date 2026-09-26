package androidx.compose.runtime.snapshots;

import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.i;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class ReadonlySnapshot extends Snapshot {

    @Nullable
    private final l<Object, l0> readObserver;
    private int snapshots;

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public l<Object, l0> h() {
        return this.readObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean i() {
        return true;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public l<Object, l0> j() {
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void l(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        this.snapshots++;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void n() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadonlySnapshot(int i10, @NotNull SnapshotIdSet invalid, @Nullable l<Object, l0> lVar) {
        super(i10, invalid, null);
        t.j(invalid, "invalid");
        this.readObserver = lVar;
        this.snapshots = 1;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void m(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        int i10 = this.snapshots - 1;
        this.snapshots = i10;
        if (i10 == 0) {
            b();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void o(@NotNull StateObject state) {
        t.j(state, "state");
        SnapshotKt.R();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void d() {
        if (!e()) {
            m(this);
            super.d();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot v(@Nullable l<Object, l0> lVar) {
        SnapshotKt.Y(this);
        return new NestedReadonlySnapshot(f(), g(), lVar, this);
    }
}
