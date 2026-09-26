package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@Stable
final class AddedInsets implements WindowInsets {

    @NotNull
    private final WindowInsets first;

    @NotNull
    private final WindowInsets second;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddedInsets)) {
            return false;
        }
        AddedInsets addedInsets = (AddedInsets) obj;
        return t.e(addedInsets.first, this.first) && t.e(addedInsets.second, this.second);
    }

    public AddedInsets(@NotNull WindowInsets first, @NotNull WindowInsets second) {
        t.j(first, "first");
        t.j(second, "second");
        this.first = first;
        this.second = second;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int a(@NotNull Density density) {
        t.j(density, "density");
        return this.first.a(density) + this.second.a(density);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int b(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return this.first.b(density, layoutDirection) + this.second.b(density, layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int c(@NotNull Density density) {
        t.j(density, "density");
        return this.first.c(density) + this.second.c(density);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int d(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return this.first.d(density, layoutDirection) + this.second.d(density, layoutDirection);
    }

    public int hashCode() {
        return this.first.hashCode() + (this.second.hashCode() * 31);
    }

    @NotNull
    public String toString() {
        return '(' + this.first + " + " + this.second + ')';
    }
}
