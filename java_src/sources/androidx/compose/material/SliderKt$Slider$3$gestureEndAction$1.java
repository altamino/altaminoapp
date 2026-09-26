package androidx.compose.material;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import e8.a;
import e8.l;
import e8.p;
import java.util.List;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$Slider$3$gestureEndAction$1 extends v implements l<Float, l0> {
    final /* synthetic */ SliderDraggableState $draggableState;
    final /* synthetic */ m0 $maxPx;
    final /* synthetic */ m0 $minPx;
    final /* synthetic */ a<l0> $onValueChangeFinished;
    final /* synthetic */ MutableState<Float> $rawOffset;
    final /* synthetic */ o0 $scope;
    final /* synthetic */ List<Float> $tickFractions;

    /* JADX INFO: renamed from: androidx.compose.material.SliderKt$Slider$3$gestureEndAction$1$1, reason: invalid class name */
    @f(c = "androidx.compose.material.SliderKt$Slider$3$gestureEndAction$1$1", f = "Slider.kt", l = {ComposerKt.providerMapsKey}, m = "invokeSuspend")
    static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ float $current;
        final /* synthetic */ SliderDraggableState $draggableState;
        final /* synthetic */ a<l0> $onValueChangeFinished;
        final /* synthetic */ float $target;
        final /* synthetic */ float $velocity;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SliderDraggableState sliderDraggableState, float f, float f6, float f7, a<l0> aVar, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$draggableState = sliderDraggableState;
            this.$current = f;
            this.$target = f6;
            this.$velocity = f7;
            this.$onValueChangeFinished = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(this.$draggableState, this.$current, this.$target, this.$velocity, this.$onValueChangeFinished, dVar);
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
            if (i10 != 0) {
                if (i10 == 1) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                SliderDraggableState sliderDraggableState = this.$draggableState;
                float f = this.$current;
                float f6 = this.$target;
                float f7 = this.$velocity;
                this.label = 1;
                if (SliderKt.w(sliderDraggableState, f, f6, f7, this) == objE) {
                    return objE;
                }
            }
            a<l0> aVar = this.$onValueChangeFinished;
            if (aVar != null) {
                aVar.invoke();
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SliderKt$Slider$3$gestureEndAction$1(MutableState<Float> mutableState, List<Float> list, m0 m0Var, m0 m0Var2, o0 o0Var, SliderDraggableState sliderDraggableState, a<l0> aVar) {
        super(1);
        this.$rawOffset = mutableState;
        this.$tickFractions = list;
        this.$minPx = m0Var;
        this.$maxPx = m0Var2;
        this.$scope = o0Var;
        this.$draggableState = sliderDraggableState;
        this.$onValueChangeFinished = aVar;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Float f) {
        invoke(f.floatValue());
        return l0.INSTANCE;
    }

    public final void invoke(float f) {
        a<l0> aVar;
        float fFloatValue = this.$rawOffset.getValue().floatValue();
        float F = SliderKt.F(fFloatValue, this.$tickFractions, this.$minPx.element, this.$maxPx.element);
        if (fFloatValue != F) {
            k.d(this.$scope, null, null, new AnonymousClass1(this.$draggableState, fFloatValue, F, f, this.$onValueChangeFinished, null), 3, null);
        } else {
            if (this.$draggableState.g() || (aVar = this.$onValueChangeFinished) == null) {
                return;
            }
            aVar.invoke();
        }
    }
}
