package androidx.compose.runtime;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateRecord;
import e8.l;
import java.util.HashSet;
import java.util.Set;
import kotlin.collections.y0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes.dex */
final class DerivedSnapshotState<T> implements StateObject, DerivedState<T> {

    @NotNull
    private final e8.a<T> calculation;

    @NotNull
    private ResultRecord<T> first;

    private static final class ResultRecord<T> extends StateRecord {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private static final Object Unset = new Object();

        @Nullable
        private HashSet<StateObject> dependencies;

        @Nullable
        private Object result = Unset;
        private int resultHash;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        @Nullable
        public final HashSet<StateObject> g() {
            return this.dependencies;
        }

        @Nullable
        public final Object h() {
            return this.result;
        }

        public final void k(@Nullable HashSet<StateObject> hashSet) {
            this.dependencies = hashSet;
        }

        public final void l(@Nullable Object obj) {
            this.result = obj;
        }

        public final void m(int i10) {
            this.resultHash = i10;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void a(@NotNull StateRecord value) {
            t.j(value, "value");
            ResultRecord resultRecord = (ResultRecord) value;
            this.dependencies = resultRecord.dependencies;
            this.result = resultRecord.result;
            this.resultHash = resultRecord.resultHash;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord b() {
            return new ResultRecord();
        }

        public final boolean i(@NotNull DerivedState<?> derivedState, @NotNull Snapshot snapshot) {
            t.j(derivedState, "derivedState");
            t.j(snapshot, "snapshot");
            return this.result != Unset && this.resultHash == j(derivedState, snapshot);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int j(@NotNull DerivedState<?> derivedState, @NotNull Snapshot snapshot) {
            HashSet<StateObject> hashSet;
            t.j(derivedState, "derivedState");
            t.j(snapshot, "snapshot");
            synchronized (SnapshotKt.C()) {
                hashSet = this.dependencies;
            }
            int iA = 7;
            if (hashSet != null) {
                PersistentList persistentListB = (PersistentList) SnapshotStateKt__DerivedStateKt.derivedStateObservers.a();
                if (persistentListB == null) {
                    persistentListB = ExtensionsKt.b();
                }
                int size = persistentListB.size();
                int i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    ((l) ((u) persistentListB.get(i11)).a()).invoke(derivedState);
                }
                try {
                    for (StateObject stateObject : hashSet) {
                        StateRecord stateRecordM = stateObject.m();
                        t.i(stateObject, "stateObject");
                        StateRecord stateRecordP = SnapshotKt.P(stateRecordM, stateObject, snapshot);
                        iA = (((iA * 31) + ActualJvm_jvmKt.a(stateRecordP)) * 31) + stateRecordP.d();
                    }
                    l0 l0Var = l0.INSTANCE;
                } finally {
                    int size2 = persistentListB.size();
                    while (i10 < size2) {
                        ((l) ((u) persistentListB.get(i10)).b()).invoke(derivedState);
                        i10++;
                    }
                }
            }
            return iA;
        }
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public /* synthetic */ StateRecord e(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        return androidx.compose.runtime.snapshots.a.a(this, stateRecord, stateRecord2, stateRecord3);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord m() {
        return this.first;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DerivedSnapshotState(@NotNull e8.a<? extends T> calculation) {
        t.j(calculation, "calculation");
        this.calculation = calculation;
        this.first = new ResultRecord<>();
    }

    private final String d() {
        ResultRecord<T> resultRecord = this.first;
        Snapshot.Companion companion = Snapshot.Companion;
        ResultRecord resultRecord2 = (ResultRecord) SnapshotKt.A(resultRecord, companion.b());
        return resultRecord2.i(this, companion.b()) ? String.valueOf(resultRecord2.h()) : "<Not calculated>";
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void a(@NotNull StateRecord value) {
        t.j(value, "value");
        this.first = (ResultRecord) value;
    }

    @Override // androidx.compose.runtime.State
    public T getValue() {
        l<Object, l0> lVarH = Snapshot.Companion.b().h();
        if (lVarH != null) {
            lVarH.invoke(this);
        }
        return h();
    }

    @Override // androidx.compose.runtime.DerivedState
    public T h() {
        ResultRecord<T> resultRecord = this.first;
        Snapshot.Companion companion = Snapshot.Companion;
        return (T) b((ResultRecord) SnapshotKt.A(resultRecord, companion.b()), companion.b(), this.calculation).h();
    }

    @Override // androidx.compose.runtime.DerivedState
    @NotNull
    public Set<StateObject> i() {
        ResultRecord<T> resultRecord = this.first;
        Snapshot.Companion companion = Snapshot.Companion;
        HashSet<StateObject> hashSetG = b((ResultRecord) SnapshotKt.A(resultRecord, companion.b()), companion.b(), this.calculation).g();
        return hashSetG != null ? hashSetG : y0.e();
    }

    @NotNull
    public String toString() {
        return "DerivedState(value=" + d() + ")@" + hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final ResultRecord<T> b(ResultRecord<T> resultRecord, Snapshot snapshot, e8.a<? extends T> aVar) {
        boolean zBooleanValue;
        Snapshot.Companion companion;
        ResultRecord<T> resultRecord2;
        if (resultRecord.i(this, snapshot)) {
            return resultRecord;
        }
        Boolean bool = (Boolean) SnapshotStateKt__DerivedStateKt.isCalculationBlockRunning.a();
        int i10 = 0;
        if (bool != null) {
            zBooleanValue = bool.booleanValue();
        } else {
            zBooleanValue = false;
        }
        HashSet<StateObject> hashSet = new HashSet<>();
        PersistentList persistentListB = (PersistentList) SnapshotStateKt__DerivedStateKt.derivedStateObservers.a();
        if (persistentListB == null) {
            persistentListB = ExtensionsKt.b();
        }
        int size = persistentListB.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((l) ((u) persistentListB.get(i11)).a()).invoke(this);
        }
        if (!zBooleanValue) {
            try {
                SnapshotStateKt__DerivedStateKt.isCalculationBlockRunning.b(Boolean.TRUE);
            } catch (Throwable th) {
                int size2 = persistentListB.size();
                while (i10 < size2) {
                    ((l) ((u) persistentListB.get(i10)).b()).invoke(this);
                    i10++;
                }
                throw th;
            }
        }
        Object objD = Snapshot.Companion.d(new DerivedSnapshotState$currentRecord$result$1$result$1(this, hashSet), null, aVar);
        if (!zBooleanValue) {
            SnapshotStateKt__DerivedStateKt.isCalculationBlockRunning.b(Boolean.FALSE);
        }
        int size3 = persistentListB.size();
        while (i10 < size3) {
            ((l) ((u) persistentListB.get(i10)).b()).invoke(this);
            i10++;
        }
        synchronized (SnapshotKt.C()) {
            companion = Snapshot.Companion;
            Snapshot snapshotB = companion.b();
            resultRecord2 = (ResultRecord) SnapshotKt.I(this.first, this, snapshotB);
            resultRecord2.k(hashSet);
            resultRecord2.m(resultRecord2.j(this, snapshotB));
            resultRecord2.l(objD);
        }
        if (!zBooleanValue) {
            companion.c();
        }
        return resultRecord2;
    }
}
