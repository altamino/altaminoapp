package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.ClickableKt$handlePressInteraction$2$delayJob$1", f = "Clickable.kt", l = {406, 409}, m = "invokeSuspend")
final class ClickableKt$handlePressInteraction$2$delayJob$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ State<e8.a<Boolean>> $delayPressInteraction;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ long $pressPoint;
    final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ClickableKt$handlePressInteraction$2$delayJob$1(State<? extends e8.a<Boolean>> state, long j6, MutableInteractionSource mutableInteractionSource, MutableState<PressInteraction.Press> mutableState, d<? super ClickableKt$handlePressInteraction$2$delayJob$1> dVar) {
        super(2, dVar);
        this.$delayPressInteraction = state;
        this.$pressPoint = j6;
        this.$interactionSource = mutableInteractionSource;
        this.$pressedInteraction = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new ClickableKt$handlePressInteraction$2$delayJob$1(this.$delayPressInteraction, this.$pressPoint, this.$interactionSource, this.$pressedInteraction, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((ClickableKt$handlePressInteraction$2$delayJob$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        PressInteraction.Press press;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    press = (PressInteraction.Press) this.L$0;
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
            }
            this.$pressedInteraction.setValue(press);
            return l0.INSTANCE;
        }
        w.b(obj);
        if (this.$delayPressInteraction.getValue().invoke().booleanValue()) {
            long jB = Clickable_androidKt.b();
            this.label = 1;
            if (y0.a(jB, this) == objE) {
                return objE;
            }
        }
        PressInteraction.Press press2 = new PressInteraction.Press(this.$pressPoint, null);
        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        this.L$0 = press2;
        this.label = 2;
        if (mutableInteractionSource.b(press2, this) == objE) {
            return objE;
        }
        press = press2;
        this.$pressedInteraction.setValue(press);
        return l0.INSTANCE;
    }
}
