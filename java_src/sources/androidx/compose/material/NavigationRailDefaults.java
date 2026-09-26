package androidx.compose.material;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
public final class NavigationRailDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final NavigationRailDefaults INSTANCE = new NavigationRailDefaults();
    private static final float Elevation = Dp.f(8);

    public final float a() {
        return Elevation;
    }

    private NavigationRailDefaults() {
    }
}
