package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class TouchTargetKt {

    @NotNull
    private static final ProvidableCompositionLocal<Boolean> LocalMinimumTouchTargetEnforcement = CompositionLocalKt.e(TouchTargetKt$LocalMinimumTouchTargetEnforcement$1.INSTANCE);

    @ExperimentalMaterialApi
    @NotNull
    public static final ProvidableCompositionLocal<Boolean> a() {
        return LocalMinimumTouchTargetEnforcement;
    }

    @NotNull
    public static final Modifier b(@NotNull Modifier modifier) {
        t.j(modifier, "<this>");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new TouchTargetKt$minimumTouchTargetSize$$inlined$debugInspectorInfo$1() : InspectableValueKt.a(), TouchTargetKt$minimumTouchTargetSize$2.INSTANCE);
    }
}
