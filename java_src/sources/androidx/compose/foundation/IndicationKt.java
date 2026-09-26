package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class IndicationKt {

    @NotNull
    private static final ProvidableCompositionLocal<Indication> LocalIndication = CompositionLocalKt.e(IndicationKt$LocalIndication$1.INSTANCE);

    @NotNull
    public static final ProvidableCompositionLocal<Indication> a() {
        return LocalIndication;
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull InteractionSource interactionSource, @Nullable Indication indication) {
        t.j(modifier, "<this>");
        t.j(interactionSource, "interactionSource");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new IndicationKt$indication$$inlined$debugInspectorInfo$1(indication, interactionSource) : InspectableValueKt.a(), new IndicationKt$indication$2(indication, interactionSource));
    }
}
