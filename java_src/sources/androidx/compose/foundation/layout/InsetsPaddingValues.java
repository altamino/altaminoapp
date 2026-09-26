package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Stable
final class InsetsPaddingValues implements PaddingValues {

    @NotNull
    private final Density density;

    @NotNull
    private final WindowInsets insets;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InsetsPaddingValues)) {
            return false;
        }
        InsetsPaddingValues insetsPaddingValues = (InsetsPaddingValues) obj;
        return t.e(this.insets, insetsPaddingValues.insets) && t.e(this.density, insetsPaddingValues.density);
    }

    public InsetsPaddingValues(@NotNull WindowInsets insets, @NotNull Density density) {
        t.j(insets, "insets");
        t.j(density, "density");
        this.insets = insets;
        this.density = density;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public float a() {
        Density density = this.density;
        return density.j(this.insets.c(density));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public float b(@NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        Density density = this.density;
        return density.j(this.insets.d(density, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public float c(@NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        Density density = this.density;
        return density.j(this.insets.b(density, layoutDirection));
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public float d() {
        Density density = this.density;
        return density.j(this.insets.a(density));
    }

    public int hashCode() {
        return (this.insets.hashCode() * 31) + this.density.hashCode();
    }

    @NotNull
    public String toString() {
        return "InsetsPaddingValues(insets=" + this.insets + ", density=" + this.density + ')';
    }
}
