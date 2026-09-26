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
public final class ModalBottomSheetDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final ModalBottomSheetDefaults INSTANCE = new ModalBottomSheetDefaults();
    private static final float Elevation = Dp.f(16);

    public final float a() {
        return Elevation;
    }

    private ModalBottomSheetDefaults() {
    }

    @Composable
    public final long b(@Nullable Composer composer, int i10) {
        composer.G(-112572414);
        long jL = Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.32f, 0.0f, 0.0f, 0.0f, 14, null);
        composer.Q();
        return jL;
    }
}
