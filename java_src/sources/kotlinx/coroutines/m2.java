package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class m2 extends w2 {

    @NotNull
    private final kotlin.coroutines.d<w7.l0> continuation;

    public m2(@NotNull kotlin.coroutines.g gVar, @NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        super(gVar, false);
        this.continuation = kotlin.coroutines.intrinsics.c.a(pVar, this, this);
    }

    @Override // kotlinx.coroutines.j2
    protected void H0() throws Throwable {
        l8.a.c(this.continuation, this);
    }
}
