package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class g3 extends k0 {

    @NotNull
    public static final g3 INSTANCE = new g3();

    @Override // kotlinx.coroutines.k0
    public boolean isDispatchNeeded(@NotNull kotlin.coroutines.g gVar) {
        return false;
    }

    @Override // kotlinx.coroutines.k0
    @NotNull
    public String toString() {
        return "Dispatchers.Unconfined";
    }

    @Override // kotlinx.coroutines.k0
    public void dispatch(@NotNull kotlin.coroutines.g gVar, @NotNull Runnable runnable) {
        k3 k3Var = (k3) gVar.get(k3.Key);
        if (k3Var == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
        k3Var.dispatcherWasUnconfined = true;
    }

    @Override // kotlinx.coroutines.k0
    @NotNull
    public k0 limitedParallelism(int i10) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    private g3() {
    }
}
