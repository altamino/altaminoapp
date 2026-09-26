package w7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class a<T, R> {

    @NotNull
    private final e8.q<c<T, R>, T, kotlin.coroutines.d<? super R>, Object> block;

    @NotNull
    public final e8.q<c<T, R>, T, kotlin.coroutines.d<? super R>, Object> a() {
        return this.block;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(@NotNull e8.q<? super c<T, R>, ? super T, ? super kotlin.coroutines.d<? super R>, ? extends Object> block) {
        kotlin.jvm.internal.t.j(block, "block");
        this.block = block;
    }
}
