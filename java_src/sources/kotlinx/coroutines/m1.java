package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public abstract class m1 extends k1 {
    @NotNull
    protected abstract Thread P0();

    protected void Q0(long j6, @NotNull l1.c cVar) {
        t0.INSTANCE.a1(j6, cVar);
    }

    protected final void R0() {
        w7.l0 l0Var;
        Thread threadP0 = P0();
        if (Thread.currentThread() != threadP0) {
            b bVarA = c.a();
            if (bVarA != null) {
                bVarA.f(threadP0);
                l0Var = w7.l0.INSTANCE;
            } else {
                l0Var = null;
            }
            if (l0Var == null) {
                LockSupport.unpark(threadP0);
            }
        }
    }
}
