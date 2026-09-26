package androidx.compose.foundation.selection;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class SelectableGroupKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier) {
        t.j(modifier, "<this>");
        return SemanticsModifierKt.c(modifier, false, SelectableGroupKt$selectableGroup$1.INSTANCE, 1, null);
    }
}
