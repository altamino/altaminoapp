package androidx.compose.foundation.interaction;

import androidx.compose.runtime.MutableState;
import e8.p;
import java.util.ArrayList;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.h;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
@f(c = "androidx.compose.foundation.interaction.PressInteractionKt$collectIsPressedAsState$1", f = "PressInteraction.kt", l = {85}, m = "invokeSuspend")
final class PressInteractionKt$collectIsPressedAsState$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ MutableState<Boolean> $isPressed;
    final /* synthetic */ InteractionSource $this_collectIsPressedAsState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PressInteractionKt$collectIsPressedAsState$1(InteractionSource interactionSource, MutableState<Boolean> mutableState, d<? super PressInteractionKt$collectIsPressedAsState$1> dVar) {
        super(2, dVar);
        this.$this_collectIsPressedAsState = interactionSource;
        this.$isPressed = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new PressInteractionKt$collectIsPressedAsState$1(this.$this_collectIsPressedAsState, this.$isPressed, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((PressInteractionKt$collectIsPressedAsState$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            final ArrayList arrayList = new ArrayList();
            g<Interaction> gVarC = this.$this_collectIsPressedAsState.c();
            final MutableState<Boolean> mutableState = this.$isPressed;
            h<Interaction> hVar = new h<Interaction>() { // from class: androidx.compose.foundation.interaction.PressInteractionKt$collectIsPressedAsState$1.1
                @Override // kotlinx.coroutines.flow.h
                @Nullable
                /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
                public final Object emit(@NotNull Interaction interaction, @NotNull d<? super l0> dVar) {
                    if (interaction instanceof PressInteraction.Press) {
                        arrayList.add(interaction);
                    } else if (interaction instanceof PressInteraction.Release) {
                        arrayList.remove(((PressInteraction.Release) interaction).a());
                    } else if (interaction instanceof PressInteraction.Cancel) {
                        arrayList.remove(((PressInteraction.Cancel) interaction).a());
                    }
                    mutableState.setValue(b.a(!arrayList.isEmpty()));
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
