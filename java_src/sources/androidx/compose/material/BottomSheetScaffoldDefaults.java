package androidx.compose.material;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
public final class BottomSheetScaffoldDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final BottomSheetScaffoldDefaults INSTANCE = new BottomSheetScaffoldDefaults();
    private static final float SheetElevation = Dp.f(8);
    private static final float SheetPeekHeight = Dp.f(56);

    public final float a() {
        return SheetElevation;
    }

    public final float b() {
        return SheetPeekHeight;
    }

    private BottomSheetScaffoldDefaults() {
    }
}
