package androidx.core.animation;

import android.animation.Animator;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class AnimatorKt$doOnEnd$$inlined$addListener$default$1 implements Animator.AnimatorListener {
    final /* synthetic */ l $onEnd;

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(@NotNull Animator animator) {
        t.j(animator, "animator");
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(@NotNull Animator animator) {
        t.j(animator, "animator");
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(@NotNull Animator animator) {
        t.j(animator, "animator");
    }

    public AnimatorKt$doOnEnd$$inlined$addListener$default$1(l lVar) {
        this.$onEnd = lVar;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(@NotNull Animator animator) {
        t.j(animator, "animator");
        this.$onEnd.invoke(animator);
    }
}
