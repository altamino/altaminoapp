package androidx.compose.material;

import androidx.compose.runtime.State;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.compose.material.SliderKt$Slider$3$drag$1$1", f = "Slider.kt", l = {}, m = "invokeSuspend")
final class SliderKt$Slider$3$drag$1$1 extends l implements q<o0, Float, d<? super l0>, Object> {
    final /* synthetic */ State<e8.l<Float, l0>> $gestureEndAction;
    /* synthetic */ float F$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$Slider$3$drag$1$1(State<? extends e8.l<? super Float, l0>> state, d<? super SliderKt$Slider$3$drag$1$1> dVar) {
        super(3, dVar);
        this.$gestureEndAction = state;
    }

    @Nullable
    public final Object f(@NotNull o0 o0Var, float f, @Nullable d<? super l0> dVar) {
        SliderKt$Slider$3$drag$1$1 sliderKt$Slider$3$drag$1$1 = new SliderKt$Slider$3$drag$1$1(this.$gestureEndAction, dVar);
        sliderKt$Slider$3$drag$1$1.F$0 = f;
        return sliderKt$Slider$3$drag$1$1.invokeSuspend(l0.INSTANCE);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Object invoke(o0 o0Var, Float f, d<? super l0> dVar) {
        return f(o0Var, f.floatValue(), dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            this.$gestureEndAction.getValue().invoke(b.c(this.F$0));
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
