package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.TextFieldValue;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class TextFieldKeyInputKt$textFieldKeyInput$1 extends v implements l<TextFieldValue, l0> {
    public static final TextFieldKeyInputKt$textFieldKeyInput$1 INSTANCE = new TextFieldKeyInputKt$textFieldKeyInput$1();

    TextFieldKeyInputKt$textFieldKeyInput$1() {
        super(1);
    }

    public final void a(@NotNull TextFieldValue it) {
        t.j(it, "it");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(TextFieldValue textFieldValue) {
        a(textFieldValue);
        return l0.INSTANCE;
    }
}
