package androidx.compose.ui.focus;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class FocusChangedModifierKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull l<? super FocusState, l0> onFocusChanged) {
        t.j(modifier, "<this>");
        t.j(onFocusChanged, "onFocusChanged");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new FocusChangedModifierKt$onFocusChanged$$inlined$debugInspectorInfo$1(onFocusChanged) : InspectableValueKt.a(), new FocusChangedModifierKt$onFocusChanged$2(onFocusChanged));
    }
}
