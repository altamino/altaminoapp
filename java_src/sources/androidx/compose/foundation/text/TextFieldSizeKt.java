package androidx.compose.foundation.text;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class TextFieldSizeKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull TextStyle style) {
        t.j(modifier, "<this>");
        t.j(style, "style");
        return ComposedModifierKt.d(modifier, null, new TextFieldSizeKt$textFieldMinSize$1(style), 1, null);
    }
}
