package coil.util;

import androidx.annotation.MainThread;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.jvm.internal.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: renamed from: coil.util.-Lifecycles, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
public final class Lifecycles {

    /* JADX INFO: renamed from: coil.util.-Lifecycles$a */
    @kotlin.coroutines.jvm.internal.f(c = "coil.util.-Lifecycles", f = "Lifecycles.kt", l = {44}, m = "awaitStarted")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        a(kotlin.coroutines.d<? super a> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Lifecycles.a(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0092  */
    /* JADX WARN: Code duplicated, block: B:39:0x009e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, coil.util.-Lifecycles$awaitStarted$2$1, java.lang.Object] */
    @MainThread
    @Nullable
    public static final Object a(@NotNull Lifecycle lifecycle, @NotNull kotlin.coroutines.d<? super l0> dVar) throws Throwable {
        a aVar;
        Lifecycle lifecycle2;
        p0 p0Var;
        Throwable th;
        LifecycleObserver lifecycleObserver;
        LifecycleObserver lifecycleObserver2;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.label = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object obj = aVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = aVar.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p0Var = (p0) aVar.L$1;
            lifecycle2 = (Lifecycle) aVar.L$0;
            try {
                w.b(obj);
                lifecycleObserver2 = (LifecycleObserver) p0Var.element;
                if (lifecycleObserver2 != null) {
                    lifecycle2.d(lifecycleObserver2);
                }
                return l0.INSTANCE;
            } catch (Throwable th2) {
                th = th2;
                lifecycleObserver = (LifecycleObserver) p0Var.element;
                if (lifecycleObserver != null) {
                    lifecycle2.d(lifecycleObserver);
                }
                throw th;
            }
        }
        w.b(obj);
        if (lifecycle.b().b(Lifecycle.State.STARTED)) {
            return l0.INSTANCE;
        }
        p0 p0Var2 = new p0();
        try {
            aVar.L$0 = lifecycle;
            aVar.L$1 = p0Var2;
            aVar.label = 1;
            final kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(aVar), 1);
            pVar.x();
            ?? r5 = new DefaultLifecycleObserver() { // from class: coil.util.-Lifecycles$awaitStarted$2$1
                @Override // androidx.lifecycle.DefaultLifecycleObserver
                public /* synthetic */ void onCreate(LifecycleOwner lifecycleOwner) {
                    androidx.lifecycle.c.a(this, lifecycleOwner);
                }

                @Override // androidx.lifecycle.DefaultLifecycleObserver
                public /* synthetic */ void onDestroy(LifecycleOwner lifecycleOwner) {
                    androidx.lifecycle.c.b(this, lifecycleOwner);
                }

                @Override // androidx.lifecycle.DefaultLifecycleObserver
                public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
                    androidx.lifecycle.c.c(this, lifecycleOwner);
                }

                @Override // androidx.lifecycle.DefaultLifecycleObserver
                public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
                    androidx.lifecycle.c.d(this, lifecycleOwner);
                }

                @Override // androidx.lifecycle.DefaultLifecycleObserver
                public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
                    androidx.lifecycle.c.f(this, lifecycleOwner);
                }

                @Override // androidx.lifecycle.DefaultLifecycleObserver
                public void onStart(@NotNull LifecycleOwner lifecycleOwner) {
                    kotlinx.coroutines.o<l0> oVar = pVar;
                    v.a aVar2 = v.Companion;
                    oVar.resumeWith(v.b(l0.INSTANCE));
                }
            };
            p0Var2.element = r5;
            kotlin.jvm.internal.t.g(r5);
            lifecycle.a((LifecycleObserver) r5);
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(aVar);
            }
            if (objU == objE) {
                return objE;
            }
            lifecycle2 = lifecycle;
            p0Var = p0Var2;
            lifecycleObserver2 = (LifecycleObserver) p0Var.element;
            if (lifecycleObserver2 != null) {
                lifecycle2.d(lifecycleObserver2);
            }
            return l0.INSTANCE;
        } catch (Throwable th3) {
            lifecycle2 = lifecycle;
            p0Var = p0Var2;
            th = th3;
            lifecycleObserver = (LifecycleObserver) p0Var.element;
            if (lifecycleObserver != null) {
                lifecycle2.d(lifecycleObserver);
            }
            throw th;
        }
    }

    @MainThread
    public static final void b(@NotNull Lifecycle lifecycle, @NotNull LifecycleObserver lifecycleObserver) {
        lifecycle.d(lifecycleObserver);
        lifecycle.a(lifecycleObserver);
    }
}
