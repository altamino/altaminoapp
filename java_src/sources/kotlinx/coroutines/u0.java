package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class u0 {
    private static final boolean defaultMainDelayOptIn = kotlinx.coroutines.internal.j0.f("kotlinx.coroutines.main.delay", false);

    @NotNull
    private static final x0 DefaultDelay = b();

    @NotNull
    public static final x0 a() {
        return DefaultDelay;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final x0 b() {
        if (!defaultMainDelayOptIn) {
            return t0.INSTANCE;
        }
        n2 n2VarC = e1.c();
        return (kotlinx.coroutines.internal.y.c(n2VarC) || !(n2VarC instanceof x0)) ? t0.INSTANCE : (x0) n2VarC;
    }
}
