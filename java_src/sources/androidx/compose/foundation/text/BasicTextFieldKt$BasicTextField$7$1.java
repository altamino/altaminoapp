package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.TextFieldValue;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BasicTextFieldKt$BasicTextField$7$1 extends v implements l<TextFieldValue, l0> {
    final /* synthetic */ l<TextFieldValue, l0> $onValueChange;
    final /* synthetic */ TextFieldValue $value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BasicTextFieldKt$BasicTextField$7$1(TextFieldValue textFieldValue, l<? super TextFieldValue, l0> lVar) {
        super(1);
        this.$value = textFieldValue;
        this.$onValueChange = lVar;
    }

    public final void a(@NotNull TextFieldValue it) {
        t.j(it, "it");
        if (t.e(this.$value, it)) {
            return;
        }
        this.$onValueChange.invoke(it);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(TextFieldValue textFieldValue) {
        a(textFieldValue);
        return l0.INSTANCE;
    }
}
