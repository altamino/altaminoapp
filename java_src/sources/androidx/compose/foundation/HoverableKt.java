package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class HoverableKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull MutableInteractionSource interactionSource, boolean z6) {
        t.j(modifier, "<this>");
        t.j(interactionSource, "interactionSource");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new HoverableKt$hoverable$$inlined$debugInspectorInfo$1(interactionSource, z6) : InspectableValueKt.a(), new HoverableKt$hoverable$2(interactionSource, z6));
    }

    public static /* synthetic */ Modifier b(Modifier modifier, MutableInteractionSource mutableInteractionSource, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = true;
        }
        return a(modifier, mutableInteractionSource, z6);
    }
}
