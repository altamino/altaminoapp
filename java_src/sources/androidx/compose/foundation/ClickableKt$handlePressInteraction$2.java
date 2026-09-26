package androidx.compose.foundation;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.ClickableKt$handlePressInteraction$2", f = "Clickable.kt", l = {412, 414, 421, TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 431}, m = "invokeSuspend")
final class ClickableKt$handlePressInteraction$2 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ State<e8.a<Boolean>> $delayPressInteraction;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ long $pressPoint;
    final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
    final /* synthetic */ PressGestureScope $this_handlePressInteraction;
    private /* synthetic */ Object L$0;
    boolean Z$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ClickableKt$handlePressInteraction$2(PressGestureScope pressGestureScope, long j6, MutableInteractionSource mutableInteractionSource, MutableState<PressInteraction.Press> mutableState, State<? extends e8.a<Boolean>> state, d<? super ClickableKt$handlePressInteraction$2> dVar) {
        super(2, dVar);
        this.$this_handlePressInteraction = pressGestureScope;
        this.$pressPoint = j6;
        this.$interactionSource = mutableInteractionSource;
        this.$pressedInteraction = mutableState;
        this.$delayPressInteraction = state;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        ClickableKt$handlePressInteraction$2 clickableKt$handlePressInteraction$2 = new ClickableKt$handlePressInteraction$2(this.$this_handlePressInteraction, this.$pressPoint, this.$interactionSource, this.$pressedInteraction, this.$delayPressInteraction, dVar);
        clickableKt$handlePressInteraction$2.L$0 = obj;
        return clickableKt$handlePressInteraction$2;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((ClickableKt$handlePressInteraction$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x008e  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b4 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        b2 b2VarD;
        Object objN0;
        boolean z6;
        PressInteraction.Press press;
        PressInteraction.Release release;
        MutableInteractionSource mutableInteractionSource;
        PressInteraction.Release release2;
        MutableInteractionSource mutableInteractionSource2;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                b2VarD = (b2) this.L$0;
                w.b(obj);
                objN0 = obj;
            } else if (i10 == 2) {
                z6 = this.Z$0;
                w.b(obj);
                if (z6) {
                    press = new PressInteraction.Press(this.$pressPoint, null);
                    release = new PressInteraction.Release(press);
                    mutableInteractionSource = this.$interactionSource;
                    this.L$0 = release;
                    this.label = 3;
                    if (mutableInteractionSource.b(press, this) == objE) {
                        return objE;
                    }
                    release2 = release;
                    mutableInteractionSource2 = this.$interactionSource;
                    this.L$0 = null;
                    this.label = 4;
                    if (mutableInteractionSource2.b(release2, this) == objE) {
                        return objE;
                    }
                }
            } else if (i10 == 3) {
                release2 = (PressInteraction.Release) this.L$0;
                w.b(obj);
                mutableInteractionSource2 = this.$interactionSource;
                this.L$0 = null;
                this.label = 4;
                if (mutableInteractionSource2.b(release2, this) == objE) {
                    return objE;
                }
            } else {
                if (i10 != 4 && i10 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(obj);
            }
            this.$pressedInteraction.setValue(null);
            return l0.INSTANCE;
        }
        w.b(obj);
        b2VarD = k.d((o0) this.L$0, null, null, new ClickableKt$handlePressInteraction$2$delayJob$1(this.$delayPressInteraction, this.$pressPoint, this.$interactionSource, this.$pressedInteraction, null), 3, null);
        PressGestureScope pressGestureScope = this.$this_handlePressInteraction;
        this.L$0 = b2VarD;
        this.label = 1;
        objN0 = pressGestureScope.n0(this);
        if (objN0 == objE) {
            return objE;
        }
        boolean zBooleanValue = ((Boolean) objN0).booleanValue();
        if (b2VarD.isActive()) {
            this.L$0 = null;
            this.Z$0 = zBooleanValue;
            this.label = 2;
            if (f2.g(b2VarD, this) == objE) {
                return objE;
            }
            z6 = zBooleanValue;
            if (z6) {
                press = new PressInteraction.Press(this.$pressPoint, null);
                release = new PressInteraction.Release(press);
                mutableInteractionSource = this.$interactionSource;
                this.L$0 = release;
                this.label = 3;
                if (mutableInteractionSource.b(press, this) == objE) {
                    return objE;
                }
                release2 = release;
                mutableInteractionSource2 = this.$interactionSource;
                this.L$0 = null;
                this.label = 4;
                if (mutableInteractionSource2.b(release2, this) == objE) {
                    return objE;
                }
            }
        } else {
            PressInteraction.Press value = this.$pressedInteraction.getValue();
            if (value != null) {
                MutableInteractionSource mutableInteractionSource3 = this.$interactionSource;
                Interaction release3 = zBooleanValue ? new PressInteraction.Release(value) : new PressInteraction.Cancel(value);
                this.L$0 = null;
                this.label = 5;
                if (mutableInteractionSource3.b(release3, this) == objE) {
                    return objE;
                }
            }
        }
        this.$pressedInteraction.setValue(null);
        return l0.INSTANCE;
    }
}
