package androidx.compose.material;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@StabilityInferred
public final class BottomNavigationDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final BottomNavigationDefaults INSTANCE = new BottomNavigationDefaults();
    private static final float Elevation = Dp.f(8);

    public final float a() {
        return Elevation;
    }

    private BottomNavigationDefaults() {
    }
}
