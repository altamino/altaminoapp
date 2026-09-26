package androidx.compose.runtime;

import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SdkStubsFallbackFrameClock implements MonotonicFrameClock {
    private static final long DefaultFrameDelay = 16;

    @NotNull
    public static final SdkStubsFallbackFrameClock INSTANCE = new SdkStubsFallbackFrameClock();

    @Override // kotlin.coroutines.g.b
    public /* synthetic */ g.c getKey() {
        return b.a(this);
    }

    private SdkStubsFallbackFrameClock() {
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull p<? super R, ? super g.b, ? extends R> pVar) {
        return (R) MonotonicFrameClock.DefaultImpls.a(this, r, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends g.b> E get(@NotNull g.c<E> cVar) {
        return (E) MonotonicFrameClock.DefaultImpls.b(this, cVar);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    @Nullable
    public <R> Object k(@NotNull l<? super Long, ? extends R> lVar, @NotNull d<? super R> dVar) {
        return i.g(e1.c(), new SdkStubsFallbackFrameClock$withFrameNanos$2(lVar, null), dVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public g minusKey(@NotNull g.c<?> cVar) {
        return MonotonicFrameClock.DefaultImpls.c(this, cVar);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public g plus(@NotNull g gVar) {
        return MonotonicFrameClock.DefaultImpls.d(this, gVar);
    }
}
