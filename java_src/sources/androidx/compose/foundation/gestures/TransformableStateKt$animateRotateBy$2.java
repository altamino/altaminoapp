package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.SuspendAnimationKt;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes5.dex */
@f(c = "androidx.compose.foundation.gestures.TransformableStateKt$animateRotateBy$2", f = "TransformableState.kt", l = {158}, m = "invokeSuspend")
final class TransformableStateKt$animateRotateBy$2 extends l implements p<TransformScope, d<? super l0>, Object> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ float $degrees;
    final /* synthetic */ m0 $previous;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableStateKt$animateRotateBy$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<AnimationScope<Float, AnimationVector1D>, l0> {
        final /* synthetic */ TransformScope $$this$transform;
        final /* synthetic */ m0 $previous;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(m0 m0Var, TransformScope transformScope) {
            super(1);
            this.$previous = m0Var;
            this.$$this$transform = transformScope;
        }

        public final void a(@NotNull AnimationScope<Float, AnimationVector1D> animateTo) {
            t.j(animateTo, "$this$animateTo");
            c.a(this.$$this$transform, 0.0f, 0L, animateTo.e().floatValue() - this.$previous.element, 3, null);
            this.$previous.element = animateTo.e().floatValue();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
            a(animationScope);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransformableStateKt$animateRotateBy$2(m0 m0Var, float f, AnimationSpec<Float> animationSpec, d<? super TransformableStateKt$animateRotateBy$2> dVar) {
        super(2, dVar);
        this.$previous = m0Var;
        this.$degrees = f;
        this.$animationSpec = animationSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        TransformableStateKt$animateRotateBy$2 transformableStateKt$animateRotateBy$2 = new TransformableStateKt$animateRotateBy$2(this.$previous, this.$degrees, this.$animationSpec, dVar);
        transformableStateKt$animateRotateBy$2.L$0 = obj;
        return transformableStateKt$animateRotateBy$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull TransformScope transformScope, @Nullable d<? super l0> dVar) {
        return ((TransformableStateKt$animateRotateBy$2) create(transformScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 == 0) {
            w.b(obj);
            TransformScope transformScope = (TransformScope) this.L$0;
            AnimationState animationStateB = AnimationStateKt.b(this.$previous.element, 0.0f, 0L, 0L, false, 30, null);
            Float fC = kotlin.coroutines.jvm.internal.b.c(this.$degrees);
            AnimationSpec<Float> animationSpec = this.$animationSpec;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$previous, transformScope);
            this.label = 1;
            if (SuspendAnimationKt.k(animationStateB, fC, animationSpec, false, anonymousClass1, this, 4, null) == objE) {
                return objE;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(obj);
        }
        return l0.INSTANCE;
    }
}
