package androidx.compose.animation.core;

import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SuspendAnimationKt$animate$7 extends v implements e8.a<l0> {
    final /* synthetic */ AnimationState<T, V> $this_animate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuspendAnimationKt$animate$7(AnimationState<T, V> animationState) {
        super(0);
        this.$this_animate = animationState;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$this_animate.m(false);
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }
}
