package androidx.compose.runtime;

import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;

/* JADX INFO: loaded from: classes11.dex */
final class ProduceFrameSignal {

    @Nullable
    private Object pendingFrameContinuation;

    @Nullable
    public final Object c(@NotNull Object obj, @NotNull d<? super l0> dVar) throws Throwable {
        p pVar;
        synchronized (obj) {
            if (this.pendingFrameContinuation == RecomposerKt.ProduceAnotherFrame) {
                this.pendingFrameContinuation = RecomposerKt.FramePending;
                return l0.INSTANCE;
            }
            l0 l0Var = l0.INSTANCE;
            p pVar2 = new p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar2.x();
            synchronized (obj) {
                try {
                    if (this.pendingFrameContinuation == RecomposerKt.ProduceAnotherFrame) {
                        this.pendingFrameContinuation = RecomposerKt.FramePending;
                        pVar = pVar2;
                    } else {
                        this.pendingFrameContinuation = pVar2;
                        pVar = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (pVar != null) {
                v.a aVar = v.Companion;
                pVar.resumeWith(v.b(l0.INSTANCE));
            }
            Object objU = pVar2.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                h.c(dVar);
            }
            return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
        }
    }

    @Nullable
    public final d<l0> d() {
        Object obj = this.pendingFrameContinuation;
        if (obj instanceof d) {
            this.pendingFrameContinuation = RecomposerKt.FramePending;
            return (d) obj;
        }
        if (!t.e(obj, RecomposerKt.ProduceAnotherFrame) && !t.e(obj, RecomposerKt.FramePending)) {
            if (obj != null) {
                throw new IllegalStateException(("invalid pendingFrameContinuation " + obj).toString());
            }
            this.pendingFrameContinuation = RecomposerKt.ProduceAnotherFrame;
        }
        return null;
    }

    public final void e() {
        if (this.pendingFrameContinuation != RecomposerKt.FramePending) {
            throw new IllegalStateException("frame not pending".toString());
        }
        this.pendingFrameContinuation = null;
    }
}
