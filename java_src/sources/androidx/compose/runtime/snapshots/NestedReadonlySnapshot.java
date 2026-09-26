package androidx.compose.runtime.snapshots;

import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.i;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class NestedReadonlySnapshot extends Snapshot {

    @NotNull
    private final Snapshot parent;

    @Nullable
    private final l<Object, l0> readObserver;

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
    public void n() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedReadonlySnapshot(int i10, @NotNull SnapshotIdSet invalid, @Nullable l<Object, l0> lVar, @NotNull Snapshot parent) {
        super(i10, invalid, null);
        t.j(invalid, "invalid");
        t.j(parent, "parent");
        this.parent = parent;
        parent.l(this);
        if (lVar != null) {
            l<Object, l0> lVarH = parent.h();
            if (lVarH != null) {
                lVar = new NestedReadonlySnapshot$readObserver$1$1$1(lVar, lVarH);
            }
        } else {
            lVar = parent.h();
        }
        this.readObserver = lVar;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public Void l(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public Void m(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public Void o(@NotNull StateObject state) {
        t.j(state, "state");
        SnapshotKt.R();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public NestedReadonlySnapshot v(@Nullable l<Object, l0> lVar) {
        return new NestedReadonlySnapshot(f(), g(), lVar, this.parent);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void d() {
        if (!e()) {
            if (f() != this.parent.f()) {
                b();
            }
            this.parent.m(this);
            super.d();
        }
    }
}
