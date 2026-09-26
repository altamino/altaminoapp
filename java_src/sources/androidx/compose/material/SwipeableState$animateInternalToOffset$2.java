package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
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

/* JADX INFO: loaded from: classes3.dex */
@f(c = "androidx.compose.material.SwipeableState$animateInternalToOffset$2", f = "Swipeable.kt", l = {223}, m = "invokeSuspend")
final class SwipeableState$animateInternalToOffset$2 extends l implements p<DragScope, d<? super l0>, Object> {
    final /* synthetic */ AnimationSpec<Float> $spec;
    final /* synthetic */ float $target;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SwipeableState<T> this$0;

    /* JADX INFO: renamed from: androidx.compose.material.SwipeableState$animateInternalToOffset$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<Animatable<Float, AnimationVector1D>, l0> {
        final /* synthetic */ DragScope $$this$drag;
        final /* synthetic */ m0 $prevValue;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DragScope dragScope, m0 m0Var) {
            super(1);
            this.$$this$drag = dragScope;
            this.$prevValue = m0Var;
        }

        public final void a(@NotNull Animatable<Float, AnimationVector1D> animateTo) {
            t.j(animateTo, "$this$animateTo");
            this.$$this$drag.a(animateTo.n().floatValue() - this.$prevValue.element);
            this.$prevValue.element = animateTo.n().floatValue();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Animatable<Float, AnimationVector1D> animatable) {
            a(animatable);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SwipeableState$animateInternalToOffset$2(SwipeableState<T> swipeableState, float f, AnimationSpec<Float> animationSpec, d<? super SwipeableState$animateInternalToOffset$2> dVar) {
        super(2, dVar);
        this.this$0 = swipeableState;
        this.$target = f;
        this.$spec = animationSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SwipeableState$animateInternalToOffset$2 swipeableState$animateInternalToOffset$2 = new SwipeableState$animateInternalToOffset$2(this.this$0, this.$target, this.$spec, dVar);
        swipeableState$animateInternalToOffset$2.L$0 = obj;
        return swipeableState$animateInternalToOffset$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull DragScope dragScope, @Nullable d<? super l0> dVar) {
        return ((SwipeableState$animateInternalToOffset$2) create(dragScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        try {
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
                m0Var.element = ((Number) ((SwipeableState) this.this$0).absoluteOffset.getValue()).floatValue();
                ((SwipeableState) this.this$0).animationTarget.setValue(b.c(this.$target));
                this.this$0.D(true);
                Animatable animatableB = AnimatableKt.b(m0Var.element, 0.0f, 2, null);
                Float fC = b.c(this.$target);
                AnimationSpec<Float> animationSpec = this.$spec;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(dragScope, m0Var);
                this.label = 1;
                if (Animatable.f(animatableB, fC, animationSpec, null, anonymousClass1, this, 4, null) == objE) {
                    return objE;
                }
            }
            ((SwipeableState) this.this$0).animationTarget.setValue(null);
            this.this$0.D(false);
            return l0.INSTANCE;
        } catch (Throwable th) {
            ((SwipeableState) this.this$0).animationTarget.setValue(null);
            this.this$0.D(false);
            throw th;
        }
    }
}
