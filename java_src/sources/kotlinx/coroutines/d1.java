package kotlinx.coroutines;

import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class d1 implements Executor {

    @NotNull
    public final k0 dispatcher;

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        k0 k0Var = this.dispatcher;
        kotlin.coroutines.h hVar = kotlin.coroutines.h.INSTANCE;
        if (k0Var.isDispatchNeeded(hVar)) {
            this.dispatcher.dispatch(hVar, runnable);
        } else {
            runnable.run();
        }
    }

    @NotNull
    public String toString() {
        return this.dispatcher.toString();
    }

    public d1(@NotNull k0 k0Var) {
        this.dispatcher = k0Var;
    }
}
