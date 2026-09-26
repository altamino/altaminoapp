package androidx.compose.runtime;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.a0;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
final /* synthetic */ class SnapshotStateKt__DerivedStateKt {

    @NotNull
    private static final SnapshotThreadLocal<PersistentList<u<l<DerivedState<?>, l0>, l<DerivedState<?>, l0>>>> derivedStateObservers = new SnapshotThreadLocal<>();

    @NotNull
    private static final SnapshotThreadLocal<Boolean> isCalculationBlockRunning = new SnapshotThreadLocal<>();

    @NotNull
    public static final <T> State<T> c(@NotNull e8.a<? extends T> calculation) {
        t.j(calculation, "calculation");
        return new DerivedSnapshotState(calculation);
    }

    public static final <R> void d(@NotNull l<? super State<?>, l0> start, @NotNull l<? super State<?>, l0> done, @NotNull e8.a<? extends R> block) {
        t.j(start, "start");
        t.j(done, "done");
        t.j(block, "block");
        SnapshotThreadLocal<PersistentList<u<l<DerivedState<?>, l0>, l<DerivedState<?>, l0>>>> snapshotThreadLocal = derivedStateObservers;
        PersistentList<u<l<DerivedState<?>, l0>, l<DerivedState<?>, l0>>> persistentListA = snapshotThreadLocal.a();
        try {
            PersistentList<u<l<DerivedState<?>, l0>, l<DerivedState<?>, l0>>> persistentListA2 = snapshotThreadLocal.a();
            if (persistentListA2 == null) {
                persistentListA2 = ExtensionsKt.b();
            }
            snapshotThreadLocal.b(persistentListA2.add(a0.a(start, done)));
            block.invoke();
        } finally {
            derivedStateObservers.b(persistentListA);
        }
    }
}
