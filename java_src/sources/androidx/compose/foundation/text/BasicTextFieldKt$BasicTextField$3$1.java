package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.input.TextFieldValue;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BasicTextFieldKt$BasicTextField$3$1 extends v implements l<TextFieldValue, l0> {
    final /* synthetic */ MutableState<String> $lastTextValue$delegate;
    final /* synthetic */ l<String, l0> $onValueChange;
    final /* synthetic */ MutableState<TextFieldValue> $textFieldValueState$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BasicTextFieldKt$BasicTextField$3$1(l<? super String, l0> lVar, MutableState<TextFieldValue> mutableState, MutableState<String> mutableState2) {
        super(1);
        this.$onValueChange = lVar;
        this.$textFieldValueState$delegate = mutableState;
        this.$lastTextValue$delegate = mutableState2;
    }

    public final void a(@NotNull TextFieldValue newTextFieldValueState) {
        t.j(newTextFieldValueState, "newTextFieldValueState");
        BasicTextFieldKt.d(this.$textFieldValueState$delegate, newTextFieldValueState);
        boolean z6 = !t.e(BasicTextFieldKt.e(this.$lastTextValue$delegate), newTextFieldValueState.h());
        BasicTextFieldKt.f(this.$lastTextValue$delegate, newTextFieldValueState.h());
        if (z6) {
            this.$onValueChange.invoke(newTextFieldValueState.h());
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(TextFieldValue textFieldValue) {
        a(textFieldValue);
        return l0.INSTANCE;
    }
}
