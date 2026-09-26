package androidx.compose.runtime;

import android.view.Choreographer;
import e8.l;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.h;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.i;
import kotlinx.coroutines.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
final class DefaultChoreographerFrameClock implements MonotonicFrameClock {

    @NotNull
    public static final DefaultChoreographerFrameClock INSTANCE = new DefaultChoreographerFrameClock();
    private static final Choreographer choreographer = (Choreographer) i.e(e1.c().getImmediate(), new DefaultChoreographerFrameClock$choreographer$1(null));

    @Override // kotlin.coroutines.g.b
    public /* synthetic */ g.c getKey() {
        return b.a(this);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    @Nullable
    public <R> Object k(@NotNull final l<? super Long, ? extends R> lVar, @NotNull d<? super R> dVar) throws Throwable {
        final p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        Choreographer.FrameCallback frameCallback = new Choreographer.FrameCallback() { // from class: androidx.compose.runtime.DefaultChoreographerFrameClock$withFrameNanos$2$callback$1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j6) {
                Object objB;
                d dVar2 = pVar;
                DefaultChoreographerFrameClock defaultChoreographerFrameClock = DefaultChoreographerFrameClock.INSTANCE;
                l<Long, R> lVar2 = lVar;
                try {
                    v.a aVar = v.Companion;
                    objB = v.b(lVar2.invoke(Long.valueOf(j6)));
                } catch (Throwable th) {
                    v.a aVar2 = v.Companion;
                    objB = v.b(w.a(th));
                }
                dVar2.resumeWith(objB);
            }
        };
        choreographer.postFrameCallback(frameCallback);
        pVar.S(new DefaultChoreographerFrameClock$withFrameNanos$2$1(frameCallback));
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            h.c(dVar);
        }
        return objU;
    }

    private DefaultChoreographerFrameClock() {
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull e8.p<? super R, ? super g.b, ? extends R> pVar) {
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
