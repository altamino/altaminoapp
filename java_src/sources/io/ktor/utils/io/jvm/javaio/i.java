package io.ktor.utils.io.jvm.javaio;

import kotlin.jvm.internal.t;
import kotlinx.coroutines.k0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class i extends k0 {

    @NotNull
    public static final i INSTANCE = new i();

    @Override // kotlinx.coroutines.k0
    public boolean isDispatchNeeded(@NotNull kotlin.coroutines.g context) {
        t.j(context, "context");
        return true;
    }

    @Override // kotlinx.coroutines.k0
    public void dispatch(@NotNull kotlin.coroutines.g context, @NotNull Runnable block) {
        t.j(context, "context");
        t.j(block, "block");
        block.run();
    }

    private i() {
    }
}
