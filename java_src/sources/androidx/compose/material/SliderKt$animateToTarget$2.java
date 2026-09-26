package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.gestures.DragScope;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.compose.material.SliderKt$animateToTarget$2", f = "Slider.kt", l = {927}, m = "invokeSuspend")
final class SliderKt$animateToTarget$2 extends l implements p<DragScope, d<? super l0>, Object> {
    final /* synthetic */ float $current;
    final /* synthetic */ float $target;
    final /* synthetic */ float $velocity;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.material.SliderKt$animateToTarget$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<Animatable<Float, AnimationVector1D>, l0> {
        final /* synthetic */ DragScope $$this$drag;
        final /* synthetic */ m0 $latestValue;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DragScope dragScope, m0 m0Var) {
            super(1);
            this.$$this$drag = dragScope;
            this.$latestValue = m0Var;
        }

        public final void a(@NotNull Animatable<Float, AnimationVector1D> animateTo) {
            t.j(animateTo, "$this$animateTo");
            this.$$this$drag.a(animateTo.n().floatValue() - this.$latestValue.element);
            this.$latestValue.element = animateTo.n().floatValue();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Animatable<Float, AnimationVector1D> animatable) {
            a(animatable);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SliderKt$animateToTarget$2(float f, float f6, float f7, d<? super SliderKt$animateToTarget$2> dVar) {
        super(2, dVar);
        this.$current = f;
        this.$target = f6;
        this.$velocity = f7;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SliderKt$animateToTarget$2 sliderKt$animateToTarget$2 = new SliderKt$animateToTarget$2(this.$current, this.$target, this.$velocity, dVar);
        sliderKt$animateToTarget$2.L$0 = obj;
        return sliderKt$animateToTarget$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull DragScope dragScope, @Nullable d<? super l0> dVar) {
        return ((SliderKt$animateToTarget$2) create(dragScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            DragScope dragScope = (DragScope) this.L$0;
            m0 m0Var = new m0();
            float f = this.$current;
            m0Var.element = f;
            Animatable animatableB = AnimatableKt.b(f, 0.0f, 2, null);
            Float fC = b.c(this.$target);
            TweenSpec tweenSpec = SliderKt.SliderToTickAnimation;
            Float fC2 = b.c(this.$velocity);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(dragScope, m0Var);
            this.label = 1;
            if (animatableB.e(fC, tweenSpec, fC2, anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
