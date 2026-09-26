package androidx.compose.animation.core;

import e8.l;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SuspendAnimationKt$animate$6 extends v implements l<Long, l0> {
    final /* synthetic */ Animation<T, V> $animation;
    final /* synthetic */ l<AnimationScope<T, V>, l0> $block;
    final /* synthetic */ float $durationScale;
    final /* synthetic */ T $initialValue;

    /* JADX INFO: Incorrect field signature: TV; */
    final /* synthetic */ AnimationVector $initialVelocityVector;
    final /* synthetic */ p0<AnimationScope<T, V>> $lateInitScope;
    final /* synthetic */ AnimationState<T, V> $this_animate;

    /* JADX INFO: renamed from: androidx.compose.animation.core.SuspendAnimationKt$animate$6$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.a<l0> {
        final /* synthetic */ AnimationState<T, V> $this_animate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AnimationState<T, V> animationState) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Incorrect types in method signature: (Lkotlin/jvm/internal/p0<Landroidx/compose/animation/core/AnimationScope<TT;TV;>;>;TT;Landroidx/compose/animation/core/Animation<TT;TV;>;TV;Landroidx/compose/animation/core/AnimationState<TT;TV;>;FLe8/l<-Landroidx/compose/animation/core/AnimationScope<TT;TV;>;Lw7/l0;>;)V */
    /* JADX WARN: Multi-variable type inference failed */
    SuspendAnimationKt$animate$6(p0 p0Var, Object obj, Animation animation, AnimationVector animationVector, AnimationState animationState, float f, l lVar) {
        super(1);
        this.$lateInitScope = p0Var;
        this.$initialValue = obj;
        this.$animation = animation;
        this.$initialVelocityVector = animationVector;
        this.$this_animate = animationState;
        this.$durationScale = f;
        this.$block = lVar;
    }

    /* JADX WARN: Type inference failed for: r12v0, types: [T, androidx.compose.animation.core.AnimationScope] */
    public final void a(long j6) {
        p0<AnimationScope<T, V>> p0Var = this.$lateInitScope;
        ?? animationScope = new AnimationScope(this.$initialValue, this.$animation.d(), this.$initialVelocityVector, j6, this.$animation.f(), j6, true, new AnonymousClass1(this.$this_animate));
        SuspendAnimationKt.n(animationScope, j6, this.$durationScale, this.$animation, this.$this_animate, this.$block);
        p0Var.element = animationScope;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Long l) {
        a(l.longValue());
        return l0.INSTANCE;
    }
}
