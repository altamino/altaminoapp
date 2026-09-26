package androidx.compose.ui.platform;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class InspectionModeKt {

    @NotNull
    private static final ProvidableCompositionLocal<Boolean> LocalInspectionMode = CompositionLocalKt.e(InspectionModeKt$LocalInspectionMode$1.INSTANCE);

    @NotNull
    public static final ProvidableCompositionLocal<Boolean> a() {
        return LocalInspectionMode;
    }
}
