package androidx.databinding;

import androidx.annotation.RestrictTo;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@RestrictTo
public final class ViewDataBindingKtx {

    @NotNull
    public static final ViewDataBindingKtx INSTANCE = new ViewDataBindingKtx();

    @NotNull
    private static final CreateWeakListener CREATE_STATE_FLOW_LISTENER = new CreateWeakListener() { // from class: androidx.databinding.a
        @Override // androidx.databinding.CreateWeakListener
        public final WeakListener a(ViewDataBinding viewDataBinding, int i10, ReferenceQueue referenceQueue) {
            return ViewDataBindingKtx.b(viewDataBinding, i10, referenceQueue);
        }
    };

    public static final class StateFlowListener implements ObservableReference<g<? extends Object>> {

        @Nullable
        private WeakReference<LifecycleOwner> _lifecycleOwnerRef;

        @NotNull
        private final WeakListener<g<Object>> listener;

        @Nullable
        private b2 observerJob;

        @NotNull
        public WeakListener<g<Object>> f() {
            return this.listener;
        }

        public StateFlowListener(@Nullable ViewDataBinding viewDataBinding, int i10, @NotNull ReferenceQueue<ViewDataBinding> referenceQueue) {
            t.j(referenceQueue, "referenceQueue");
            this.listener = new WeakListener<>(viewDataBinding, i10, this, referenceQueue);
        }

        private final void h(LifecycleOwner lifecycleOwner, g<? extends Object> gVar) {
            b2 b2Var = this.observerJob;
            if (b2Var != null) {
                b2.a.a(b2Var, null, 1, null);
            }
            this.observerJob = k.d(LifecycleOwnerKt.a(lifecycleOwner), null, null, new ViewDataBindingKtx$StateFlowListener$startCollection$1(lifecycleOwner, gVar, this, null), 3, null);
        }

        @Override // androidx.databinding.ObservableReference
        public void b(@Nullable LifecycleOwner lifecycleOwner) {
            WeakReference<LifecycleOwner> weakReference = this._lifecycleOwnerRef;
            if ((weakReference != null ? weakReference.get() : null) == lifecycleOwner) {
                return;
            }
            b2 b2Var = this.observerJob;
            if (b2Var != null) {
                b2.a.a(b2Var, null, 1, null);
            }
            if (lifecycleOwner == null) {
                this._lifecycleOwnerRef = null;
                return;
            }
            this._lifecycleOwnerRef = new WeakReference<>(lifecycleOwner);
            g<? extends Object> gVar = (g) this.listener.b();
            if (gVar != null) {
                h(lifecycleOwner, gVar);
            }
        }

        @Override // androidx.databinding.ObservableReference
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void d(@Nullable g<? extends Object> gVar) {
            LifecycleOwner lifecycleOwner;
            WeakReference<LifecycleOwner> weakReference = this._lifecycleOwnerRef;
            if (weakReference == null || (lifecycleOwner = weakReference.get()) == null || gVar == null) {
                return;
            }
            h(lifecycleOwner, gVar);
        }

        @Override // androidx.databinding.ObservableReference
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void c(@Nullable g<? extends Object> gVar) {
            b2 b2Var = this.observerJob;
            if (b2Var != null) {
                b2.a.a(b2Var, null, 1, null);
            }
            this.observerJob = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WeakListener b(ViewDataBinding viewDataBinding, int i10, ReferenceQueue referenceQueue) {
        t.g(referenceQueue);
        return new StateFlowListener(viewDataBinding, i10, referenceQueue).f();
    }

    private ViewDataBindingKtx() {
    }
}
