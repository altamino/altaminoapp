package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import e8.l;
import e8.p;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.o;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.i;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public class MutableSnapshot extends Snapshot {
    public static final int $stable = 8;
    private boolean applied;

    @Nullable
    private Set<StateObject> modified;

    @NotNull
    private SnapshotIdSet previousIds;

    @NotNull
    private int[] previousPinnedSnapshots;

    @Nullable
    private final l<Object, l0> readObserver;
    private int snapshots;

    @Nullable
    private final l<Object, l0> writeObserver;

    public final boolean D() {
        return this.applied;
    }

    @Nullable
    public Set<StateObject> E() {
        return this.modified;
    }

    @NotNull
    public final SnapshotIdSet F() {
        return this.previousIds;
    }

    @NotNull
    public final int[] G() {
        return this.previousPinnedSnapshots;
    }

    public final void N(boolean z6) {
        this.applied = z6;
    }

    public void O(@Nullable Set<StateObject> set) {
        this.modified = set;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public l<Object, l0> h() {
        return this.readObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean i() {
        return false;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @Nullable
    public l<Object, l0> j() {
        return this.writeObserver;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void l(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        this.snapshots++;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableSnapshot(int i10, @NotNull SnapshotIdSet invalid, @Nullable l<Object, l0> lVar, @Nullable l<Object, l0> lVar2) {
        super(i10, invalid, null);
        t.j(invalid, "invalid");
        this.readObserver = lVar;
        this.writeObserver = lVar2;
        this.previousIds = SnapshotIdSet.Companion.a();
        this.previousPinnedSnapshots = new int[0];
        this.snapshots = 1;
    }

    @NotNull
    public final SnapshotApplyResult H(int i10, @Nullable Map<StateRecord, ? extends StateRecord> map, @NotNull SnapshotIdSet invalidSnapshots) {
        StateRecord stateRecordN;
        StateRecord stateRecordE;
        t.j(invalidSnapshots, "invalidSnapshots");
        SnapshotIdSet snapshotIdSetR = g().s(f()).r(this.previousIds);
        Set<StateObject> setE = E();
        t.g(setE);
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (StateObject stateObject : setE) {
            StateRecord stateRecordM = stateObject.m();
            StateRecord stateRecordN2 = SnapshotKt.N(stateRecordM, i10, invalidSnapshots);
            if (stateRecordN2 != null && (stateRecordN = SnapshotKt.N(stateRecordM, f(), snapshotIdSetR)) != null && !t.e(stateRecordN2, stateRecordN)) {
                StateRecord stateRecordN3 = SnapshotKt.N(stateRecordM, f(), g());
                if (stateRecordN3 == null) {
                    SnapshotKt.M();
                    throw new i();
                }
                if (map == null || (stateRecordE = map.get(stateRecordN2)) == null) {
                    stateRecordE = stateObject.e(stateRecordN, stateRecordN2, stateRecordN3);
                }
                if (stateRecordE == null) {
                    return new SnapshotApplyResult.Failure(this);
                }
                if (!t.e(stateRecordE, stateRecordN3)) {
                    if (t.e(stateRecordE, stateRecordN2)) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(a0.a(stateObject, stateRecordN2.b()));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(stateObject);
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(!t.e(stateRecordE, stateRecordN) ? a0.a(stateObject, stateRecordE) : a0.a(stateObject, stateRecordN.b()));
                    }
                }
            }
        }
        if (arrayList != null) {
            B();
            int size = arrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                u uVar = (u) arrayList.get(i11);
                StateObject stateObject2 = (StateObject) uVar.a();
                StateRecord stateRecord = (StateRecord) uVar.b();
                stateRecord.f(f());
                synchronized (SnapshotKt.C()) {
                    stateRecord.e(stateObject2.m());
                    stateObject2.a(stateRecord);
                    l0 l0Var = l0.INSTANCE;
                }
            }
        }
        if (arrayList2 != null) {
            setE.removeAll(arrayList2);
        }
        return SnapshotApplyResult.Success.INSTANCE;
    }

    public final void J(@NotNull SnapshotIdSet snapshots) {
        t.j(snapshots, "snapshots");
        synchronized (SnapshotKt.C()) {
            this.previousIds = this.previousIds.r(snapshots);
            l0 l0Var = l0.INSTANCE;
        }
    }

    public final void K(int i10) {
        if (i10 >= 0) {
            this.previousPinnedSnapshots = o.u(this.previousPinnedSnapshots, i10);
        }
    }

    public final void L(@NotNull int[] handles) {
        t.j(handles, "handles");
        if (handles.length == 0) {
            return;
        }
        int[] iArr = this.previousPinnedSnapshots;
        if (iArr.length == 0) {
            this.previousPinnedSnapshots = handles;
        } else {
            this.previousPinnedSnapshots = o.v(iArr, handles);
        }
    }

    public final void M() {
        int length = this.previousPinnedSnapshots.length;
        for (int i10 = 0; i10 < length; i10++) {
            SnapshotKt.Q(this.previousPinnedSnapshots[i10]);
        }
    }

    public final void Q() {
        if (!(!this.applied)) {
            throw new IllegalStateException("Unsupported operation on a snapshot that has been applied".toString());
        }
    }

    public final void R() {
        if (this.applied && ((Snapshot) this).pinningTrackingHandle < 0) {
            throw new IllegalStateException("Unsupported operation on a disposed or applied snapshot".toString());
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void m(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        int i10 = this.snapshots;
        if (i10 <= 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int i11 = i10 - 1;
        this.snapshots = i11;
        if (i11 != 0 || this.applied) {
            return;
        }
        A();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void n() {
        if (this.applied || e()) {
            return;
        }
        B();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void o(@NotNull StateObject state) {
        t.j(state, "state");
        Set<StateObject> setE = E();
        if (setE == null) {
            setE = new HashSet<>();
            O(setE);
        }
        setE.add(state);
    }

    private final void A() {
        Set<StateObject> setE = E();
        if (setE != null) {
            Q();
            O(null);
            int iF = f();
            Iterator<StateObject> it = setE.iterator();
            while (it.hasNext()) {
                for (StateRecord stateRecordM = it.next().m(); stateRecordM != null; stateRecordM = stateRecordM.c()) {
                    if (stateRecordM.d() == iF || d0.Z(this.previousIds, Integer.valueOf(stateRecordM.d()))) {
                        stateRecordM.f(0);
                    }
                }
            }
        }
        b();
    }

    public final void B() {
        I(f());
        l0 l0Var = l0.INSTANCE;
        if (!D() && !e()) {
            int iF = f();
            synchronized (SnapshotKt.C()) {
                int i10 = SnapshotKt.nextSnapshotId;
                SnapshotKt.nextSnapshotId = i10 + 1;
                t(i10);
                SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.s(f());
            }
            u(SnapshotKt.v(g(), iF + 1, f()));
        }
    }

    @NotNull
    public SnapshotApplyResult C() {
        Map<StateRecord, ? extends StateRecord> mapK;
        u uVarA;
        Set<StateObject> setE = E();
        if (setE != null) {
            Object obj = SnapshotKt.currentGlobalSnapshot.get();
            t.i(obj, "currentGlobalSnapshot.get()");
            mapK = SnapshotKt.K((MutableSnapshot) obj, this, SnapshotKt.openSnapshots.m(((GlobalSnapshot) SnapshotKt.currentGlobalSnapshot.get()).f()));
        } else {
            mapK = null;
        }
        synchronized (SnapshotKt.C()) {
            try {
                SnapshotKt.Y(this);
                if (setE != null && setE.size() != 0) {
                    GlobalSnapshot previousGlobalSnapshot = (GlobalSnapshot) SnapshotKt.currentGlobalSnapshot.get();
                    SnapshotApplyResult snapshotApplyResultH = H(SnapshotKt.nextSnapshotId, mapK, SnapshotKt.openSnapshots.m(previousGlobalSnapshot.f()));
                    if (!t.e(snapshotApplyResultH, SnapshotApplyResult.Success.INSTANCE)) {
                        return snapshotApplyResultH;
                    }
                    c();
                    t.i(previousGlobalSnapshot, "previousGlobalSnapshot");
                    SnapshotKt.S(previousGlobalSnapshot, SnapshotKt.emptyLambda);
                    Set<StateObject> setE2 = previousGlobalSnapshot.E();
                    O(null);
                    previousGlobalSnapshot.O(null);
                    uVarA = a0.a(d0.W0(SnapshotKt.applyObservers), setE2);
                } else {
                    c();
                    GlobalSnapshot previousGlobalSnapshot2 = (GlobalSnapshot) SnapshotKt.currentGlobalSnapshot.get();
                    t.i(previousGlobalSnapshot2, "previousGlobalSnapshot");
                    SnapshotKt.S(previousGlobalSnapshot2, SnapshotKt.emptyLambda);
                    Set<StateObject> setE3 = previousGlobalSnapshot2.E();
                    if (setE3 != null && (!setE3.isEmpty())) {
                        uVarA = a0.a(d0.W0(SnapshotKt.applyObservers), setE3);
                    } else {
                        uVarA = a0.a(v.m(), null);
                    }
                }
                List list = (List) uVarA.a();
                Set set = (Set) uVarA.b();
                this.applied = true;
                if (set != null && (!set.isEmpty())) {
                    int size = list.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        ((p) list.get(i10)).invoke(set, this);
                    }
                }
                if (setE != null && (!setE.isEmpty())) {
                    int size2 = list.size();
                    for (int i11 = 0; i11 < size2; i11++) {
                        ((p) list.get(i11)).invoke(setE, this);
                    }
                }
                synchronized (SnapshotKt.C()) {
                    q();
                    l0 l0Var = l0.INSTANCE;
                }
                return SnapshotApplyResult.Success.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void I(int i10) {
        synchronized (SnapshotKt.C()) {
            this.previousIds = this.previousIds.s(i10);
            l0 l0Var = l0.INSTANCE;
        }
    }

    @NotNull
    public MutableSnapshot P(@Nullable l<Object, l0> lVar, @Nullable l<Object, l0> lVar2) {
        NestedMutableSnapshot nestedMutableSnapshot;
        z();
        R();
        I(f());
        synchronized (SnapshotKt.C()) {
            int i10 = SnapshotKt.nextSnapshotId;
            SnapshotKt.nextSnapshotId = i10 + 1;
            SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.s(i10);
            SnapshotIdSet snapshotIdSetG = g();
            u(snapshotIdSetG.s(i10));
            nestedMutableSnapshot = new NestedMutableSnapshot(i10, SnapshotKt.v(snapshotIdSetG, f() + 1, i10), SnapshotKt.F(lVar, h(), false, 4, null), SnapshotKt.G(lVar2, j()), this);
        }
        if (!D() && !e()) {
            int iF = f();
            synchronized (SnapshotKt.C()) {
                int i11 = SnapshotKt.nextSnapshotId;
                SnapshotKt.nextSnapshotId = i11 + 1;
                t(i11);
                SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.s(f());
                l0 l0Var = l0.INSTANCE;
            }
            u(SnapshotKt.v(g(), iF + 1, f()));
        }
        return nestedMutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void c() {
        SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.m(f()).j(this.previousIds);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void d() {
        if (!e()) {
            super.d();
            m(this);
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void q() {
        M();
        super.q();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    @NotNull
    public Snapshot v(@Nullable l<Object, l0> lVar) {
        NestedReadonlySnapshot nestedReadonlySnapshot;
        z();
        R();
        int iF = f();
        I(f());
        synchronized (SnapshotKt.C()) {
            int i10 = SnapshotKt.nextSnapshotId;
            SnapshotKt.nextSnapshotId = i10 + 1;
            SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.s(i10);
            nestedReadonlySnapshot = new NestedReadonlySnapshot(i10, SnapshotKt.v(g(), iF + 1, i10), lVar, this);
        }
        if (!D() && !e()) {
            int iF2 = f();
            synchronized (SnapshotKt.C()) {
                int i11 = SnapshotKt.nextSnapshotId;
                SnapshotKt.nextSnapshotId = i11 + 1;
                t(i11);
                SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.s(f());
                l0 l0Var = l0.INSTANCE;
            }
            u(SnapshotKt.v(g(), iF2 + 1, f()));
        }
        return nestedReadonlySnapshot;
    }
}
