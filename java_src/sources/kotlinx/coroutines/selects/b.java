package kotlinx.coroutines.selects;

import kotlin.coroutines.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface b<R> {
    void b(@Nullable Object obj);

    boolean c(@NotNull Object obj, @Nullable Object obj2);

    @NotNull
    g getContext();
}
