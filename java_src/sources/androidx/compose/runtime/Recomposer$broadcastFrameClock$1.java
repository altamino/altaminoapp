package androidx.compose.runtime;

import kotlin.jvm.internal.v;
import kotlinx.coroutines.o;
import kotlinx.coroutines.p1;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class Recomposer$broadcastFrameClock$1 extends v implements e8.a<l0> {
    final /* synthetic */ Recomposer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$broadcastFrameClock$1(Recomposer recomposer) {
        super(0);
        this.this$0 = recomposer;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        o oVarB0;
        Object obj = this.this$0.stateLock;
        Recomposer recomposer = this.this$0;
        synchronized (obj) {
            oVarB0 = recomposer.b0();
            if (((Recomposer.State) recomposer._state.getValue()).compareTo(Recomposer.State.ShuttingDown) <= 0) {
                throw p1.a("Recomposer shutdown; frame clock awaiter will never resume", recomposer.closeCause);
            }
        }
        if (oVarB0 != null) {
            w7.v.a aVar = w7.v.Companion;
            oVarB0.resumeWith(w7.v.b(l0.INSTANCE));
        }
    }
}
