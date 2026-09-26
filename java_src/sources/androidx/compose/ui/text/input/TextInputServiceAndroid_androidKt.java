package androidx.compose.ui.text.input;

import android.view.inputmethod.EditorInfo;
import androidx.compose.ui.text.TextRange;
import androidx.core.view.inputmethod.EditorInfoCompat;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class TextInputServiceAndroid_androidKt {

    @NotNull
    private static final String DEBUG_CLASS = "TextInputServiceAndroid";

    private static final boolean a(int i10, int i11) {
        return (i10 & i11) == i11;
    }

    public static final void b(@NotNull EditorInfo editorInfo, @NotNull ImeOptions imeOptions, @NotNull TextFieldValue textFieldValue) {
        t.j(editorInfo, "<this>");
        t.j(imeOptions, "imeOptions");
        t.j(textFieldValue, "textFieldValue");
        int iD = imeOptions.d();
        ImeAction.Companion companion = ImeAction.Companion;
        int i10 = 6;
        if (ImeAction.l(iD, companion.a())) {
            if (!imeOptions.f()) {
                i10 = 0;
            }
        } else if (ImeAction.l(iD, companion.e())) {
            i10 = 1;
        } else if (ImeAction.l(iD, companion.c())) {
            i10 = 2;
        } else if (ImeAction.l(iD, companion.d())) {
            i10 = 5;
        } else if (ImeAction.l(iD, companion.f())) {
            i10 = 7;
        } else if (ImeAction.l(iD, companion.g())) {
            i10 = 3;
        } else if (ImeAction.l(iD, companion.h())) {
            i10 = 4;
        } else if (!ImeAction.l(iD, companion.b())) {
            throw new IllegalStateException("invalid ImeAction".toString());
        }
        editorInfo.imeOptions = i10;
        int iE = imeOptions.e();
        KeyboardType.Companion companion2 = KeyboardType.Companion;
        if (KeyboardType.l(iE, companion2.h())) {
            editorInfo.inputType = 1;
        } else if (KeyboardType.l(iE, companion2.a())) {
            editorInfo.inputType = 1;
            editorInfo.imeOptions |= Integer.MIN_VALUE;
        } else if (KeyboardType.l(iE, companion2.d())) {
            editorInfo.inputType = 2;
        } else if (KeyboardType.l(iE, companion2.g())) {
            editorInfo.inputType = 3;
        } else if (KeyboardType.l(iE, companion2.i())) {
            editorInfo.inputType = 17;
        } else if (KeyboardType.l(iE, companion2.c())) {
            editorInfo.inputType = 33;
        } else if (KeyboardType.l(iE, companion2.f())) {
            editorInfo.inputType = 129;
        } else if (KeyboardType.l(iE, companion2.e())) {
            editorInfo.inputType = 18;
        } else {
            if (!KeyboardType.l(iE, companion2.b())) {
                throw new IllegalStateException("Invalid Keyboard Type".toString());
            }
            editorInfo.inputType = 8194;
        }
        if (!imeOptions.f() && a(editorInfo.inputType, 1)) {
            editorInfo.inputType |= 131072;
            if (ImeAction.l(imeOptions.d(), companion.a())) {
                editorInfo.imeOptions |= 1073741824;
            }
        }
        if (a(editorInfo.inputType, 1)) {
            int iC = imeOptions.c();
            KeyboardCapitalization.Companion companion3 = KeyboardCapitalization.Companion;
            if (KeyboardCapitalization.g(iC, companion3.a())) {
                editorInfo.inputType |= 4096;
            } else if (KeyboardCapitalization.g(iC, companion3.d())) {
                editorInfo.inputType |= 8192;
            } else if (KeyboardCapitalization.g(iC, companion3.c())) {
                editorInfo.inputType |= 16384;
            }
            if (imeOptions.b()) {
                editorInfo.inputType |= 32768;
            }
        }
        editorInfo.initialSelStart = TextRange.n(textFieldValue.g());
        editorInfo.initialSelEnd = TextRange.i(textFieldValue.g());
        EditorInfoCompat.f(editorInfo, textFieldValue.h());
        editorInfo.imeOptions |= 33554432;
    }
}
