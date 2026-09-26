package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class TextFieldValueKt {
    @NotNull
    public static final AnnotatedString a(@NotNull TextFieldValue textFieldValue) {
        t.j(textFieldValue, "<this>");
        return textFieldValue.e().k(textFieldValue.g());
    }

    @NotNull
    public static final AnnotatedString b(@NotNull TextFieldValue textFieldValue, int i10) {
        t.j(textFieldValue, "<this>");
        return textFieldValue.e().subSequence(TextRange.k(textFieldValue.g()), Math.min(TextRange.k(textFieldValue.g()) + i10, textFieldValue.h().length()));
    }

    @NotNull
    public static final AnnotatedString c(@NotNull TextFieldValue textFieldValue, int i10) {
        t.j(textFieldValue, "<this>");
        return textFieldValue.e().subSequence(Math.max(0, TextRange.l(textFieldValue.g()) - i10), TextRange.l(textFieldValue.g()));
    }
}
