package androidx.compose.foundation.shape;

import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class DpCornerSize implements CornerSize, InspectableValue {
    private final float size;

    public /* synthetic */ DpCornerSize(float f, k kVar) {
        this(f);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DpCornerSize) && Dp.i(this.size, ((DpCornerSize) obj).size);
    }

    public int hashCode() {
        return Dp.j(this.size);
    }

    private DpCornerSize(float f) {
        this.size = f;
    }

    @Override // androidx.compose.foundation.shape.CornerSize
    public float a(long j6, @NotNull Density density) {
        t.j(density, "density");
        return density.H0(this.size);
    }

    @NotNull
    public String toString() {
        return "CornerSize(size = " + this.size + ".dp)";
    }
}
