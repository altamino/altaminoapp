package kotlinx.coroutines.channels;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class j {

    @NotNull
    public static final String DEFAULT_CLOSE_MESSAGE = "Channel was closed";

    public static final void a(@NotNull t<?> tVar, @Nullable Throwable th) {
        l.a(tVar, th);
    }

    @NotNull
    public static final <E> Object b(@NotNull u<? super E> uVar, E e) {
        return k.a(uVar, e);
    }
}
