package androidx.compose.foundation.text.selection;

import androidx.compose.ui.focus.FocusState;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SelectionManager$modifier$3 extends v implements l<FocusState, l0> {
    final /* synthetic */ SelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SelectionManager$modifier$3(SelectionManager selectionManager) {
        super(1);
        this.this$0 = selectionManager;
    }

    public final void a(@NotNull FocusState focusState) {
        t.j(focusState, "focusState");
        if (!focusState.a() && this.this$0.y()) {
            this.this$0.I();
        }
        this.this$0.T(focusState.a());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(FocusState focusState) {
        a(focusState);
        return l0.INSTANCE;
    }
}
