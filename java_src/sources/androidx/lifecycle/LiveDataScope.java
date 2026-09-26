package androidx.lifecycle;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public interface LiveDataScope<T> {
    @Nullable
    Object emit(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar);
}
