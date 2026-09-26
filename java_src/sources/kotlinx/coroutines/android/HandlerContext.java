package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import e8.l;
import j8.o;
import java.util.concurrent.CancellationException;
import k8.d;
import kotlin.coroutines.g;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.q2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class HandlerContext extends HandlerDispatcher {

    @Nullable
    private volatile HandlerContext _immediate;

    @NotNull
    private final Handler handler;

    @NotNull
    private final HandlerContext immediate;
    private final boolean invokeImmediately;

    @Nullable
    private final String name;

    /* JADX INFO: renamed from: kotlinx.coroutines.android.HandlerContext$scheduleResumeAfterDelay$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Throwable, l0> {
        final /* synthetic */ Runnable $block;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Runnable runnable) {
            super(1);
            this.$block = runnable;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            HandlerContext.this.handler.removeCallbacks(this.$block);
        }
    }

    private HandlerContext(Handler handler, String str, boolean z6) {
        super(null);
        this.handler = handler;
        this.name = str;
        this.invokeImmediately = z6;
        this._immediate = z6 ? this : null;
        HandlerContext handlerContext = this._immediate;
        if (handlerContext == null) {
            handlerContext = new HandlerContext(handler, str, true);
            this._immediate = handlerContext;
        }
        this.immediate = handlerContext;
    }

    @Override // kotlinx.coroutines.n2
    @NotNull
    public HandlerContext getImmediate() {
        return this.immediate;
    }

    private final void cancelOnRejection(g gVar, Runnable runnable) {
        f2.c(gVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        e1.b().dispatch(gVar, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeOnTimeout$lambda$3(HandlerContext handlerContext, Runnable runnable) {
        handlerContext.handler.removeCallbacks(runnable);
    }

    @Override // kotlinx.coroutines.k0
    public void dispatch(@NotNull g gVar, @NotNull Runnable runnable) {
        if (this.handler.post(runnable)) {
            return;
        }
        cancelOnRejection(gVar, runnable);
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof HandlerContext) && ((HandlerContext) obj).handler == this.handler;
    }

    public int hashCode() {
        return System.identityHashCode(this.handler);
    }

    @Override // kotlinx.coroutines.android.HandlerDispatcher, kotlinx.coroutines.x0
    @NotNull
    public g1 invokeOnTimeout(long j6, @NotNull final Runnable runnable, @NotNull g gVar) {
        if (this.handler.postDelayed(runnable, o.k(j6, d.MAX_MILLIS))) {
            return new g1() { // from class: kotlinx.coroutines.android.a
                @Override // kotlinx.coroutines.g1
                public final void t() {
                    HandlerContext.invokeOnTimeout$lambda$3(this.f3258a, runnable);
                }
            };
        }
        cancelOnRejection(gVar, runnable);
        return q2.INSTANCE;
    }

    @Override // kotlinx.coroutines.k0
    public boolean isDispatchNeeded(@NotNull g gVar) {
        return (this.invokeImmediately && t.e(Looper.myLooper(), this.handler.getLooper())) ? false : true;
    }

    @Override // kotlinx.coroutines.android.HandlerDispatcher, kotlinx.coroutines.x0
    public void scheduleResumeAfterDelay(long j6, @NotNull final kotlinx.coroutines.o<? super l0> oVar) {
        Runnable runnable = new Runnable() { // from class: kotlinx.coroutines.android.HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                oVar.V(this, l0.INSTANCE);
            }
        };
        if (this.handler.postDelayed(runnable, o.k(j6, d.MAX_MILLIS))) {
            oVar.S(new AnonymousClass1(runnable));
        } else {
            cancelOnRejection(oVar.getContext(), runnable);
        }
    }

    public /* synthetic */ HandlerContext(Handler handler, String str, int i10, k kVar) {
        this(handler, (i10 & 2) != 0 ? null : str);
    }

    @Override // kotlinx.coroutines.n2, kotlinx.coroutines.k0
    @NotNull
    public String toString() {
        String stringInternalImpl = toStringInternalImpl();
        if (stringInternalImpl == null) {
            String string = this.name;
            if (string == null) {
                string = this.handler.toString();
            }
            if (this.invokeImmediately) {
                return string + ".immediate";
            }
            return string;
        }
        return stringInternalImpl;
    }

    public HandlerContext(@NotNull Handler handler, @Nullable String str) {
        this(handler, str, false);
    }
}
