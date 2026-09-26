package androidx.compose.ui.focus;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class FocusEventModifierKt {

    @NotNull
    private static final ProvidableModifierLocal<FocusEventModifierLocal> ModifierLocalFocusEvent = ModifierLocalKt.a(FocusEventModifierKt$ModifierLocalFocusEvent$1.INSTANCE);

    @NotNull
    public static final ProvidableModifierLocal<FocusEventModifierLocal> a() {
        return ModifierLocalFocusEvent;
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull l<? super FocusState, l0> onFocusEvent) {
        t.j(modifier, "<this>");
        t.j(onFocusEvent, "onFocusEvent");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new FocusEventModifierKt$onFocusEvent$$inlined$debugInspectorInfo$1(onFocusEvent) : InspectableValueKt.a(), new FocusEventModifierKt$onFocusEvent$2(onFocusEvent));
    }
}
