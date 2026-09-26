package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import e8.l;
import java.util.ArrayList;
import java.util.List;
import kotlin.coroutines.d;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@StabilityInferred
public final class BroadcastFrameClock implements MonotonicFrameClock {
    public static final int $stable = 8;

    @NotNull
    private List<FrameAwaiter<?>> awaiters;

    @Nullable
    private Throwable failureCause;

    @NotNull
    private final Object lock;

    @Nullable
    private final e8.a<l0> onNewAwaiters;

    @NotNull
    private List<FrameAwaiter<?>> spareList;

    /* JADX INFO: Access modifiers changed from: private */
    static final class FrameAwaiter<R> {

        @NotNull
        private final d<R> continuation;

        @NotNull
        private final l<Long, R> onFrame;

        @NotNull
        public final d<R> a() {
            return this.continuation;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public FrameAwaiter(@NotNull l<? super Long, ? extends R> onFrame, @NotNull d<? super R> continuation) {
            t.j(onFrame, "onFrame");
            t.j(continuation, "continuation");
            this.onFrame = onFrame;
            this.continuation = continuation;
        }

        public final void b(long j6) {
            Object objB;
            d<R> dVar = this.continuation;
            try {
                v.a aVar = v.Companion;
                objB = v.b(this.onFrame.invoke(Long.valueOf(j6)));
            } catch (Throwable th) {
                v.a aVar2 = v.Companion;
                objB = v.b(w.a(th));
            }
            dVar.resumeWith(objB);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BroadcastFrameClock() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // kotlin.coroutines.g.b
    public /* synthetic */ g.c getKey() {
        return b.a(this);
    }

    public BroadcastFrameClock(@Nullable e8.a<l0> aVar) {
        this.onNewAwaiters = aVar;
        this.lock = new Object();
        this.awaiters = new ArrayList();
        this.spareList = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(Throwable th) {
        synchronized (this.lock) {
            try {
                if (this.failureCause != null) {
                    return;
                }
                this.failureCause = th;
                List<FrameAwaiter<?>> list = this.awaiters;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    d<?> dVarA = list.get(i10).a();
                    v.a aVar = v.Companion;
                    dVarA.resumeWith(v.b(w.a(th)));
                }
                this.awaiters.clear();
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [T, androidx.compose.runtime.BroadcastFrameClock$FrameAwaiter] */
    @Override // androidx.compose.runtime.MonotonicFrameClock
    @Nullable
    public <R> Object k(@NotNull l<? super Long, ? extends R> lVar, @NotNull d<? super R> dVar) throws Throwable {
        FrameAwaiter frameAwaiter;
        p pVar = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar.x();
        p0 p0Var = new p0();
        synchronized (this.lock) {
            Throwable th = this.failureCause;
            if (th != null) {
                v.a aVar = v.Companion;
                pVar.resumeWith(v.b(w.a(th)));
            } else {
                p0Var.element = new FrameAwaiter(lVar, pVar);
                boolean z6 = !this.awaiters.isEmpty();
                List list = this.awaiters;
                T t5 = p0Var.element;
                if (t5 == 0) {
                    t.B("awaiter");
                    frameAwaiter = null;
                } else {
                    frameAwaiter = (FrameAwaiter) t5;
                }
                list.add(frameAwaiter);
                boolean z10 = !z6;
                pVar.S(new BroadcastFrameClock$withFrameNanos$2$1(this, p0Var));
                if (z10 && this.onNewAwaiters != null) {
                    try {
                        this.onNewAwaiters.invoke();
                    } catch (Throwable th2) {
                        s(th2);
                    }
                }
            }
        }
        Object objU = pVar.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            h.c(dVar);
        }
        return objU;
    }

    public final boolean t() {
        boolean z6;
        synchronized (this.lock) {
            z6 = !this.awaiters.isEmpty();
        }
        return z6;
    }

    public final void u(long j6) {
        synchronized (this.lock) {
            try {
                List<FrameAwaiter<?>> list = this.awaiters;
                this.awaiters = this.spareList;
                this.spareList = list;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    list.get(i10).b(j6);
                }
                list.clear();
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
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

    public /* synthetic */ BroadcastFrameClock(e8.a aVar, int i10, k kVar) {
        this((i10 & 1) != 0 ? null : aVar);
    }
}
