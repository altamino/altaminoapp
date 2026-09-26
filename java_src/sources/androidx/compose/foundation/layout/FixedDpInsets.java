package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
final class FixedDpInsets implements WindowInsets {
    private final float bottomDp;
    private final float leftDp;
    private final float rightDp;
    private final float topDp;

    public /* synthetic */ FixedDpInsets(float f, float f6, float f7, float f10, kotlin.jvm.internal.k kVar) {
        this(f, f6, f7, f10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FixedDpInsets)) {
            return false;
        }
        FixedDpInsets fixedDpInsets = (FixedDpInsets) obj;
        return Dp.i(this.leftDp, fixedDpInsets.leftDp) && Dp.i(this.topDp, fixedDpInsets.topDp) && Dp.i(this.rightDp, fixedDpInsets.rightDp) && Dp.i(this.bottomDp, fixedDpInsets.bottomDp);
    }

    private FixedDpInsets(float f, float f6, float f7, float f10) {
        this.leftDp = f;
        this.topDp = f6;
        this.rightDp = f7;
        this.bottomDp = f10;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int a(@NotNull Density density) {
        t.j(density, "density");
        return density.j0(this.topDp);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int b(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return density.j0(this.rightDp);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int c(@NotNull Density density) {
        t.j(density, "density");
        return density.j0(this.bottomDp);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int d(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return density.j0(this.leftDp);
    }

    public int hashCode() {
        return (((((Dp.j(this.leftDp) * 31) + Dp.j(this.topDp)) * 31) + Dp.j(this.rightDp)) * 31) + Dp.j(this.bottomDp);
    }

    @NotNull
    public String toString() {
        return "Insets(left=" + ((Object) Dp.k(this.leftDp)) + ", top=" + ((Object) Dp.k(this.topDp)) + ", right=" + ((Object) Dp.k(this.rightDp)) + ", bottom=" + ((Object) Dp.k(this.bottomDp)) + ')';
    }
}
