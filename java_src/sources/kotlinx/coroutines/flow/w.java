package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface w<T> extends b0<T>, h<T> {
    void b();

    boolean c(T t5);

    @NotNull
    l0<Integer> d();

    @Nullable
    Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar);
}
