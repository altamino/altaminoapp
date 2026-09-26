package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.Snapshot;
import e8.p;
import java.util.Set;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.channels.d;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1$unregisterApplyObserver$1 extends v implements p<Set<? extends Object>, Snapshot, l0> {
    final /* synthetic */ d<Set<Object>> $appliedChanges;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1$unregisterApplyObserver$1(d<Set<Object>> dVar) {
        super(2);
        this.$appliedChanges = dVar;
    }

    public final void a(@NotNull Set<? extends Object> changed, @NotNull Snapshot snapshot) {
        t.j(changed, "changed");
        t.j(snapshot, "<anonymous parameter 1>");
        this.$appliedChanges.p(changed);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Set<? extends Object> set, Snapshot snapshot) {
        a(set, snapshot);
        return l0.INSTANCE;
    }
}
