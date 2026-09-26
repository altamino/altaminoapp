package androidx.compose.foundation.selection;

import androidx.compose.foundation.Indication;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.state.ToggleableStateKt;
import e8.a;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class ToggleableKt {
    @NotNull
    public static final Modifier b(@NotNull Modifier toggleable, boolean z6, @NotNull MutableInteractionSource interactionSource, @Nullable Indication indication, boolean z10, @Nullable Role role, @NotNull l<? super Boolean, l0> onValueChange) {
        t.j(toggleable, "$this$toggleable");
        t.j(interactionSource, "interactionSource");
        t.j(onValueChange, "onValueChange");
        return InspectableValueKt.b(toggleable, InspectableValueKt.c() ? new ToggleableKt$toggleableO2vRcR0$$inlined$debugInspectorInfo$1(z6, interactionSource, indication, z10, role, onValueChange) : InspectableValueKt.a(), c(Modifier.Companion, ToggleableStateKt.a(z6), z10, role, interactionSource, indication, new ToggleableKt$toggleable$4$1(onValueChange, z6)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier c(Modifier modifier, ToggleableState toggleableState, boolean z6, Role role, MutableInteractionSource mutableInteractionSource, Indication indication, a<l0> aVar) {
        return ComposedModifierKt.d(modifier, null, new ToggleableKt$toggleableImpl$1(aVar, z6, mutableInteractionSource, indication, role, toggleableState), 1, null);
    }

    @NotNull
    public static final Modifier d(@NotNull Modifier triStateToggleable, @NotNull ToggleableState state, @NotNull MutableInteractionSource interactionSource, @Nullable Indication indication, boolean z6, @Nullable Role role, @NotNull a<l0> onClick) {
        t.j(triStateToggleable, "$this$triStateToggleable");
        t.j(state, "state");
        t.j(interactionSource, "interactionSource");
        t.j(onClick, "onClick");
        return InspectableValueKt.b(triStateToggleable, InspectableValueKt.c() ? new ToggleableKt$triStateToggleableO2vRcR0$$inlined$debugInspectorInfo$1(state, z6, role, interactionSource, indication, onClick) : InspectableValueKt.a(), c(Modifier.Companion, state, z6, role, interactionSource, indication, onClick));
    }
}
