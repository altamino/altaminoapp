package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class i3 implements kotlin.coroutines.g.b, kotlin.coroutines.g.c<i3> {

    @NotNull
    public static final i3 INSTANCE = new i3();

    @Override // kotlin.coroutines.g.b
    @NotNull
    public kotlin.coroutines.g.c<?> getKey() {
        return this;
    }

    private i3() {
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.g.b, ? extends R> pVar) {
        return (R) kotlin.coroutines.g.b.a.a(this, r, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends kotlin.coroutines.g.b> E get(@NotNull kotlin.coroutines.g.c<E> cVar) {
        return (E) kotlin.coroutines.g.b.a.b(this, cVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g minusKey(@NotNull kotlin.coroutines.g.c<?> cVar) {
        return kotlin.coroutines.g.b.a.c(this, cVar);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g plus(@NotNull kotlin.coroutines.g gVar) {
        return kotlin.coroutines.g.b.a.d(this, gVar);
    }
}
