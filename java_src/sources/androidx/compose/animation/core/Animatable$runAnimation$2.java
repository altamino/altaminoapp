package androidx.compose.animation.core;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: Add missing generic type declarations: [T, V] */
/* JADX INFO: loaded from: classes.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.animation.core.Animatable$runAnimation$2", f = "Animatable.kt", l = {291}, m = "invokeSuspend")
final class Animatable$runAnimation$2<T, V> extends l implements e8.l<kotlin.coroutines.d<? super AnimationResult<T, V>>, Object> {
    final /* synthetic */ Animation<T, V> $animation;
    final /* synthetic */ e8.l<Animatable<T, V>, l0> $block;
    final /* synthetic */ T $initialVelocity;
    final /* synthetic */ long $startTime;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ Animatable<T, V> this$0;

    /* JADX INFO: renamed from: androidx.compose.animation.core.Animatable$runAnimation$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<AnimationScope<T, V>, l0> {
        final /* synthetic */ e8.l<Animatable<T, V>, l0> $block;
        final /* synthetic */ k0 $clampingNeeded;
        final /* synthetic */ AnimationState<T, V> $endState;
        final /* synthetic */ Animatable<T, V> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Animatable<T, V> animatable, AnimationState<T, V> animationState, e8.l<? super Animatable<T, V>, l0> lVar, k0 k0Var) {
            super(1);
            this.this$0 = animatable;
            this.$endState = animationState;
            this.$block = lVar;
            this.$clampingNeeded = k0Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(@NotNull AnimationScope<T, V> animate) {
            t.j(animate, "$this$animate");
            SuspendAnimationKt.p(animate, this.this$0.k());
            Object objH = this.this$0.h(animate.e());
            if (t.e(objH, animate.e())) {
                e8.l<Animatable<T, V>, l0> lVar = this.$block;
                if (lVar != null) {
                    lVar.invoke(this.this$0);
                    return;
                }
                return;
            }
            this.this$0.k().n(objH);
            this.$endState.n((T) objH);
            e8.l<Animatable<T, V>, l0> lVar2 = this.$block;
            if (lVar2 != null) {
                lVar2.invoke(this.this$0);
            }
            animate.a();
            this.$clampingNeeded.element = true;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
            a((AnimationScope) obj);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    Animatable$runAnimation$2(Animatable<T, V> animatable, T t5, Animation<T, V> animation, long j6, e8.l<? super Animatable<T, V>, l0> lVar, kotlin.coroutines.d<? super Animatable$runAnimation$2> dVar) {
        super(1, dVar);
        this.this$0 = animatable;
        this.$initialVelocity = t5;
        this.$animation = animation;
        this.$startTime = j6;
        this.$block = lVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@NotNull kotlin.coroutines.d<?> dVar) {
        return new Animatable$runAnimation$2(this.this$0, this.$initialVelocity, this.$animation, this.$startTime, this.$block, dVar);
    }

    @Override // e8.l
    @Nullable
    public final Object invoke(@Nullable kotlin.coroutines.d<? super AnimationResult<T, V>> dVar) {
        return ((Animatable$runAnimation$2) create(dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AnimationState animationState;
        k0 k0Var;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                w.b(obj);
                this.this$0.k().o((AnimationVector) this.this$0.m().a().invoke(this.$initialVelocity));
                this.this$0.t(this.$animation.f());
                this.this$0.s(true);
                AnimationState animationStateF = AnimationStateKt.f(this.this$0.k(), null, null, 0L, Long.MIN_VALUE, false, 23, null);
                k0 k0Var2 = new k0();
                Animation<T, V> animation = this.$animation;
                long j6 = this.$startTime;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, animationStateF, this.$block, k0Var2);
                this.L$0 = animationStateF;
                this.L$1 = k0Var2;
                this.label = 1;
                if (SuspendAnimationKt.c(animationStateF, animation, j6, anonymousClass1, this) == objE) {
                    return objE;
                }
                animationState = animationStateF;
                k0Var = k0Var2;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                k0Var = (k0) this.L$1;
                animationState = (AnimationState) this.L$0;
                w.b(obj);
            }
            AnimationEndReason animationEndReason = k0Var.element ? AnimationEndReason.BoundReached : AnimationEndReason.Finished;
            this.this$0.j();
            return new AnimationResult(animationState, animationEndReason);
        } catch (CancellationException e) {
            this.this$0.j();
            throw e;
        }
    }
}
