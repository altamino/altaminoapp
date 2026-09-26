package androidx.compose.ui.platform;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: loaded from: classes8.dex */
public final class ViewCompositionStrategy_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(AbstractComposeView view, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        kotlin.jvm.internal.t.j(view, "$view");
        kotlin.jvm.internal.t.j(lifecycleOwner, "<anonymous parameter 0>");
        kotlin.jvm.internal.t.j(event, "event");
        if (event == Lifecycle.Event.ON_DESTROY) {
            view.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final e8.a<w7.l0> c(final AbstractComposeView abstractComposeView, Lifecycle lifecycle) {
        if (lifecycle.b().compareTo(Lifecycle.State.DESTROYED) > 0) {
            LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.compose.ui.platform.f1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    ViewCompositionStrategy_androidKt.d(abstractComposeView, lifecycleOwner, event);
                }
            };
            lifecycle.a(lifecycleEventObserver);
            return new ViewCompositionStrategy_androidKt$installForLifecycle$2(lifecycle, lifecycleEventObserver);
        }
        throw new IllegalStateException(("Cannot configure " + abstractComposeView + " to disposeComposition at Lifecycle ON_DESTROY: " + lifecycle + "is already destroyed").toString());
    }
}
