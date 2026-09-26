package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class PointerIconKt {
    @Stable
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull PointerIcon icon, boolean z6) {
        t.j(modifier, "<this>");
        t.j(icon, "icon");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new PointerIconKt$pointerHoverIcon$$inlined$debugInspectorInfo$1(icon, z6) : InspectableValueKt.a(), new PointerIconKt$pointerHoverIcon$2(icon, z6));
    }

    public static /* synthetic */ Modifier b(Modifier modifier, PointerIcon pointerIcon, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return a(modifier, pointerIcon, z6);
    }
}
