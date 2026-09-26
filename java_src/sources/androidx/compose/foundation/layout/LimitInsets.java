package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@Stable
final class LimitInsets implements WindowInsets {

    @NotNull
    private final WindowInsets insets;
    private final int sides;

    public /* synthetic */ LimitInsets(WindowInsets windowInsets, int i10, kotlin.jvm.internal.k kVar) {
        this(windowInsets, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LimitInsets)) {
            return false;
        }
        LimitInsets limitInsets = (LimitInsets) obj;
        return t.e(this.insets, limitInsets.insets) && WindowInsetsSides.m(this.sides, limitInsets.sides);
    }

    private LimitInsets(WindowInsets windowInsets, int i10) {
        this.insets = windowInsets;
        this.sides = i10;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int a(@NotNull Density density) {
        t.j(density, "density");
        if (WindowInsetsSides.n(this.sides, WindowInsetsSides.Companion.j())) {
            return this.insets.a(density);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int b(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        if (WindowInsetsSides.n(this.sides, layoutDirection == LayoutDirection.Ltr ? WindowInsetsSides.Companion.c() : WindowInsetsSides.Companion.d())) {
            return this.insets.b(density, layoutDirection);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int c(@NotNull Density density) {
        t.j(density, "density");
        if (WindowInsetsSides.n(this.sides, WindowInsetsSides.Companion.e())) {
            return this.insets.c(density);
        }
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int d(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        if (WindowInsetsSides.n(this.sides, layoutDirection == LayoutDirection.Ltr ? WindowInsetsSides.Companion.a() : WindowInsetsSides.Companion.b())) {
            return this.insets.d(density, layoutDirection);
        }
        return 0;
    }

    public int hashCode() {
        return (this.insets.hashCode() * 31) + WindowInsetsSides.o(this.sides);
    }

    @NotNull
    public String toString() {
        return '(' + this.insets + " only " + ((Object) WindowInsetsSides.q(this.sides)) + ')';
    }
}
