package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class g<T> extends a<T> {

    @NotNull
    private final Thread blockedThread;

    @Nullable
    private final k1 eventLoop;

    public g(@NotNull kotlin.coroutines.g gVar, @NotNull Thread thread, @Nullable k1 k1Var) {
        super(gVar, true, true);
        this.blockedThread = thread;
        this.eventLoop = k1Var;
    }

    @Override // kotlinx.coroutines.j2
    protected boolean r0() {
        return true;
    }

    @Override // kotlinx.coroutines.j2
    protected void C(@Nullable Object obj) {
        w7.l0 l0Var;
        if (!kotlin.jvm.internal.t.e(Thread.currentThread(), this.blockedThread)) {
            Thread thread = this.blockedThread;
            b bVarA = c.a();
            if (bVarA != null) {
                bVarA.f(thread);
                l0Var = w7.l0.INSTANCE;
            } else {
                l0Var = null;
            }
            if (l0Var == null) {
                LockSupport.unpark(thread);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T a1() throws Throwable {
        long jM0;
        w7.l0 l0Var;
        b bVarA = c.a();
        if (bVarA != null) {
            bVarA.c();
        }
        try {
            k1 k1Var = this.eventLoop;
            c0 c0Var = null;
            if (k1Var != null) {
                k1.J0(k1Var, false, 1, null);
            }
            while (!Thread.interrupted()) {
                try {
                    k1 k1Var2 = this.eventLoop;
                    if (k1Var2 != null) {
                        jM0 = k1Var2.M0();
                    } else {
                        jM0 = Long.MAX_VALUE;
                    }
                    if (!m()) {
                        b bVarA2 = c.a();
                        if (bVarA2 != null) {
                            bVarA2.b(this, jM0);
                            l0Var = w7.l0.INSTANCE;
                        } else {
                            l0Var = null;
                        }
                        if (l0Var == null) {
                            LockSupport.parkNanos(this, jM0);
                        }
                    } else {
                        k1 k1Var3 = this.eventLoop;
                        if (k1Var3 != null) {
                            k1.y0(k1Var3, false, 1, null);
                        }
                        b bVarA3 = c.a();
                        if (bVarA3 != null) {
                            bVarA3.g();
                        }
                        T t5 = (T) k2.h(n0());
                        if (t5 instanceof c0) {
                            c0Var = (c0) t5;
                        }
                        if (c0Var == null) {
                            return t5;
                        }
                        throw c0Var.cause;
                    }
                } catch (Throwable th) {
                    k1 k1Var4 = this.eventLoop;
                    if (k1Var4 != null) {
                        k1.y0(k1Var4, false, 1, null);
                    }
                    throw th;
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            F(interruptedException);
            throw interruptedException;
        } catch (Throwable th2) {
            b bVarA4 = c.a();
            if (bVarA4 != null) {
                bVarA4.g();
            }
            throw th2;
        }
    }
}
