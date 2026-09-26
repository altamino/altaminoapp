package androidx.core.transition;

import android.transition.Transition;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class TransitionKt$doOnCancel$$inlined$addListener$default$1 implements Transition.TransitionListener {
    final /* synthetic */ l $onCancel;

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(@NotNull Transition transition) {
        t.j(transition, "transition");
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(@NotNull Transition transition) {
        t.j(transition, "transition");
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(@NotNull Transition transition) {
        t.j(transition, "transition");
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(@NotNull Transition transition) {
        t.j(transition, "transition");
    }

    public TransitionKt$doOnCancel$$inlined$addListener$default$1(l lVar) {
        this.$onCancel = lVar;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(@NotNull Transition transition) {
        t.j(transition, "transition");
        this.$onCancel.invoke(transition);
    }
}
