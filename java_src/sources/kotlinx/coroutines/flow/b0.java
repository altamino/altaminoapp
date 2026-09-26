package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public interface b0<T> extends g<T> {
    @Override // kotlinx.coroutines.flow.g
    @Nullable
    Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<?> dVar);
}
