package androidx.compose.runtime;

import e8.l;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class MonotonicFrameClockKt {
    @NotNull
    public static final MonotonicFrameClock a(@NotNull g gVar) {
        t.j(gVar, "<this>");
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) gVar.get(MonotonicFrameClock.Key);
        if (monotonicFrameClock != null) {
            return monotonicFrameClock;
        }
        throw new IllegalStateException("A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext.".toString());
    }

    @Nullable
    public static final <R> Object b(@NotNull l<? super Long, ? extends R> lVar, @NotNull d<? super R> dVar) {
        return a(dVar.getContext()).k(lVar, dVar);
    }
}
