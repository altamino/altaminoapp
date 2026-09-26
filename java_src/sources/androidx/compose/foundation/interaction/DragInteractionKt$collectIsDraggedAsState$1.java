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

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.interaction.DragInteractionKt$collectIsDraggedAsState$1", f = "DragInteraction.kt", l = {84}, m = "invokeSuspend")
final class DragInteractionKt$collectIsDraggedAsState$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ MutableState<Boolean> $isDragged;
    final /* synthetic */ InteractionSource $this_collectIsDraggedAsState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DragInteractionKt$collectIsDraggedAsState$1(InteractionSource interactionSource, MutableState<Boolean> mutableState, d<? super DragInteractionKt$collectIsDraggedAsState$1> dVar) {
        super(2, dVar);
        this.$this_collectIsDraggedAsState = interactionSource;
        this.$isDragged = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new DragInteractionKt$collectIsDraggedAsState$1(this.$this_collectIsDraggedAsState, this.$isDragged, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((DragInteractionKt$collectIsDraggedAsState$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            g<Interaction> gVarC = this.$this_collectIsDraggedAsState.c();
            final MutableState<Boolean> mutableState = this.$isDragged;
            h<Interaction> hVar = new h<Interaction>() { // from class: androidx.compose.foundation.interaction.DragInteractionKt$collectIsDraggedAsState$1.1
                @Override // kotlinx.coroutines.flow.h
                @Nullable
                /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
                public final Object emit(@NotNull Interaction interaction, @NotNull d<? super l0> dVar) {
                    if (interaction instanceof DragInteraction.Start) {
                        arrayList.add(interaction);
                    } else if (interaction instanceof DragInteraction.Stop) {
                        arrayList.remove(((DragInteraction.Stop) interaction).a());
                    } else if (interaction instanceof DragInteraction.Cancel) {
                        arrayList.remove(((DragInteraction.Cancel) interaction).a());
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
