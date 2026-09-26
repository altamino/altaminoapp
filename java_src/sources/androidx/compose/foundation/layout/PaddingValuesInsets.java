package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@Stable
final class PaddingValuesInsets implements WindowInsets {

    @NotNull
    private final PaddingValues paddingValues;

    public PaddingValuesInsets(@NotNull PaddingValues paddingValues) {
        t.j(paddingValues, "paddingValues");
        this.paddingValues = paddingValues;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int a(@NotNull Density density) {
        t.j(density, "density");
        return density.j0(this.paddingValues.d());
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int b(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return density.j0(this.paddingValues.c(layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int c(@NotNull Density density) {
        t.j(density, "density");
        return density.j0(this.paddingValues.a());
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int d(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return density.j0(this.paddingValues.b(layoutDirection));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PaddingValuesInsets) {
            return t.e(((PaddingValuesInsets) obj).paddingValues, this.paddingValues);
        }
        return false;
    }

    public int hashCode() {
        return this.paddingValues.hashCode();
    }

    @NotNull
    public String toString() {
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        return "PaddingValues(" + ((Object) Dp.k(this.paddingValues.b(layoutDirection))) + ", " + ((Object) Dp.k(this.paddingValues.d())) + ", " + ((Object) Dp.k(this.paddingValues.c(layoutDirection))) + ", " + ((Object) Dp.k(this.paddingValues.a())) + ')';
    }
}
