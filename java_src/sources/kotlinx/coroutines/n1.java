package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class n1 {
    @NotNull
    public static final k1 a() {
        return new h(Thread.currentThread());
    }

    public static final long b() {
        k1 k1VarA = b3.INSTANCE.a();
        if (k1VarA != null) {
            return k1VarA.M0();
        }
        return Long.MAX_VALUE;
    }
}
