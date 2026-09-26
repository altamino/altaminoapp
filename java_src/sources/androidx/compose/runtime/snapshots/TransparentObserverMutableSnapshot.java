package androidx.compose.runtime.snapshots;

import e8.l;
import java.util.Set;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.i;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class TransparentObserverMutableSnapshot extends MutableSnapshot {
    private final boolean mergeParentObservers;
    private final boolean ownsPreviousSnapshot;

    @Nullable
    private final MutableSnapshot previousSnapshot;

    @Nullable
    private final l<Object, l0> specifiedReadObserver;

    @Nullable
    private final l<Object, l0> specifiedWriteObserver;

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void d() {
        MutableSnapshot mutableSnapshot;
        s(true);
        if (!this.ownsPreviousSnapshot || (mutableSnapshot = this.previousSnapshot) == null) {
            return;
        }
        mutableSnapshot.d();
    }

    public TransparentObserverMutableSnapshot(@Nullable MutableSnapshot mutableSnapshot, @Nullable l<Object, l0> lVar, @Nullable l<Object, l0> lVar2, boolean z6, boolean z10) {
        l<Object, l0> lVarJ;
        l<Object, l0> lVarH;
        super(0, SnapshotIdSet.Companion.a(), SnapshotKt.E(lVar, (mutableSnapshot == null || (lVarH = mutableSnapshot.h()) == null) ? ((GlobalSnapshot) SnapshotKt.currentGlobalSnapshot.get()).h() : lVarH, z6), SnapshotKt.G(lVar2, (mutableSnapshot == null || (lVarJ = mutableSnapshot.j()) == null) ? ((GlobalSnapshot) SnapshotKt.currentGlobalSnapshot.get()).j() : lVarJ));
        this.previousSnapshot = mutableSnapshot;
        this.specifiedReadObserver = lVar;
        this.specifiedWriteObserver = lVar2;
        this.mergeParentObservers = z6;
        this.ownsPreviousSnapshot = z10;
    }

    private final MutableSnapshot S() {
        MutableSnapshot mutableSnapshot = this.previousSnapshot;
        if (mutableSnapshot != null) {
            return mutableSnapshot;
        }
        Object obj = SnapshotKt.currentGlobalSnapshot.get();
        t.i(obj, "currentGlobalSnapshot.get()");
        return (MutableSnapshot) obj;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public Void l(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public Void m(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void o(@NotNull StateObject state) {
        t.j(state, "state");
        S().o(state);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void u(@NotNull SnapshotIdSet value) {
        t.j(value, "value");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    @NotNull
    public SnapshotApplyResult C() {
        return S().C();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    @Nullable
    public Set<StateObject> E() {
        return S().E();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public void O(@Nullable Set<StateObject> set) {
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    @NotNull
    public MutableSnapshot P(@Nullable l<Object, l0> lVar, @Nullable l<Object, l0> lVar2) {
        l<Object, l0> lVarF = SnapshotKt.F(lVar, h(), false, 4, null);
        l<Object, l0> lVarG = SnapshotKt.G(lVar2, j());
        if (!this.mergeParentObservers) {
            return new TransparentObserverMutableSnapshot(S().P(null, lVarG), lVarF, lVarG, false, true);
        }
        return S().P(lVarF, lVarG);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public int f() {
        return S().f();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public SnapshotIdSet g() {
        return S().g();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public boolean i() {
        return S().i();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void n() {
        S().n();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void t(int i10) {
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot v(@Nullable l<Object, l0> lVar) {
        l<Object, l0> lVarF = SnapshotKt.F(lVar, h(), false, 4, null);
        if (!this.mergeParentObservers) {
            return SnapshotKt.y(S().v(null), lVarF, true);
        }
        return S().v(lVarF);
    }
}
