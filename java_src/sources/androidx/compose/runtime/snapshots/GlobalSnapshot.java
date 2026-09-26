package androidx.compose.runtime.snapshots;

import e8.l;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.i;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class GlobalSnapshot extends MutableSnapshot {
    public GlobalSnapshot(int i10, @NotNull SnapshotIdSet invalid) {
        l globalSnapshot$1$1$1;
        t.j(invalid, "invalid");
        synchronized (SnapshotKt.C()) {
            try {
                List listW0 = SnapshotKt.globalWriteObservers.isEmpty() ^ true ? d0.W0(SnapshotKt.globalWriteObservers) : null;
                if (listW0 != null) {
                    globalSnapshot$1$1$1 = (l) d0.J0(listW0);
                    if (globalSnapshot$1$1$1 == null) {
                        globalSnapshot$1$1$1 = new GlobalSnapshot$1$1$1(listW0);
                    }
                } else {
                    globalSnapshot$1$1$1 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        super(i10, invalid, null, globalSnapshot$1$1$1);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    @NotNull
    public SnapshotApplyResult C() {
        throw new IllegalStateException("Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot".toString());
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    @NotNull
    public MutableSnapshot P(@Nullable l<Object, l0> lVar, @Nullable l<Object, l0> lVar2) {
        return (MutableSnapshot) SnapshotKt.T(new GlobalSnapshot$takeNestedMutableSnapshot$1(lVar, lVar2));
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public Void l(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public Void m(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        SnapshotStateMapKt.b();
        throw new i();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot v(@Nullable l<Object, l0> lVar) {
        return SnapshotKt.T(new GlobalSnapshot$takeNestedSnapshot$1(lVar));
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void d() {
        synchronized (SnapshotKt.C()) {
            p();
            l0 l0Var = l0.INSTANCE;
        }
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void n() {
        SnapshotKt.x();
    }
}
