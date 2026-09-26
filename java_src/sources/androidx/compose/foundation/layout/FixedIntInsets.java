package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
final class FixedIntInsets implements WindowInsets {
    private final int bottomVal;
    private final int leftVal;
    private final int rightVal;
    private final int topVal;

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int a(@NotNull Density density) {
        t.j(density, "density");
        return this.topVal;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int b(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return this.rightVal;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int c(@NotNull Density density) {
        t.j(density, "density");
        return this.bottomVal;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public int d(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        return this.leftVal;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FixedIntInsets)) {
            return false;
        }
        FixedIntInsets fixedIntInsets = (FixedIntInsets) obj;
        return this.leftVal == fixedIntInsets.leftVal && this.topVal == fixedIntInsets.topVal && this.rightVal == fixedIntInsets.rightVal && this.bottomVal == fixedIntInsets.bottomVal;
    }

    public int hashCode() {
        return (((((this.leftVal * 31) + this.topVal) * 31) + this.rightVal) * 31) + this.bottomVal;
    }

    @NotNull
    public String toString() {
        return "Insets(left=" + this.leftVal + ", top=" + this.topVal + ", right=" + this.rightVal + ", bottom=" + this.bottomVal + ')';
    }

    public FixedIntInsets(int i10, int i11, int i12, int i13) {
        this.leftVal = i10;
        this.topVal = i11;
        this.rightVal = i12;
        this.bottomVal = i13;
    }
}
