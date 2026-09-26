package androidx.compose.foundation.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Stable
public final class AndroidWindowInsets implements WindowInsets {

    @NotNull
    private final MutableState insets$delegate;

    @NotNull
    private final MutableState isVisible$delegate;

    @NotNull
    private final String name;
    private final int type;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AndroidWindowInsets) && this.type == ((AndroidWindowInsets) obj).type;
    }

    public final int f() {
        return this.type;
    }

    public int hashCode() {
        return this.type;
    }

    public AndroidWindowInsets(int i10, @NotNull String name) {
        t.j(name, "name");
        this.type = i10;
        this.name = name;
        this.insets$delegate = SnapshotStateKt__SnapshotStateKt.e(Insets.NONE, null, 2, null);
        this.isVisible$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.TRUE, null, 2, null);
    }

    private final void i(boolean z6) {
        this.isVisible$delegate.setValue(Boolean.valueOf(z6));
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int a(@NotNull Density density) {
        t.j(density, "density");
        return e().top;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int b(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return e().right;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int c(@NotNull Density density) {
        t.j(density, "density");
        return e().bottom;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int d(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return e().left;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final Insets e() {
        return (Insets) this.insets$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean g() {
        return ((Boolean) this.isVisible$delegate.getValue()).booleanValue();
    }

    public final void h(@NotNull Insets insets) {
        t.j(insets, "<set-?>");
        this.insets$delegate.setValue(insets);
    }

    public final void j(@NotNull WindowInsetsCompat windowInsetsCompat, int i10) {
        t.j(windowInsetsCompat, "windowInsetsCompat");
        if (i10 == 0 || (i10 & this.type) != 0) {
            h(windowInsetsCompat.f(this.type));
            i(windowInsetsCompat.r(this.type));
        }
    }

    @NotNull
    public String toString() {
        return this.name + '(' + e().left + ", " + e().top + ", " + e().right + ", " + e().bottom + ')';
    }
}
