package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class TextFieldKeyInputKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull TextFieldState state, @NotNull TextFieldSelectionManager manager, @NotNull TextFieldValue value, @NotNull l<? super TextFieldValue, l0> onValueChange, boolean z6, boolean z10, @NotNull OffsetMapping offsetMapping, @NotNull UndoManager undoManager) {
        t.j(modifier, "<this>");
        t.j(state, "state");
        t.j(manager, "manager");
        t.j(value, "value");
        t.j(onValueChange, "onValueChange");
        t.j(offsetMapping, "offsetMapping");
        t.j(undoManager, "undoManager");
        return ComposedModifierKt.d(modifier, null, new TextFieldKeyInputKt$textFieldKeyInput$2(state, manager, value, z6, z10, offsetMapping, undoManager, onValueChange), 1, null);
    }
}
