package coil.request;

import android.view.View;
import androidx.annotation.MainThread;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
public final class s implements View.OnAttachStateChangeListener {

    @Nullable
    private r currentDisposable;

    @Nullable
    private ViewTargetRequestDelegate currentRequest;
    private boolean isRestart;

    @Nullable
    private b2 pendingClear;

    @NotNull
    private final View view;

    @kotlin.coroutines.jvm.internal.f(c = "coil.request.ViewTargetRequestManager$dispose$1", f = "ViewTargetRequestManager.kt", l = {}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
        int label;

        a(kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return s.this.new a(dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((a) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                s.this.c(null);
                return l0.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final synchronized void a() {
        try {
            b2 b2Var = this.pendingClear;
            if (b2Var != null) {
                b2.a.a(b2Var, null, 1, null);
            }
            this.pendingClear = kotlinx.coroutines.k.d(t1.INSTANCE, e1.c().getImmediate(), null, new a(null), 2, null);
            this.currentDisposable = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @NotNull
    public final synchronized r b(@NotNull v0<? extends i> v0Var) {
        r rVar = this.currentDisposable;
        if (rVar != null && coil.util.i.t() && this.isRestart) {
            this.isRestart = false;
            rVar.a(v0Var);
            return rVar;
        }
        b2 b2Var = this.pendingClear;
        if (b2Var != null) {
            b2.a.a(b2Var, null, 1, null);
        }
        this.pendingClear = null;
        r rVar2 = new r(this.view, v0Var);
        this.currentDisposable = rVar2;
        return rVar2;
    }

    @MainThread
    public final void c(@Nullable ViewTargetRequestDelegate viewTargetRequestDelegate) {
        ViewTargetRequestDelegate viewTargetRequestDelegate2 = this.currentRequest;
        if (viewTargetRequestDelegate2 != null) {
            viewTargetRequestDelegate2.d();
        }
        this.currentRequest = viewTargetRequestDelegate;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    @MainThread
    public void onViewAttachedToWindow(@NotNull View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.currentRequest;
        if (viewTargetRequestDelegate == null) {
            return;
        }
        this.isRestart = true;
        viewTargetRequestDelegate.e();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    @MainThread
    public void onViewDetachedFromWindow(@NotNull View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.currentRequest;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.d();
        }
    }

    public s(@NotNull View view) {
        this.view = view;
    }
}
