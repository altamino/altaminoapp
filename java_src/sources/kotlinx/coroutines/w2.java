package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
class w2 extends a<w7.l0> {
    public w2(@NotNull kotlin.coroutines.g gVar, boolean z6) {
        super(gVar, true, z6);
    }

    @Override // kotlinx.coroutines.j2
    protected boolean o0(@NotNull Throwable th) {
        m0.a(getContext(), th);
        return true;
    }
}
