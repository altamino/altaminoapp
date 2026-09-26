package androidx.compose.foundation.text.selection;

import android.annotation.SuppressLint;
import android.view.KeyEvent;
import androidx.compose.foundation.MagnifierStyle;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class SelectionManager_androidKt {
    public static final boolean a(@NotNull KeyEvent keyEvent) {
        t.j(keyEvent, "keyEvent");
        return false;
    }

    @SuppressLint({"ModifierInspectorInfo"})
    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull SelectionManager manager) {
        t.j(modifier, "<this>");
        t.j(manager, "manager");
        return !MagnifierStyle.Companion.b().i() ? modifier : ComposedModifierKt.d(modifier, null, new SelectionManager_androidKt$selectionMagnifier$1(manager), 1, null);
    }
}
