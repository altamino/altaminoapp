package androidx.compose.ui;

import androidx.compose.ui.focus.FocusEventModifier;
import androidx.compose.ui.focus.FocusState;
import e8.l;
import kotlin.jvm.internal.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class ComposedModifierKt$WrapFocusEventModifier$1$modifier$1$1 extends q implements l<FocusState, l0> {
    ComposedModifierKt$WrapFocusEventModifier$1$modifier$1$1(Object obj) {
        super(1, obj, FocusEventModifier.class, "onFocusEvent", "onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V", 0);
    }

    public final void a(@NotNull FocusState p0) {
        t.j(p0, "p0");
        ((FocusEventModifier) this.receiver).Y(p0);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(FocusState focusState) {
        a(focusState);
        return l0.INSTANCE;
    }
}
