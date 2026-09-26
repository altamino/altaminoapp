package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateObject;
import e8.l;
import java.util.HashSet;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class DerivedSnapshotState$currentRecord$result$1$result$1 extends v implements l<Object, l0> {
    final /* synthetic */ HashSet<StateObject> $newDependencies;
    final /* synthetic */ DerivedSnapshotState<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DerivedSnapshotState$currentRecord$result$1$result$1(DerivedSnapshotState<T> derivedSnapshotState, HashSet<StateObject> hashSet) {
        super(1);
        this.this$0 = derivedSnapshotState;
        this.$newDependencies = hashSet;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
        invoke2(obj);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Object it) {
        t.j(it, "it");
        if (it == this.this$0) {
            throw new IllegalStateException("A derived state calculation cannot read itself".toString());
        }
        if (it instanceof StateObject) {
            this.$newDependencies.add(it);
        }
    }
}
