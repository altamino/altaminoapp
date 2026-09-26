package androidx.compose.foundation;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class OverscrollConfigurationKt {

    @NotNull
    private static final ProvidableCompositionLocal<OverscrollConfiguration> LocalOverscrollConfiguration = CompositionLocalKt.d(null, OverscrollConfigurationKt$LocalOverscrollConfiguration$1.INSTANCE, 1, null);

    @ExperimentalFoundationApi
    @NotNull
    public static final ProvidableCompositionLocal<OverscrollConfiguration> a() {
        return LocalOverscrollConfiguration;
    }
}
