package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class MenuDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final MenuDefaults INSTANCE = new MenuDefaults();

    @NotNull
    private static final PaddingValues DropdownMenuItemContentPadding = PaddingKt.b(MenuKt.DropdownMenuItemHorizontalPadding, Dp.f(0));

    @NotNull
    public final PaddingValues a() {
        return DropdownMenuItemContentPadding;
    }

    private MenuDefaults() {
    }
}
