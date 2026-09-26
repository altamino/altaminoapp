package kotlinx.coroutines.flow.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class l implements kotlin.coroutines.g {
    private final /* synthetic */ kotlin.coroutines.g $$delegate_0;

    @NotNull
    public final Throwable e;

    @Override // kotlin.coroutines.g
    public <R> R fold(R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.g.b, ? extends R> pVar) {
        return (R) this.$$delegate_0.fold(r, pVar);
    }

    @Override // kotlin.coroutines.g
    @Nullable
    public <E extends kotlin.coroutines.g.b> E get(@NotNull kotlin.coroutines.g.c<E> cVar) {
        return (E) this.$$delegate_0.get(cVar);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g minusKey(@NotNull kotlin.coroutines.g.c<?> cVar) {
        return this.$$delegate_0.minusKey(cVar);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g plus(@NotNull kotlin.coroutines.g gVar) {
        return this.$$delegate_0.plus(gVar);
    }

    public l(@NotNull Throwable th, @NotNull kotlin.coroutines.g gVar) {
        this.e = th;
        this.$$delegate_0 = gVar;
    }
}
