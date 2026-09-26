package androidx.compose.animation.core;

import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SuspendAnimationKt$animateDecay$2 extends v implements l<AnimationScope<Float, AnimationVector1D>, l0> {
    final /* synthetic */ p<Float, Float, l0> $block;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SuspendAnimationKt$animateDecay$2(p<? super Float, ? super Float, l0> pVar) {
        super(1);
        this.$block = pVar;
    }

    public final void a(@NotNull AnimationScope<Float, AnimationVector1D> animate) {
        t.j(animate, "$this$animate");
        this.$block.invoke(animate.e(), Float.valueOf(((AnimationVector1D) animate.g()).f()));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
        a(animationScope);
        return l0.INSTANCE;
    }
}
