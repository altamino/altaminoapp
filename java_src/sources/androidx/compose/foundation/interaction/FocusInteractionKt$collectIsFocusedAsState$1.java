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

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.interaction.FocusInteractionKt$collectIsFocusedAsState$1", f = "FocusInteraction.kt", l = {69}, m = "invokeSuspend")
final class FocusInteractionKt$collectIsFocusedAsState$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ MutableState<Boolean> $isFocused;
    final /* synthetic */ InteractionSource $this_collectIsFocusedAsState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusInteractionKt$collectIsFocusedAsState$1(InteractionSource interactionSource, MutableState<Boolean> mutableState, d<? super FocusInteractionKt$collectIsFocusedAsState$1> dVar) {
        super(2, dVar);
        this.$this_collectIsFocusedAsState = interactionSource;
        this.$isFocused = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new FocusInteractionKt$collectIsFocusedAsState$1(this.$this_collectIsFocusedAsState, this.$isFocused, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((FocusInteractionKt$collectIsFocusedAsState$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            g<Interaction> gVarC = this.$this_collectIsFocusedAsState.c();
            final MutableState<Boolean> mutableState = this.$isFocused;
            h<Interaction> hVar = new h<Interaction>() { // from class: androidx.compose.foundation.interaction.FocusInteractionKt$collectIsFocusedAsState$1.1
                @Override // kotlinx.coroutines.flow.h
                @Nullable
                /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
                public final Object emit(@NotNull Interaction interaction, @NotNull d<? super l0> dVar) {
                    if (interaction instanceof FocusInteraction.Focus) {
                        arrayList.add(interaction);
                    } else if (interaction instanceof FocusInteraction.Unfocus) {
                        arrayList.remove(((FocusInteraction.Unfocus) interaction).a());
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
