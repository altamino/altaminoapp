package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class a3 {
    @NotNull
    public static final <T> z2<T> a(@NotNull ThreadLocal<T> threadLocal, T t5) {
        return new kotlinx.coroutines.internal.n0(t5, threadLocal);
    }
}
