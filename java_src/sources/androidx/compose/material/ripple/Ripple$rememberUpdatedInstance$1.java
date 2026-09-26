package androidx.compose.material.ripple;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.h;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
@f(c = "androidx.compose.material.ripple.Ripple$rememberUpdatedInstance$1", f = "Ripple.kt", l = {356}, m = "invokeSuspend")
final class Ripple$rememberUpdatedInstance$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ RippleIndicationInstance $instance;
    final /* synthetic */ InteractionSource $interactionSource;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Ripple$rememberUpdatedInstance$1(InteractionSource interactionSource, RippleIndicationInstance rippleIndicationInstance, d<? super Ripple$rememberUpdatedInstance$1> dVar) {
        super(2, dVar);
        this.$interactionSource = interactionSource;
        this.$instance = rippleIndicationInstance;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        Ripple$rememberUpdatedInstance$1 ripple$rememberUpdatedInstance$1 = new Ripple$rememberUpdatedInstance$1(this.$interactionSource, this.$instance, dVar);
        ripple$rememberUpdatedInstance$1.L$0 = obj;
        return ripple$rememberUpdatedInstance$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((Ripple$rememberUpdatedInstance$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            final o0 o0Var = (o0) this.L$0;
            g<Interaction> gVarC = this.$interactionSource.c();
            final RippleIndicationInstance rippleIndicationInstance = this.$instance;
            h<Interaction> hVar = new h<Interaction>() { // from class: androidx.compose.material.ripple.Ripple$rememberUpdatedInstance$1$invokeSuspend$$inlined$collect$1
                @Override // kotlinx.coroutines.flow.h
                @Nullable
                public Object emit(Interaction interaction, @NotNull d<? super l0> dVar) {
                    Interaction interaction2 = interaction;
                    if (interaction2 instanceof PressInteraction.Press) {
                        rippleIndicationInstance.e((PressInteraction.Press) interaction2, o0Var);
                    } else if (interaction2 instanceof PressInteraction.Release) {
                        rippleIndicationInstance.g(((PressInteraction.Release) interaction2).a());
                    } else if (interaction2 instanceof PressInteraction.Cancel) {
                        rippleIndicationInstance.g(((PressInteraction.Cancel) interaction2).a());
                    } else {
                        rippleIndicationInstance.h(interaction2, o0Var);
                    }
                    return l0.INSTANCE;
                }
            };
            this.label = 1;
            if (gVarC.collect(hVar, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
