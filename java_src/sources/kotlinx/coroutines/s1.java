package kotlinx.coroutines;

import java.util.concurrent.Executor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class s1 {
    @NotNull
    public static final Executor a(@NotNull k0 k0Var) {
        Executor executorL;
        q1 q1Var = k0Var instanceof q1 ? (q1) k0Var : null;
        return (q1Var == null || (executorL = q1Var.L()) == null) ? new d1(k0Var) : executorL;
    }

    @NotNull
    public static final k0 b(@NotNull Executor executor) {
        k0 k0Var;
        d1 d1Var = executor instanceof d1 ? (d1) executor : null;
        return (d1Var == null || (k0Var = d1Var.dispatcher) == null) ? new r1(executor) : k0Var;
    }
}
