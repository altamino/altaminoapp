package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class b3 {

    @NotNull
    public static final b3 INSTANCE = new b3();

    @NotNull
    private static final ThreadLocal<k1> ref = kotlinx.coroutines.internal.p0.a(new kotlinx.coroutines.internal.i0("ThreadLocalEventLoop"));

    @Nullable
    public final k1 a() {
        return ref.get();
    }

    @NotNull
    public final k1 b() {
        ThreadLocal<k1> threadLocal = ref;
        k1 k1Var = threadLocal.get();
        if (k1Var != null) {
            return k1Var;
        }
        k1 k1VarA = n1.a();
        threadLocal.set(k1VarA);
        return k1VarA;
    }

    public final void c() {
        ref.set(null);
    }

    public final void d(@NotNull k1 k1Var) {
        ref.set(k1Var);
    }

    private b3() {
    }
}
