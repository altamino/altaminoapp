package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class v2 implements Runnable {

    @NotNull
    private final o<w7.l0> continuation;

    @NotNull
    private final k0 dispatcher;

    @Override // java.lang.Runnable
    public void run() {
        this.continuation.V(this.dispatcher, w7.l0.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v2(@NotNull k0 k0Var, @NotNull o<? super w7.l0> oVar) {
        this.dispatcher = k0Var;
        this.continuation = oVar;
    }
}
