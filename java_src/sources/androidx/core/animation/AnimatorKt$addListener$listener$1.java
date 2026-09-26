package androidx.core.animation;

import android.animation.Animator;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class AnimatorKt$addListener$listener$1 implements Animator.AnimatorListener {
    final /* synthetic */ l<Animator, l0> $onCancel;
    final /* synthetic */ l<Animator, l0> $onEnd;
    final /* synthetic */ l<Animator, l0> $onRepeat;
    final /* synthetic */ l<Animator, l0> $onStart;

    /* JADX WARN: Multi-variable type inference failed */
    public AnimatorKt$addListener$listener$1(l<? super Animator, l0> lVar, l<? super Animator, l0> lVar2, l<? super Animator, l0> lVar3, l<? super Animator, l0> lVar4) {
        this.$onRepeat = lVar;
        this.$onEnd = lVar2;
        this.$onCancel = lVar3;
        this.$onStart = lVar4;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(@NotNull Animator animator) {
        t.j(animator, "animator");
        this.$onCancel.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(@NotNull Animator animator) {
        t.j(animator, "animator");
        this.$onEnd.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(@NotNull Animator animator) {
        t.j(animator, "animator");
        this.$onRepeat.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(@NotNull Animator animator) {
        t.j(animator, "animator");
        this.$onStart.invoke(animator);
    }
}
