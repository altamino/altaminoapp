package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.SnapshotThreadLocal;
import e8.l;
import e8.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.i;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class SnapshotKt {
    private static final int INVALID_SNAPSHOT = 0;

    @NotNull
    private static final List<p<Set<? extends Object>, Snapshot, l0>> applyObservers;

    @NotNull
    private static final AtomicReference<GlobalSnapshot> currentGlobalSnapshot;

    @NotNull
    private static final List<l<Object, l0>> globalWriteObservers;
    private static int nextSnapshotId;

    @NotNull
    private static SnapshotIdSet openSnapshots;

    @NotNull
    private static final SnapshotDoubleIndexHeap pinningTable;

    @NotNull
    private static final Snapshot snapshotInitializer;

    @NotNull
    private static final l<SnapshotIdSet, l0> emptyLambda = SnapshotKt$emptyLambda$1.INSTANCE;

    @NotNull
    private static final SnapshotThreadLocal<Snapshot> threadSnapshot = new SnapshotThreadLocal<>();

    @NotNull
    private static final Object lock = new Object();

    @NotNull
    public static final Object C() {
        return lock;
    }

    @NotNull
    public static final Snapshot D() {
        return snapshotInitializer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends StateRecord> T N(T t5, int i10, SnapshotIdSet snapshotIdSet) {
        T t10 = null;
        while (t5 != null) {
            if (X(t5, i10, snapshotIdSet) && (t10 == null || t10.d() < t5.d())) {
                t10 = t5;
            }
            t5 = (T) t5.c();
        }
        if (t10 != null) {
            return t10;
        }
        return null;
    }

    static {
        SnapshotIdSet.Companion companion = SnapshotIdSet.Companion;
        openSnapshots = companion.a();
        nextSnapshotId = 1;
        pinningTable = new SnapshotDoubleIndexHeap();
        applyObservers = new ArrayList();
        globalWriteObservers = new ArrayList();
        int i10 = nextSnapshotId;
        nextSnapshotId = i10 + 1;
        GlobalSnapshot globalSnapshot = new GlobalSnapshot(i10, companion.a());
        openSnapshots = openSnapshots.s(globalSnapshot.f());
        AtomicReference<GlobalSnapshot> atomicReference = new AtomicReference<>(globalSnapshot);
        currentGlobalSnapshot = atomicReference;
        GlobalSnapshot globalSnapshot2 = atomicReference.get();
        t.i(globalSnapshot2, "currentGlobalSnapshot.get()");
        snapshotInitializer = globalSnapshot2;
    }

    @NotNull
    public static final <T extends StateRecord> T A(@NotNull T r, @NotNull Snapshot snapshot) {
        t.j(r, "r");
        t.j(snapshot, "snapshot");
        T t5 = (T) N(r, snapshot.f(), snapshot.g());
        if (t5 != null) {
            return t5;
        }
        M();
        throw new i();
    }

    @NotNull
    public static final Snapshot B() {
        Snapshot snapshotA = threadSnapshot.a();
        if (snapshotA != null) {
            return snapshotA;
        }
        GlobalSnapshot globalSnapshot = currentGlobalSnapshot.get();
        t.i(globalSnapshot, "currentGlobalSnapshot.get()");
        return globalSnapshot;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l<Object, l0> E(l<Object, l0> lVar, l<Object, l0> lVar2, boolean z6) {
        if (!z6) {
            lVar2 = null;
        }
        if (lVar == null || lVar2 == null || t.e(lVar, lVar2)) {
            return lVar == null ? lVar2 : lVar;
        }
        return new SnapshotKt$mergedReadObserver$1(lVar, lVar2);
    }

    static /* synthetic */ l F(l lVar, l lVar2, boolean z6, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z6 = true;
        }
        return E(lVar, lVar2, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l<Object, l0> G(l<Object, l0> lVar, l<Object, l0> lVar2) {
        if (lVar == null || lVar2 == null || t.e(lVar, lVar2)) {
            return lVar == null ? lVar2 : lVar;
        }
        return new SnapshotKt$mergedWriteObserver$1(lVar, lVar2);
    }

    @NotNull
    public static final <T extends StateRecord> T H(@NotNull T t5, @NotNull StateObject state) {
        t.j(t5, "<this>");
        t.j(state, "state");
        T t10 = (T) V(state);
        if (t10 != null) {
            t10.f(Integer.MAX_VALUE);
            return t10;
        }
        T t11 = (T) t5.b();
        t11.f(Integer.MAX_VALUE);
        t11.e(state.m());
        state.a(t11);
        return t11;
    }

    @NotNull
    public static final <T extends StateRecord> T I(@NotNull T t5, @NotNull StateObject state, @NotNull Snapshot snapshot) {
        t.j(t5, "<this>");
        t.j(state, "state");
        t.j(snapshot, "snapshot");
        T t10 = (T) H(t5, state);
        t10.a(t5);
        t10.f(snapshot.f());
        return t10;
    }

    public static final void J(@NotNull Snapshot snapshot, @NotNull StateObject state) {
        t.j(snapshot, "snapshot");
        t.j(state, "state");
        l<Object, l0> lVarJ = snapshot.j();
        if (lVarJ != null) {
            lVarJ.invoke(state);
        }
    }

    @NotNull
    public static final <T extends StateRecord> T L(@NotNull T t5, @NotNull StateObject state, @NotNull Snapshot snapshot, @NotNull T candidate) {
        t.j(t5, "<this>");
        t.j(state, "state");
        t.j(snapshot, "snapshot");
        t.j(candidate, "candidate");
        if (snapshot.i()) {
            snapshot.o(state);
        }
        int iF = snapshot.f();
        if (candidate.d() == iF) {
            return candidate;
        }
        T t10 = (T) H(t5, state);
        t10.f(iF);
        snapshot.o(state);
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void M() {
        throw new IllegalStateException("Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied".toString());
    }

    @NotNull
    public static final <T extends StateRecord> T O(@NotNull T t5, @NotNull StateObject state) {
        t.j(t5, "<this>");
        t.j(state, "state");
        return (T) P(t5, state, B());
    }

    @NotNull
    public static final <T extends StateRecord> T P(@NotNull T t5, @NotNull StateObject state, @NotNull Snapshot snapshot) {
        t.j(t5, "<this>");
        t.j(state, "state");
        t.j(snapshot, "snapshot");
        l<Object, l0> lVarH = snapshot.h();
        if (lVarH != null) {
            lVarH.invoke(state);
        }
        T t10 = (T) N(t5, snapshot.f(), snapshot.g());
        if (t10 != null) {
            return t10;
        }
        M();
        throw new i();
    }

    public static final void Q(int i10) {
        pinningTable.f(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void R() {
        throw new IllegalStateException("Cannot modify a state object in a read-only snapshot".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> T S(Snapshot snapshot, l<? super SnapshotIdSet, ? extends T> lVar) {
        T tInvoke = lVar.invoke(openSnapshots.m(snapshot.f()));
        synchronized (C()) {
            int i10 = nextSnapshotId;
            nextSnapshotId = i10 + 1;
            openSnapshots = openSnapshots.m(snapshot.f());
            currentGlobalSnapshot.set(new GlobalSnapshot(i10, openSnapshots));
            snapshot.d();
            openSnapshots = openSnapshots.s(i10);
            l0 l0Var = l0.INSTANCE;
        }
        return tInvoke;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends Snapshot> T T(l<? super SnapshotIdSet, ? extends T> lVar) {
        return (T) w(new SnapshotKt$takeNewSnapshot$1(lVar));
    }

    public static final int U(int i10, @NotNull SnapshotIdSet invalid) {
        int iA;
        t.j(invalid, "invalid");
        int iQ = invalid.q(i10);
        synchronized (C()) {
            iA = pinningTable.a(iQ);
        }
        return iA;
    }

    private static final boolean W(int i10, int i11, SnapshotIdSet snapshotIdSet) {
        return (i11 == 0 || i11 > i10 || snapshotIdSet.p(i11)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(Snapshot snapshot) {
        if (!openSnapshots.p(snapshot.f())) {
            throw new IllegalStateException("Snapshot is not open".toString());
        }
    }

    @NotNull
    public static final <T extends StateRecord> T Z(@NotNull T t5, @NotNull StateObject state, @NotNull Snapshot snapshot) {
        t.j(t5, "<this>");
        t.j(state, "state");
        t.j(snapshot, "snapshot");
        if (snapshot.i()) {
            snapshot.o(state);
        }
        T t10 = (T) N(t5, snapshot.f(), snapshot.g());
        if (t10 == null) {
            M();
            throw new i();
        }
        if (t10.d() == snapshot.f()) {
            return t10;
        }
        T t11 = (T) I(t10, state, snapshot);
        snapshot.o(state);
        return t11;
    }

    @NotNull
    public static final SnapshotIdSet v(@NotNull SnapshotIdSet snapshotIdSet, int i10, int i11) {
        t.j(snapshotIdSet, "<this>");
        while (i10 < i11) {
            snapshotIdSet = snapshotIdSet.s(i10);
            i10++;
        }
        return snapshotIdSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> T w(l<? super SnapshotIdSet, ? extends T> lVar) {
        T t5;
        List listW0;
        GlobalSnapshot previousGlobalSnapshot = currentGlobalSnapshot.get();
        synchronized (C()) {
            t.i(previousGlobalSnapshot, "previousGlobalSnapshot");
            t5 = (T) S(previousGlobalSnapshot, lVar);
        }
        Set<StateObject> setE = previousGlobalSnapshot.E();
        if (setE != null) {
            synchronized (C()) {
                listW0 = d0.W0(applyObservers);
            }
            int size = listW0.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((p) listW0.get(i10)).invoke(setE, previousGlobalSnapshot);
            }
        }
        return t5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x() {
        w(SnapshotKt$advanceGlobalSnapshot$2.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Snapshot y(Snapshot snapshot, l<Object, l0> lVar, boolean z6) {
        boolean z10 = snapshot instanceof MutableSnapshot;
        if (z10 || snapshot == null) {
            return new TransparentObserverMutableSnapshot(z10 ? (MutableSnapshot) snapshot : null, lVar, null, false, z6);
        }
        return new TransparentObserverSnapshot(snapshot, lVar, false, z6);
    }

    static /* synthetic */ Snapshot z(Snapshot snapshot, l lVar, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        if ((i10 & 4) != 0) {
            z6 = false;
        }
        return y(snapshot, lVar, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map<StateRecord, StateRecord> K(MutableSnapshot mutableSnapshot, MutableSnapshot mutableSnapshot2, SnapshotIdSet snapshotIdSet) {
        StateRecord stateRecordN;
        Set<StateObject> setE = mutableSnapshot2.E();
        int iF = mutableSnapshot.f();
        if (setE == null) {
            return null;
        }
        SnapshotIdSet snapshotIdSetR = mutableSnapshot2.g().s(mutableSnapshot2.f()).r(mutableSnapshot2.F());
        HashMap map = null;
        for (StateObject stateObject : setE) {
            StateRecord stateRecordM = stateObject.m();
            StateRecord stateRecordN2 = N(stateRecordM, iF, snapshotIdSet);
            if (stateRecordN2 != null && (stateRecordN = N(stateRecordM, iF, snapshotIdSetR)) != null && !t.e(stateRecordN2, stateRecordN)) {
                StateRecord stateRecordN3 = N(stateRecordM, mutableSnapshot2.f(), mutableSnapshot2.g());
                if (stateRecordN3 != null) {
                    StateRecord stateRecordE = stateObject.e(stateRecordN, stateRecordN2, stateRecordN3);
                    if (stateRecordE == null) {
                        return null;
                    }
                    if (map == null) {
                        map = new HashMap();
                    }
                    map.put(stateRecordN2, stateRecordE);
                    map = map;
                } else {
                    M();
                    throw new i();
                }
            }
        }
        return map;
    }

    private static final StateRecord V(StateObject stateObject) {
        int iE = pinningTable.e(nextSnapshotId) - 1;
        SnapshotIdSet snapshotIdSetA = SnapshotIdSet.Companion.a();
        StateRecord stateRecord = null;
        for (StateRecord stateRecordM = stateObject.m(); stateRecordM != null; stateRecordM = stateRecordM.c()) {
            if (stateRecordM.d() == 0) {
                return stateRecordM;
            }
            if (X(stateRecordM, iE, snapshotIdSetA)) {
                if (stateRecord == null) {
                    stateRecord = stateRecordM;
                } else {
                    if (stateRecordM.d() >= stateRecord.d()) {
                        return stateRecord;
                    }
                    return stateRecordM;
                }
            }
        }
        return null;
    }

    private static final boolean X(StateRecord stateRecord, int i10, SnapshotIdSet snapshotIdSet) {
        return W(i10, stateRecord.d(), snapshotIdSet);
    }
}
