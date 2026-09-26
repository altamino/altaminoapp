package androidx.compose.ui.input.key;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class KeyInputModifierKt {

    @NotNull
    private static final ProvidableModifierLocal<KeyInputModifier> ModifierLocalKeyInput = ModifierLocalKt.a(KeyInputModifierKt$ModifierLocalKeyInput$1.INSTANCE);

    @NotNull
    public static final ProvidableModifierLocal<KeyInputModifier> a() {
        return ModifierLocalKeyInput;
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull l<? super KeyEvent, Boolean> onKeyEvent) {
        t.j(modifier, "<this>");
        t.j(onKeyEvent, "onKeyEvent");
        l keyInputModifierKt$onKeyEvent$$inlined$debugInspectorInfo$1 = InspectableValueKt.c() ? new KeyInputModifierKt$onKeyEvent$$inlined$debugInspectorInfo$1(onKeyEvent) : InspectableValueKt.a();
        Modifier.Companion companion = Modifier.Companion;
        return InspectableValueKt.b(modifier, keyInputModifierKt$onKeyEvent$$inlined$debugInspectorInfo$1, new KeyInputModifier(onKeyEvent, null));
    }

    @NotNull
    public static final Modifier c(@NotNull Modifier modifier, @NotNull l<? super KeyEvent, Boolean> onPreviewKeyEvent) {
        t.j(modifier, "<this>");
        t.j(onPreviewKeyEvent, "onPreviewKeyEvent");
        l keyInputModifierKt$onPreviewKeyEvent$$inlined$debugInspectorInfo$1 = InspectableValueKt.c() ? new KeyInputModifierKt$onPreviewKeyEvent$$inlined$debugInspectorInfo$1(onPreviewKeyEvent) : InspectableValueKt.a();
        Modifier.Companion companion = Modifier.Companion;
        return InspectableValueKt.b(modifier, keyInputModifierKt$onPreviewKeyEvent$$inlined$debugInspectorInfo$1, new KeyInputModifier(null, onPreviewKeyEvent));
    }
}
