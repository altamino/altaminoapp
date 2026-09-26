package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
@StabilityInferred
public final class PausableMonotonicFrameClock implements MonotonicFrameClock {
    public static final int $stable = 8;

    @NotNull
    private final MonotonicFrameClock frameClock;

    @NotNull
    private final Latch latch;

    @Override // kotlin.coroutines.g.b
    public /* synthetic */ g.c getKey() {
        return b.a(this);
    }

    public PausableMonotonicFrameClock(@NotNull MonotonicFrameClock frameClock) {
        t.j(frameClock, "frameClock");
        this.frameClock = frameClock;
        this.latch = new Latch();
    }

    public final void c() {
        this.latch.d();
    }

    public final void e() {
        this.latch.f();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.runtime.MonotonicFrameClock
    @Nullable
    public <R> Object k(@NotNull l<? super Long, ? extends R> lVar, @NotNull d<? super R> dVar) {
        PausableMonotonicFrameClock$withFrameNanos$1 pausableMonotonicFrameClock$withFrameNanos$1;
        PausableMonotonicFrameClock pausableMonotonicFrameClock;
        if (dVar instanceof PausableMonotonicFrameClock$withFrameNanos$1) {
            pausableMonotonicFrameClock$withFrameNanos$1 = (PausableMonotonicFrameClock$withFrameNanos$1) dVar;
            int i10 = pausableMonotonicFrameClock$withFrameNanos$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pausableMonotonicFrameClock$withFrameNanos$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pausableMonotonicFrameClock$withFrameNanos$1 = new PausableMonotonicFrameClock$withFrameNanos$1(this, dVar);
            }
        } else {
            pausableMonotonicFrameClock$withFrameNanos$1 = new PausableMonotonicFrameClock$withFrameNanos$1(this, dVar);
        }
        Object objK = pausableMonotonicFrameClock$withFrameNanos$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = pausableMonotonicFrameClock$withFrameNanos$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                lVar = (l) pausableMonotonicFrameClock$withFrameNanos$1.L$1;
                pausableMonotonicFrameClock = (PausableMonotonicFrameClock) pausableMonotonicFrameClock$withFrameNanos$1.L$0;
                w.b(objK);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(objK);
            }
        }
        w.b(objK);
        Latch latch = this.latch;
        pausableMonotonicFrameClock$withFrameNanos$1.L$0 = this;
        pausableMonotonicFrameClock$withFrameNanos$1.L$1 = lVar;
        pausableMonotonicFrameClock$withFrameNanos$1.label = 1;
        if (latch.c(pausableMonotonicFrameClock$withFrameNanos$1) == objE) {
            return objE;
        }
        pausableMonotonicFrameClock = this;
        MonotonicFrameClock monotonicFrameClock = pausableMonotonicFrameClock.frameClock;
        pausableMonotonicFrameClock$withFrameNanos$1.L$0 = null;
        pausableMonotonicFrameClock$withFrameNanos$1.L$1 = null;
        pausableMonotonicFrameClock$withFrameNanos$1.label = 2;
        objK = monotonicFrameClock.k(lVar, pausableMonotonicFrameClock$withFrameNanos$1);
        return objK == objE ? objE : objK;
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
