package androidx.compose.runtime.snapshots;

import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.i;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class TransparentObserverSnapshot extends Snapshot {
    private final boolean mergeParentObservers;
    private final boolean ownsPreviousSnapshot;

    @Nullable
    private final Snapshot previousSnapshot;

    @Nullable
    private final l<Object, l0> readObserver;

    @NotNull
    private final Snapshot root;

    @Nullable
    private final l<Object, l0> writeObserver;

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void d() {
        Snapshot snapshot;
        s(true);
        if (!this.ownsPreviousSnapshot || (snapshot = this.previousSnapshot) == null) {
            return;
        }
        snapshot.d();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public l<Object, l0> h() {
        return this.readObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public l<Object, l0> j() {
        return this.writeObserver;
    }

    public TransparentObserverSnapshot(@Nullable Snapshot snapshot, @Nullable l<Object, l0> lVar, boolean z6, boolean z10) {
        l<Object, l0> lVarH;
        super(0, SnapshotIdSet.Companion.a(), null);
        this.previousSnapshot = snapshot;
        this.mergeParentObservers = z6;
        this.ownsPreviousSnapshot = z10;
        this.readObserver = SnapshotKt.E(lVar, (snapshot == null || (lVarH = snapshot.h()) == null) ? ((GlobalSnapshot) SnapshotKt.currentGlobalSnapshot.get()).h() : lVarH, z6);
        this.root = this;
    }

    private final Snapshot A() {
        Snapshot snapshot = this.previousSnapshot;
        if (snapshot != null) {
            return snapshot;
        }
        Object obj = SnapshotKt.currentGlobalSnapshot.get();
        t.i(obj, "currentGlobalSnapshot.get()");
        return (Snapshot) obj;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public Void l(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public Void m(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void o(@NotNull StateObject state) {
        t.j(state, "state");
        A().o(state);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public int f() {
        return A().f();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public SnapshotIdSet g() {
        return A().g();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean i() {
        return A().i();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void n() {
        A().n();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot v(@Nullable l<Object, l0> lVar) {
        l<Object, l0> lVarF = SnapshotKt.F(lVar, h(), false, 4, null);
        if (!this.mergeParentObservers) {
            return SnapshotKt.y(A().v(null), lVarF, true);
        }
        return A().v(lVarF);
    }
}
