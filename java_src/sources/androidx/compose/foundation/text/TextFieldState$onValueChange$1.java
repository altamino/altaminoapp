package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.TextFieldValue;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class TextFieldState$onValueChange$1 extends v implements l<TextFieldValue, l0> {
    final /* synthetic */ TextFieldState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldState$onValueChange$1(TextFieldState textFieldState) {
        super(1);
        this.this$0 = textFieldState;
    }

    public final void a(@NotNull TextFieldValue it) {
        t.j(it, "it");
        if (!t.e(it.h(), this.this$0.q().k().g())) {
            this.this$0.r(HandleState.None);
        }
        this.this$0.onValueChangeOriginal.invoke(it);
        this.this$0.k().invalidate();
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(TextFieldValue textFieldValue) {
        a(textFieldValue);
        return l0.INSTANCE;
    }
}
