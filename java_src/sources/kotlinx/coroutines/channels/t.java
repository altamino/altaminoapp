package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public interface t<E> {
    void b(@Nullable CancellationException cancellationException);

    @NotNull
    f<E> iterator();

    @NotNull
    Object q();

    @Nullable
    Object s(@NotNull kotlin.coroutines.d<? super h<? extends E>> dVar);

    @Nullable
    Object v(@NotNull kotlin.coroutines.d<? super E> dVar);
}
