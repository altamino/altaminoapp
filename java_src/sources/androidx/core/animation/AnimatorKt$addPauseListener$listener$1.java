package androidx.core.animation;

import android.animation.Animator;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class AnimatorKt$addPauseListener$listener$1 implements Animator.AnimatorPauseListener {
    final /* synthetic */ l<Animator, l0> $onPause;
    final /* synthetic */ l<Animator, l0> $onResume;

    @Override // android.animation.Animator.AnimatorPauseListener
    public void onAnimationPause(@NotNull Animator animator) {
        t.j(animator, "animator");
        this.$onPause.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorPauseListener
    public void onAnimationResume(@NotNull Animator animator) {
        t.j(animator, "animator");
        this.$onResume.invoke(animator);
    }
}
