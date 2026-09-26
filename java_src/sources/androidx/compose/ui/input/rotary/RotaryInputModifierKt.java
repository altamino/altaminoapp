package androidx.compose.ui.input.rotary;

import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.focus.FocusAwareEvent;
import androidx.compose.ui.input.focus.FocusAwareInputModifier;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class RotaryInputModifierKt {

    @NotNull
    private static final ProvidableModifierLocal<FocusAwareInputModifier<RotaryScrollEvent>> ModifierLocalRotaryScrollParent = ModifierLocalKt.a(RotaryInputModifierKt$ModifierLocalRotaryScrollParent$1.INSTANCE);

    @NotNull
    public static final ProvidableModifierLocal<FocusAwareInputModifier<RotaryScrollEvent>> b() {
        return ModifierLocalRotaryScrollParent;
    }

    @ExperimentalComposeUiApi
    private static final l<FocusAwareEvent, Boolean> a(l<? super RotaryScrollEvent, Boolean> lVar) {
        return new RotaryInputModifierKt$focusAwareCallback$1(lVar);
    }

    @ExperimentalComposeUiApi
    @NotNull
    public static final Modifier c(@NotNull Modifier modifier, @NotNull l<? super RotaryScrollEvent, Boolean> onRotaryScrollEvent) {
        t.j(modifier, "<this>");
        t.j(onRotaryScrollEvent, "onRotaryScrollEvent");
        l rotaryInputModifierKt$onRotaryScrollEvent$$inlined$debugInspectorInfo$1 = InspectableValueKt.c() ? new RotaryInputModifierKt$onRotaryScrollEvent$$inlined$debugInspectorInfo$1(onRotaryScrollEvent) : InspectableValueKt.a();
        Modifier.Companion companion = Modifier.Companion;
        return InspectableValueKt.b(modifier, rotaryInputModifierKt$onRotaryScrollEvent$$inlined$debugInspectorInfo$1, new FocusAwareInputModifier(a(onRotaryScrollEvent), null, ModifierLocalRotaryScrollParent));
    }
}
