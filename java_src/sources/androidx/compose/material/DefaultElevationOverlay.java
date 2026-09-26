package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class DefaultElevationOverlay implements ElevationOverlay {

    @NotNull
    public static final DefaultElevationOverlay INSTANCE = new DefaultElevationOverlay();

    @Override // androidx.compose.material.ElevationOverlay
    @Composable
    @ReadOnlyComposable
    public long a(long j6, float f, @Nullable Composer composer, int i10) {
        Colors colorsA = MaterialTheme.INSTANCE.a(composer, 6);
        if (Dp.e(f, Dp.f(0)) <= 0 || colorsA.o()) {
            return j6;
        }
        return ColorKt.g(ElevationOverlayKt.b(j6, f, composer, (i10 & 112) | (i10 & 14)), j6);
    }

    private DefaultElevationOverlay() {
    }
}
