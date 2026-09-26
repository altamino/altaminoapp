package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class k1 extends k0 {
    private boolean shared;

    @Nullable
    private kotlin.collections.k<b1<?>> unconfinedQueue;
    private long useCount;

    private final long F0(boolean z6) {
        return z6 ? 4294967296L : 1L;
    }

    public boolean O0() {
        return false;
    }

    public void shutdown() {
    }

    public static /* synthetic */ void J0(k1 k1Var, boolean z6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        k1Var.I0(z6);
    }

    public static /* synthetic */ void y0(k1 k1Var, boolean z6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        k1Var.L(z6);
    }

    public final void G0(@NotNull b1<?> b1Var) {
        kotlin.collections.k<b1<?>> kVar = this.unconfinedQueue;
        if (kVar == null) {
            kVar = new kotlin.collections.k<>();
            this.unconfinedQueue = kVar;
        }
        kVar.g(b1Var);
    }

    protected long H0() {
        kotlin.collections.k<b1<?>> kVar = this.unconfinedQueue;
        return (kVar == null || kVar.isEmpty()) ? Long.MAX_VALUE : 0L;
    }

    public final void I0(boolean z6) {
        this.useCount += F0(z6);
        if (z6) {
            return;
        }
        this.shared = true;
    }

    public final boolean K0() {
        return this.useCount >= F0(true);
    }

    public final void L(boolean z6) {
        long jF0 = this.useCount - F0(z6);
        this.useCount = jF0;
        if (jF0 <= 0 && this.shared) {
            shutdown();
        }
    }

    public final boolean L0() {
        kotlin.collections.k<b1<?>> kVar = this.unconfinedQueue;
        if (kVar != null) {
            return kVar.isEmpty();
        }
        return true;
    }

    public final boolean N0() {
        b1<?> b1VarX;
        kotlin.collections.k<b1<?>> kVar = this.unconfinedQueue;
        if (kVar == null || (b1VarX = kVar.x()) == null) {
            return false;
        }
        b1VarX.run();
        return true;
    }

    public long M0() {
        if (!N0()) {
            return Long.MAX_VALUE;
        }
        return 0L;
    }

    @Override // kotlinx.coroutines.k0
    @NotNull
    public final k0 limitedParallelism(int i10) {
        kotlinx.coroutines.internal.q.a(i10);
        return this;
    }
}
