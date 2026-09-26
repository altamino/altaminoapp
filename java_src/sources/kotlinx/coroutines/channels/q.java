package kotlinx.coroutines.channels;

import kotlinx.coroutines.m0;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class q<E> extends e<E> implements r<E> {
    public q(@NotNull kotlin.coroutines.g gVar, @NotNull d<E> dVar) {
        super(gVar, dVar, true, true);
    }

    @Override // kotlinx.coroutines.a
    protected void X0(@NotNull Throwable th, boolean z6) {
        if (!a1().c(th) && !z6) {
            m0.a(getContext(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.a
    /* JADX INFO: renamed from: b1, reason: merged with bridge method [inline-methods] */
    public void Y0(@NotNull l0 l0Var) {
        u.a.a(a1(), null, 1, null);
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.j2, kotlinx.coroutines.b2
    public boolean isActive() {
        return super.isActive();
    }
}
