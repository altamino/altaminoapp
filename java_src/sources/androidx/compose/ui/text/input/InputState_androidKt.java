package androidx.compose.ui.text.input;

import android.view.inputmethod.ExtractedText;
import androidx.compose.ui.text.TextRange;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class InputState_androidKt {
    @NotNull
    public static final ExtractedText a(@NotNull TextFieldValue textFieldValue) {
        t.j(textFieldValue, "<this>");
        ExtractedText extractedText = new ExtractedText();
        extractedText.text = textFieldValue.h();
        extractedText.startOffset = 0;
        extractedText.partialEndOffset = textFieldValue.h().length();
        extractedText.partialStartOffset = -1;
        extractedText.selectionStart = TextRange.l(textFieldValue.g());
        extractedText.selectionEnd = TextRange.k(textFieldValue.g());
        extractedText.flags = !u.O(textFieldValue.h(), '\n', false, 2, null) ? 1 : 0;
        return extractedText;
    }
}
