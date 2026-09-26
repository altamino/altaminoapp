package androidx.core.animation;

import android.animation.Animator;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
final class AnimatorKt$addPauseListener$1 extends v implements l<Animator, l0> {
    public static final AnimatorKt$addPauseListener$1 INSTANCE = new AnimatorKt$addPauseListener$1();

    AnimatorKt$addPauseListener$1() {
        super(1);
    }

    public final void a(@NotNull Animator it) {
        t.j(it, "it");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Animator animator) {
        a(animator);
        return l0.INSTANCE;
    }
}
