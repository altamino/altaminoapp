package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
public final class DrawerDefaults {
    public static final int $stable = 0;
    public static final float ScrimOpacity = 0.32f;

    @NotNull
    public static final DrawerDefaults INSTANCE = new DrawerDefaults();
    private static final float Elevation = Dp.f(16);

    public final float a() {
        return Elevation;
    }

    private DrawerDefaults() {
    }

    @Composable
    public final long b(@Nullable Composer composer, int i10) {
        composer.G(617225966);
        long jL = Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.32f, 0.0f, 0.0f, 0.0f, 14, null);
        composer.Q();
        return jL;
    }
}
