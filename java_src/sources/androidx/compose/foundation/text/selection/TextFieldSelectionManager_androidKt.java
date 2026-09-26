package androidx.compose.foundation.text.selection;

import android.annotation.SuppressLint;
import androidx.compose.foundation.MagnifierStyle;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerEvent;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class TextFieldSelectionManager_androidKt {
    public static final boolean a(@NotNull PointerEvent pointerEvent) {
        t.j(pointerEvent, "<this>");
        return false;
    }

    @SuppressLint({"ModifierInspectorInfo"})
    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull TextFieldSelectionManager manager) {
        t.j(modifier, "<this>");
        t.j(manager, "manager");
        return !MagnifierStyle.Companion.b().i() ? modifier : ComposedModifierKt.d(modifier, null, new TextFieldSelectionManager_androidKt$textFieldMagnifier$1(manager), 1, null);
    }
}
