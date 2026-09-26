package androidx.core.transition;

import android.transition.Transition;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class TransitionKt$addListener$listener$1 implements Transition.TransitionListener {
    final /* synthetic */ l<Transition, l0> $onCancel;
    final /* synthetic */ l<Transition, l0> $onEnd;
    final /* synthetic */ l<Transition, l0> $onPause;
    final /* synthetic */ l<Transition, l0> $onResume;
    final /* synthetic */ l<Transition, l0> $onStart;

    /* JADX WARN: Multi-variable type inference failed */
    public TransitionKt$addListener$listener$1(l<? super Transition, l0> lVar, l<? super Transition, l0> lVar2, l<? super Transition, l0> lVar3, l<? super Transition, l0> lVar4, l<? super Transition, l0> lVar5) {
        this.$onEnd = lVar;
        this.$onResume = lVar2;
        this.$onPause = lVar3;
        this.$onCancel = lVar4;
        this.$onStart = lVar5;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(@NotNull Transition transition) {
        t.j(transition, "transition");
        this.$onCancel.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(@NotNull Transition transition) {
        t.j(transition, "transition");
        this.$onEnd.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(@NotNull Transition transition) {
        t.j(transition, "transition");
        this.$onPause.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(@NotNull Transition transition) {
        t.j(transition, "transition");
        this.$onResume.invoke(transition);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(@NotNull Transition transition) {
        t.j(transition, "transition");
        this.$onStart.invoke(transition);
    }
}
