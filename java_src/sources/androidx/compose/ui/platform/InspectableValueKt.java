package androidx.compose.ui.platform;

import androidx.compose.ui.Modifier;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class InspectableValueKt {

    @NotNull
    private static final e8.l<InspectorInfo, w7.l0> NoInspectorInfo = InspectableValueKt$NoInspectorInfo$1.INSTANCE;
    private static boolean isDebugInspectorInfoEnabled;

    @NotNull
    public static final e8.l<InspectorInfo, w7.l0> a() {
        return NoInspectorInfo;
    }

    public static final boolean c() {
        return isDebugInspectorInfoEnabled;
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier, @NotNull e8.l<? super InspectorInfo, w7.l0> inspectorInfo, @NotNull Modifier wrapped) {
        kotlin.jvm.internal.t.j(modifier, "<this>");
        kotlin.jvm.internal.t.j(inspectorInfo, "inspectorInfo");
        kotlin.jvm.internal.t.j(wrapped, "wrapped");
        InspectableModifier inspectableModifier = new InspectableModifier(inspectorInfo);
        return modifier.B(inspectableModifier).B(wrapped).B(inspectableModifier.a());
    }
}
