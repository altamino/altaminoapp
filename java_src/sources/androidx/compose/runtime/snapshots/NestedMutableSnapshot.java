package androidx.compose.runtime.snapshots;

import e8.l;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class NestedMutableSnapshot extends MutableSnapshot {
    private boolean deactivated;

    @NotNull
    private final MutableSnapshot parent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NestedMutableSnapshot(int i10, @NotNull SnapshotIdSet invalid, @Nullable l<Object, l0> lVar, @Nullable l<Object, l0> lVar2, @NotNull MutableSnapshot parent) {
        super(i10, invalid, lVar, lVar2);
        t.j(invalid, "invalid");
        t.j(parent, "parent");
        this.parent = parent;
        parent.l(this);
    }

    private final void S() {
        if (this.deactivated) {
            return;
        }
        this.deactivated = true;
        this.parent.m(this);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    @NotNull
    public SnapshotApplyResult C() {
        Map<StateRecord, ? extends StateRecord> mapK;
        if (this.parent.D() || this.parent.e()) {
            return new SnapshotApplyResult.Failure(this);
        }
        Set<StateObject> setE = E();
        int iF = f();
        if (setE != null) {
            MutableSnapshot mutableSnapshot = this.parent;
            mapK = SnapshotKt.K(mutableSnapshot, this, mutableSnapshot.g());
        } else {
            mapK = null;
        }
        synchronized (SnapshotKt.C()) {
            try {
                SnapshotKt.Y(this);
                if (setE == null || setE.size() == 0) {
                    b();
                } else {
                    SnapshotApplyResult snapshotApplyResultH = H(this.parent.f(), mapK, this.parent.g());
                    if (!t.e(snapshotApplyResultH, SnapshotApplyResult.Success.INSTANCE)) {
                        return snapshotApplyResultH;
                    }
                    Set<StateObject> setE2 = this.parent.E();
                    if (setE2 == null) {
                        setE2 = new HashSet<>();
                        this.parent.O(setE2);
                    }
                    setE2.addAll(setE);
                }
                if (this.parent.f() < iF) {
                    this.parent.B();
                }
                MutableSnapshot mutableSnapshot2 = this.parent;
                mutableSnapshot2.u(mutableSnapshot2.g().m(iF).j(F()));
                this.parent.I(iF);
                this.parent.K(w());
                this.parent.J(F());
                this.parent.L(G());
                l0 l0Var = l0.INSTANCE;
                N(true);
                S();
                return SnapshotApplyResult.Success.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void d() {
        if (!e()) {
            super.d();
            S();
        }
    }
}
