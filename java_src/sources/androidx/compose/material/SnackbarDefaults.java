package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class SnackbarDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final SnackbarDefaults INSTANCE = new SnackbarDefaults();
    private static final float SnackbarOverlayAlpha = 0.8f;

    private SnackbarDefaults() {
    }

    @Composable
    public final long a(@Nullable Composer composer, int i10) {
        composer.G(1630911716);
        MaterialTheme materialTheme = MaterialTheme.INSTANCE;
        long jG = ColorKt.g(Color.l(materialTheme.a(composer, 6).i(), 0.8f, 0.0f, 0.0f, 0.0f, 14, null), materialTheme.a(composer, 6).n());
        composer.Q();
        return jG;
    }

    @Composable
    public final long b(@Nullable Composer composer, int i10) {
        long jK;
        composer.G(-810329402);
        Colors colorsA = MaterialTheme.INSTANCE.a(composer, 6);
        if (colorsA.o()) {
            jK = ColorKt.g(Color.l(colorsA.n(), 0.6f, 0.0f, 0.0f, 0.0f, 14, null), colorsA.j());
        } else {
            jK = colorsA.k();
        }
        composer.Q();
        return jK;
    }
}
