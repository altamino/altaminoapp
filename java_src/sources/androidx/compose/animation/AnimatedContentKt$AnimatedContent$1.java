package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Add missing generic type declarations: [S] */
/* JADX INFO: loaded from: classes2.dex */
final class AnimatedContentKt$AnimatedContent$1<S> extends v implements l<AnimatedContentScope<S>, ContentTransform> {
    public static final AnimatedContentKt$AnimatedContent$1 INSTANCE = new AnimatedContentKt$AnimatedContent$1();

    AnimatedContentKt$AnimatedContent$1() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ContentTransform invoke(@NotNull AnimatedContentScope<S> animatedContentScope) {
        t.j(animatedContentScope, "$this$null");
        return AnimatedContentKt.e(EnterExitTransitionKt.v(AnimationSpecKt.k(220, 90, null, 4, null), 0.0f, 2, null).b(EnterExitTransitionKt.z(AnimationSpecKt.k(220, 90, null, 4, null), 0.92f, 0L, 4, null)), EnterExitTransitionKt.x(AnimationSpecKt.k(90, 0, null, 6, null), 0.0f, 2, null));
    }
}
