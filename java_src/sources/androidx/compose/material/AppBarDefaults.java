package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
public final class AppBarDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final AppBarDefaults INSTANCE = new AppBarDefaults();
    private static final float TopAppBarElevation = Dp.f(4);
    private static final float BottomAppBarElevation = Dp.f(8);

    @NotNull
    private static final PaddingValues ContentPadding = PaddingKt.e(AppBarKt.AppBarHorizontalPadding, 0.0f, AppBarKt.AppBarHorizontalPadding, 0.0f, 10, null);

    public final float a() {
        return BottomAppBarElevation;
    }

    @NotNull
    public final PaddingValues b() {
        return ContentPadding;
    }

    public final float c() {
        return TopAppBarElevation;
    }

    private AppBarDefaults() {
    }
}
