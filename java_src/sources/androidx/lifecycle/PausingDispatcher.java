package androidx.lifecycle;

import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.k0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class PausingDispatcher extends k0 {

    @NotNull
    public final DispatchQueue dispatchQueue = new DispatchQueue();

    @Override // kotlinx.coroutines.k0
    public void dispatch(@NotNull kotlin.coroutines.g context, @NotNull Runnable block) {
        t.j(context, "context");
        t.j(block, "block");
        this.dispatchQueue.c(context, block);
    }

    @Override // kotlinx.coroutines.k0
    public boolean isDispatchNeeded(@NotNull kotlin.coroutines.g context) {
        t.j(context, "context");
        if (e1.c().getImmediate().isDispatchNeeded(context)) {
            return true;
        }
        return !this.dispatchQueue.b();
    }
}
