package androidx.compose.ui.focus;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class FocusRequesterModifierKt {

    @NotNull
    private static final ProvidableModifierLocal<FocusRequesterModifierLocal> ModifierLocalFocusRequester = ModifierLocalKt.a(FocusRequesterModifierKt$ModifierLocalFocusRequester$1.INSTANCE);

    @NotNull
    public static final ProvidableModifierLocal<FocusRequesterModifierLocal> b() {
        return ModifierLocalFocusRequester;
    }

    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull FocusRequester focusRequester) {
        t.j(modifier, "<this>");
        t.j(focusRequester, "focusRequester");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new FocusRequesterModifierKt$focusRequester$$inlined$debugInspectorInfo$1(focusRequester) : InspectableValueKt.a(), new FocusRequesterModifierKt$focusRequester$2(focusRequester));
    }
}
