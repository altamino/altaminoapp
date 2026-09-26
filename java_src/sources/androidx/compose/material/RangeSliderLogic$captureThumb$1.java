package androidx.compose.material;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.compose.material.RangeSliderLogic$captureThumb$1", f = "Slider.kt", l = {1041}, m = "invokeSuspend")
final class RangeSliderLogic$captureThumb$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ boolean $draggingStart;
    final /* synthetic */ Interaction $interaction;
    int label;
    final /* synthetic */ RangeSliderLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RangeSliderLogic$captureThumb$1(RangeSliderLogic rangeSliderLogic, boolean z6, Interaction interaction, d<? super RangeSliderLogic$captureThumb$1> dVar) {
        super(2, dVar);
        this.this$0 = rangeSliderLogic;
        this.$draggingStart = z6;
        this.$interaction = interaction;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new RangeSliderLogic$captureThumb$1(this.this$0, this.$draggingStart, this.$interaction, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((RangeSliderLogic$captureThumb$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            MutableInteractionSource mutableInteractionSourceA = this.this$0.a(this.$draggingStart);
            Interaction interaction = this.$interaction;
            this.label = 1;
            if (mutableInteractionSourceA.b(interaction, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
