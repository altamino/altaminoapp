package androidx.compose.ui.platform;

import android.view.Choreographer;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@StabilityInferred
public final class AndroidUiFrameClock implements MonotonicFrameClock {
    public static final int $stable = 8;

    @NotNull
    private final Choreographer choreographer;

    @NotNull
    public final Choreographer c() {
        return this.choreographer;
    }

    @Override // kotlin.coroutines.g.b
    public /* synthetic */ kotlin.coroutines.g.c getKey() {
        return androidx.compose.runtime.b.a(this);
    }

    public AndroidUiFrameClock(@NotNull Choreographer choreographer) {
        kotlin.jvm.internal.t.j(choreographer, "choreographer");
        this.choreographer = choreographer;
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.g.b, ? extends R> pVar) {
        return (R) MonotonicFrameClock.DefaultImpls.a(this, r, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends kotlin.coroutines.g.b> E get(@NotNull kotlin.coroutines.g.c<E> cVar) {
        return (E) MonotonicFrameClock.DefaultImpls.b(this, cVar);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    @Nullable
    public <R> Object k(@NotNull final e8.l<? super Long, ? extends R> lVar, @NotNull kotlin.coroutines.d<? super R> dVar) throws Throwable {
        AndroidUiDispatcher androidUiDispatcher;
        kotlin.coroutines.g.b bVar = dVar.getContext().get(kotlin.coroutines.e.Key);
        if (bVar instanceof AndroidUiDispatcher) {
            androidUiDispatcher = (AndroidUiDispatcher) bVar;
        } else {
            androidUiDispatcher = null;
        }
        final kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        Choreographer.FrameCallback frameCallback = new Choreographer.FrameCallback() { // from class: androidx.compose.ui.platform.AndroidUiFrameClock$withFrameNanos$2$callback$1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j6) {
                Object objB;
                kotlin.coroutines.d dVar2 = pVar;
                e8.l<Long, R> lVar2 = lVar;
                try {
                    w7.v.a aVar = w7.v.Companion;
                    objB = w7.v.b(lVar2.invoke(Long.valueOf(j6)));
                } catch (Throwable th) {
                    w7.v.a aVar2 = w7.v.Companion;
                    objB = w7.v.b(w7.w.a(th));
                }
                dVar2.resumeWith(objB);
            }
        };
        if (androidUiDispatcher != null && kotlin.jvm.internal.t.e(androidUiDispatcher.L0(), c())) {
            androidUiDispatcher.Q0(frameCallback);
            pVar.S(new AndroidUiFrameClock$withFrameNanos$2$1(androidUiDispatcher, frameCallback));
        } else {
            c().postFrameCallback(frameCallback);
            pVar.S(new AndroidUiFrameClock$withFrameNanos$2$2(this, frameCallback));
        }
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU;
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g minusKey(@NotNull kotlin.coroutines.g.c<?> cVar) {
        return MonotonicFrameClock.DefaultImpls.c(this, cVar);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public kotlin.coroutines.g plus(@NotNull kotlin.coroutines.g gVar) {
        return MonotonicFrameClock.DefaultImpls.d(this, gVar);
    }
}
