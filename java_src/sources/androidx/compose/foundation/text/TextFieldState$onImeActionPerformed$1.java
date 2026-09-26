package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.ImeAction;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class TextFieldState$onImeActionPerformed$1 extends v implements l<ImeAction, l0> {
    final /* synthetic */ TextFieldState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldState$onImeActionPerformed$1(TextFieldState textFieldState) {
        super(1);
        this.this$0 = textFieldState;
    }

    public final void b(int i10) {
        this.this$0.keyboardActionRunner.d(i10);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ImeAction imeAction) {
        b(imeAction.o());
        return l0.INSTANCE;
    }
}
