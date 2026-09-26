package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class r0 implements h<Object> {

    @NotNull
    public final Throwable e;

    @Override // kotlinx.coroutines.flow.h
    @Nullable
    public Object emit(@Nullable Object obj, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) throws Throwable {
        throw this.e;
    }

    public r0(@NotNull Throwable th) {
        this.e = th;
    }
}
