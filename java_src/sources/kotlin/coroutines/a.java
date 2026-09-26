package kotlin.coroutines;

import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public abstract class a implements g.b {

    @NotNull
    private final g.c<?> key;

    @Override // kotlin.coroutines.g.b
    @NotNull
    public g.c<?> getKey() {
        return this.key;
    }

    public a(@NotNull g.c<?> key) {
        t.j(key, "key");
        this.key = key;
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull p<? super R, ? super g.b, ? extends R> pVar) {
        return (R) g.b.a.a(this, r, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends g.b> E get(@NotNull g.c<E> cVar) {
        return (E) g.b.a.b(this, cVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public g minusKey(@NotNull g.c<?> cVar) {
        return g.b.a.c(this, cVar);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public g plus(@NotNull g gVar) {
        return g.b.a.d(this, gVar);
    }
}
