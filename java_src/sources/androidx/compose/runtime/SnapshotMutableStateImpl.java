package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateRecord;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public class SnapshotMutableStateImpl<T> implements StateObject, SnapshotMutableState<T> {

    @NotNull
    private StateStateRecord<T> next;

    @NotNull
    private final SnapshotMutationPolicy<T> policy;

    private static final class StateStateRecord<T> extends StateRecord {
        private T value;

        public final T g() {
            return this.value;
        }

        public final void h(T t5) {
            this.value = t5;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public void a(@NotNull StateRecord value) {
            t.j(value, "value");
            this.value = ((StateStateRecord) value).value;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        @NotNull
        public StateRecord b() {
            return new StateStateRecord(this.value);
        }

        public StateStateRecord(T t5) {
            this.value = t5;
        }
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    @NotNull
    public SnapshotMutationPolicy<T> g() {
        return this.policy;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    @NotNull
    public StateRecord m() {
        return this.next;
    }

    public SnapshotMutableStateImpl(T t5, @NotNull SnapshotMutationPolicy<T> policy) {
        t.j(policy, "policy");
        this.policy = policy;
        this.next = new StateStateRecord<>(t5);
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public void a(@NotNull StateRecord value) {
        t.j(value, "value");
        this.next = (StateStateRecord) value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.snapshots.StateObject
    @Nullable
    public StateRecord e(@NotNull StateRecord previous, @NotNull StateRecord current, @NotNull StateRecord applied) {
        t.j(previous, "previous");
        t.j(current, "current");
        t.j(applied, "applied");
        StateStateRecord stateStateRecord = (StateStateRecord) previous;
        StateStateRecord stateStateRecord2 = (StateStateRecord) current;
        StateStateRecord stateStateRecord3 = (StateStateRecord) applied;
        if (g().a(stateStateRecord2.g(), stateStateRecord3.g())) {
            return current;
        }
        Object objB = g().b(stateStateRecord.g(), stateStateRecord2.g(), stateStateRecord3.g());
        if (objB == null) {
            return null;
        }
        StateRecord stateRecordB = stateStateRecord3.b();
        ((StateStateRecord) stateRecordB).h(objB);
        return stateRecordB;
    }

    @Override // androidx.compose.runtime.MutableState, androidx.compose.runtime.State
    public T getValue() {
        return (T) ((StateStateRecord) SnapshotKt.O(this.next, this)).g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.MutableState
    public void setValue(T t5) {
        Snapshot snapshotB;
        StateStateRecord<T> stateStateRecord = this.next;
        Snapshot.Companion companion = Snapshot.Companion;
        StateStateRecord stateStateRecord2 = (StateStateRecord) SnapshotKt.A(stateStateRecord, companion.b());
        if (g().a(stateStateRecord2.g(), t5)) {
            return;
        }
        StateStateRecord<T> stateStateRecord3 = this.next;
        SnapshotKt.D();
        synchronized (SnapshotKt.C()) {
            snapshotB = companion.b();
            ((StateStateRecord) SnapshotKt.L(stateStateRecord3, this, snapshotB, stateStateRecord2)).h(t5);
            l0 l0Var = l0.INSTANCE;
        }
        SnapshotKt.J(snapshotB, this);
    }

    @NotNull
    public String toString() {
        return "MutableState(value=" + ((StateStateRecord) SnapshotKt.A(this.next, Snapshot.Companion.b())).g() + ")@" + hashCode();
    }
}
