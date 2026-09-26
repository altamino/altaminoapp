package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class ElevationOverlayKt {

    @NotNull
    private static final ProvidableCompositionLocal<ElevationOverlay> LocalElevationOverlay = CompositionLocalKt.e(ElevationOverlayKt$LocalElevationOverlay$1.INSTANCE);

    @NotNull
    private static final ProvidableCompositionLocal<Dp> LocalAbsoluteElevation = CompositionLocalKt.d(null, ElevationOverlayKt$LocalAbsoluteElevation$1.INSTANCE, 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ReadOnlyComposable
    public static final long b(long j6, float f, Composer composer, int i10) {
        return Color.l(ColorsKt.b(j6, composer, i10 & 14), ((((float) Math.log(f + 1)) * 4.5f) + 2.0f) / 100.0f, 0.0f, 0.0f, 0.0f, 14, null);
    }

    @NotNull
    public static final ProvidableCompositionLocal<Dp> c() {
        return LocalAbsoluteElevation;
    }

    @NotNull
    public static final ProvidableCompositionLocal<ElevationOverlay> d() {
        return LocalElevationOverlay;
    }
}
