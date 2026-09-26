package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Stable
final class ExcludeInsets implements WindowInsets {

    @NotNull
    private final WindowInsets excluded;

    @NotNull
    private final WindowInsets included;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExcludeInsets)) {
            return false;
        }
        ExcludeInsets excludeInsets = (ExcludeInsets) obj;
        return t.e(excludeInsets.included, this.included) && t.e(excludeInsets.excluded, this.excluded);
    }

    public ExcludeInsets(@NotNull WindowInsets included, @NotNull WindowInsets excluded) {
        t.j(included, "included");
        t.j(excluded, "excluded");
        this.included = included;
        this.excluded = excluded;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int a(@NotNull Density density) {
        t.j(density, "density");
        return j8.o.e(this.included.a(density) - this.excluded.a(density), 0);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int b(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return j8.o.e(this.included.b(density, layoutDirection) - this.excluded.b(density, layoutDirection), 0);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int c(@NotNull Density density) {
        t.j(density, "density");
        return j8.o.e(this.included.c(density) - this.excluded.c(density), 0);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int d(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return j8.o.e(this.included.d(density, layoutDirection) - this.excluded.d(density, layoutDirection), 0);
    }

    public int hashCode() {
        return (this.included.hashCode() * 31) + this.excluded.hashCode();
    }

    @NotNull
    public String toString() {
        return '(' + this.included + " - " + this.excluded + ')';
    }
}
