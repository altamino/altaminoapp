package androidx.compose.foundation.selection;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import e8.a;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class SelectableKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier selectable, boolean z6, @NotNull MutableInteractionSource interactionSource, @Nullable Indication indication, boolean z10, @Nullable Role role, @NotNull a<l0> onClick) {
        t.j(selectable, "$this$selectable");
        t.j(interactionSource, "interactionSource");
        t.j(onClick, "onClick");
        return InspectableValueKt.b(selectable, InspectableValueKt.c() ? new SelectableKt$selectableO2vRcR0$$inlined$debugInspectorInfo$1(z6, interactionSource, indication, z10, role, onClick) : InspectableValueKt.a(), SemanticsModifierKt.c(ClickableKt.c(Modifier.Companion, interactionSource, indication, z10, null, role, onClick, 8, null), false, new SelectableKt$selectable$4$1(z6), 1, null));
    }
}
