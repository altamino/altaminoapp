package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import e8.a;
import e8.l;
import e8.p;
import j8.e;
import j8.n;
import java.util.List;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$RangeSlider$2$gestureEndAction$1 extends v implements l<Boolean, l0> {
    final /* synthetic */ m0 $maxPx;
    final /* synthetic */ m0 $minPx;
    final /* synthetic */ a<l0> $onValueChangeFinished;
    final /* synthetic */ State<l<e<Float>, l0>> $onValueChangeState;
    final /* synthetic */ MutableState<Float> $rawOffsetEnd;
    final /* synthetic */ MutableState<Float> $rawOffsetStart;
    final /* synthetic */ o0 $scope;
    final /* synthetic */ List<Float> $tickFractions;
    final /* synthetic */ e<Float> $valueRange;

    /* JADX INFO: renamed from: androidx.compose.material.SliderKt$RangeSlider$2$gestureEndAction$1$1, reason: invalid class name */
    @f(c = "androidx.compose.material.SliderKt$RangeSlider$2$gestureEndAction$1$1", f = "Slider.kt", l = {352}, m = "invokeSuspend")
    static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ float $current;
        final /* synthetic */ boolean $isStart;
        final /* synthetic */ m0 $maxPx;
        final /* synthetic */ m0 $minPx;
        final /* synthetic */ a<l0> $onValueChangeFinished;
        final /* synthetic */ State<l<e<Float>, l0>> $onValueChangeState;
        final /* synthetic */ MutableState<Float> $rawOffsetEnd;
        final /* synthetic */ MutableState<Float> $rawOffsetStart;
        final /* synthetic */ float $target;
        final /* synthetic */ e<Float> $valueRange;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material.SliderKt$RangeSlider$2$gestureEndAction$1$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00641 extends v implements l<Animatable<Float, AnimationVector1D>, l0> {
            final /* synthetic */ boolean $isStart;
            final /* synthetic */ m0 $maxPx;
            final /* synthetic */ m0 $minPx;
            final /* synthetic */ State<l<e<Float>, l0>> $onValueChangeState;
            final /* synthetic */ MutableState<Float> $rawOffsetEnd;
            final /* synthetic */ MutableState<Float> $rawOffsetStart;
            final /* synthetic */ e<Float> $valueRange;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00641(boolean z6, MutableState<Float> mutableState, MutableState<Float> mutableState2, State<? extends l<? super e<Float>, l0>> state, m0 m0Var, m0 m0Var2, e<Float> eVar) {
                super(1);
                this.$isStart = z6;
                this.$rawOffsetStart = mutableState;
                this.$rawOffsetEnd = mutableState2;
                this.$onValueChangeState = state;
                this.$minPx = m0Var;
                this.$maxPx = m0Var2;
                this.$valueRange = eVar;
            }

            public final void a(@NotNull Animatable<Float, AnimationVector1D> animateTo) {
                t.j(animateTo, "$this$animateTo");
                (this.$isStart ? this.$rawOffsetStart : this.$rawOffsetEnd).setValue(animateTo.n());
                this.$onValueChangeState.getValue().invoke(SliderKt$RangeSlider$2.e(this.$minPx, this.$maxPx, this.$valueRange, n.b(this.$rawOffsetStart.getValue().floatValue(), this.$rawOffsetEnd.getValue().floatValue())));
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Animatable<Float, AnimationVector1D> animatable) {
                a(animatable);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(float f, float f6, a<l0> aVar, boolean z6, MutableState<Float> mutableState, MutableState<Float> mutableState2, State<? extends l<? super e<Float>, l0>> state, m0 m0Var, m0 m0Var2, e<Float> eVar, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$current = f;
            this.$target = f6;
            this.$onValueChangeFinished = aVar;
            this.$isStart = z6;
            this.$rawOffsetStart = mutableState;
            this.$rawOffsetEnd = mutableState2;
            this.$onValueChangeState = state;
            this.$minPx = m0Var;
            this.$maxPx = m0Var2;
            this.$valueRange = eVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(this.$current, this.$target, this.$onValueChangeFinished, this.$isStart, this.$rawOffsetStart, this.$rawOffsetEnd, this.$onValueChangeState, this.$minPx, this.$maxPx, this.$valueRange, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 == 0) {
                w.b(obj);
                Animatable animatableB = AnimatableKt.b(this.$current, 0.0f, 2, null);
                Float fC = b.c(this.$target);
                TweenSpec tweenSpec = SliderKt.SliderToTickAnimation;
                Float fC2 = b.c(0.0f);
                C00641 c00641 = new C00641(this.$isStart, this.$rawOffsetStart, this.$rawOffsetEnd, this.$onValueChangeState, this.$minPx, this.$maxPx, this.$valueRange);
                this.label = 1;
                if (animatableB.e(fC, tweenSpec, fC2, c00641, this) == objE) {
                    return objE;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(obj);
            }
            a<l0> aVar = this.$onValueChangeFinished;
            if (aVar != null) {
                aVar.invoke();
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$RangeSlider$2$gestureEndAction$1(MutableState<Float> mutableState, MutableState<Float> mutableState2, List<Float> list, m0 m0Var, m0 m0Var2, a<l0> aVar, o0 o0Var, State<? extends l<? super e<Float>, l0>> state, e<Float> eVar) {
        super(1);
        this.$rawOffsetStart = mutableState;
        this.$rawOffsetEnd = mutableState2;
        this.$tickFractions = list;
        this.$minPx = m0Var;
        this.$maxPx = m0Var2;
        this.$onValueChangeFinished = aVar;
        this.$scope = o0Var;
        this.$onValueChangeState = state;
        this.$valueRange = eVar;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return l0.INSTANCE;
    }

    public final void invoke(boolean z6) {
        float fFloatValue = (z6 ? this.$rawOffsetStart : this.$rawOffsetEnd).getValue().floatValue();
        float F = SliderKt.F(fFloatValue, this.$tickFractions, this.$minPx.element, this.$maxPx.element);
        if (fFloatValue != F) {
            k.d(this.$scope, null, null, new AnonymousClass1(fFloatValue, F, this.$onValueChangeFinished, z6, this.$rawOffsetStart, this.$rawOffsetEnd, this.$onValueChangeState, this.$minPx, this.$maxPx, this.$valueRange, null), 3, null);
            return;
        }
        a<l0> aVar = this.$onValueChangeFinished;
        if (aVar != null) {
            aVar.invoke();
        }
    }
}
