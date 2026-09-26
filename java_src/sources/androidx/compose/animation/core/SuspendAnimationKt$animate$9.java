package androidx.compose.animation.core;

import e8.l;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SuspendAnimationKt$animate$9 extends v implements l<Long, l0> {
    final /* synthetic */ Animation<T, V> $animation;
    final /* synthetic */ l<AnimationScope<T, V>, l0> $block;
    final /* synthetic */ float $durationScale;
    final /* synthetic */ p0<AnimationScope<T, V>> $lateInitScope;
    final /* synthetic */ AnimationState<T, V> $this_animate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SuspendAnimationKt$animate$9(p0<AnimationScope<T, V>> p0Var, float f, Animation<T, V> animation, AnimationState<T, V> animationState, l<? super AnimationScope<T, V>, l0> lVar) {
        super(1);
        this.$lateInitScope = p0Var;
        this.$durationScale = f;
        this.$animation = animation;
        this.$this_animate = animationState;
        this.$block = lVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(long j6) {
        T t5 = this.$lateInitScope.element;
        t.g(t5);
        SuspendAnimationKt.n((AnimationScope) t5, j6, this.$durationScale, this.$animation, this.$this_animate, this.$block);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Long l) {
        a(l.longValue());
        return l0.INSTANCE;
    }
}
