package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.Snapshot;
import e8.p;
import java.util.Set;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class Recomposer$recompositionRunner$2$unregisterApplyObserver$1 extends v implements p<Set<? extends Object>, Snapshot, l0> {
    final /* synthetic */ Recomposer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$recompositionRunner$2$unregisterApplyObserver$1(Recomposer recomposer) {
        super(2);
        this.this$0 = recomposer;
    }

    public final void a(@NotNull Set<? extends Object> changed, @NotNull Snapshot snapshot) {
        o oVarB0;
        t.j(changed, "changed");
        t.j(snapshot, "<anonymous parameter 1>");
        Object obj = this.this$0.stateLock;
        Recomposer recomposer = this.this$0;
        synchronized (obj) {
            if (((Recomposer.State) recomposer._state.getValue()).compareTo(Recomposer.State.Idle) >= 0) {
                recomposer.snapshotInvalidations.add(changed);
                oVarB0 = recomposer.b0();
            } else {
                oVarB0 = null;
            }
        }
        if (oVarB0 != null) {
            w7.v.a aVar = w7.v.Companion;
            oVarB0.resumeWith(w7.v.b(l0.INSTANCE));
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Set<? extends Object> set, Snapshot snapshot) {
        a(set, snapshot);
        return l0.INSTANCE;
    }
}
