package androidx.compose.runtime;

import e8.l;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.o;
import kotlinx.coroutines.p1;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class Recomposer$effectJob$1$1 extends v implements l<Throwable, l0> {
    final /* synthetic */ Recomposer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$effectJob$1$1(Recomposer recomposer) {
        super(1);
        this.this$0 = recomposer;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        o oVar;
        o oVar2;
        CancellationException cancellationExceptionA = p1.a("Recomposer effect job completed", th);
        Object obj = this.this$0.stateLock;
        Recomposer recomposer = this.this$0;
        synchronized (obj) {
            try {
                b2 b2Var = recomposer.runnerJob;
                oVar = null;
                if (b2Var != null) {
                    recomposer._state.setValue(Recomposer.State.ShuttingDown);
                    if (recomposer.isClosed) {
                        if (recomposer.workContinuation != null) {
                            oVar2 = recomposer.workContinuation;
                        }
                        recomposer.workContinuation = null;
                        b2Var.U(new Recomposer$effectJob$1$1$1$1(recomposer, th));
                        oVar = oVar2;
                    } else {
                        b2Var.b(cancellationExceptionA);
                    }
                    oVar2 = null;
                    recomposer.workContinuation = null;
                    b2Var.U(new Recomposer$effectJob$1$1$1$1(recomposer, th));
                    oVar = oVar2;
                } else {
                    recomposer.closeCause = cancellationExceptionA;
                    recomposer._state.setValue(Recomposer.State.ShutDown);
                    l0 l0Var = l0.INSTANCE;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (oVar != null) {
            w7.v.a aVar = w7.v.Companion;
            oVar.resumeWith(w7.v.b(l0.INSTANCE));
        }
    }
}
