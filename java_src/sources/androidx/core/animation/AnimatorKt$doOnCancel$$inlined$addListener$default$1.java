package androidx.core.animation;

import android.animation.Animator;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class AnimatorKt$doOnCancel$$inlined$addListener$default$1 implements Animator.AnimatorListener {
    final /* synthetic */ l $onCancel;

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(@NotNull Animator animator) {
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

    public AnimatorKt$doOnCancel$$inlined$addListener$default$1(l lVar) {
        this.$onCancel = lVar;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(@NotNull Animator animator) {
        t.j(animator, "animator");
        this.$onCancel.invoke(animator);
    }
}
