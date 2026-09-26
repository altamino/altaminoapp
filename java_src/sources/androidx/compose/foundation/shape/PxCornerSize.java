package androidx.compose.foundation.shape;

import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class PxCornerSize implements CornerSize, InspectableValue {
    private final float size;

    @Override // androidx.compose.foundation.shape.CornerSize
    public float a(long j6, @NotNull Density density) {
        t.j(density, "density");
        return this.size;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PxCornerSize) && t.e(Float.valueOf(this.size), Float.valueOf(((PxCornerSize) obj).size));
    }

    public int hashCode() {
        return Float.floatToIntBits(this.size);
    }

    @NotNull
    public String toString() {
        return "CornerSize(size = " + this.size + ".px)";
    }

    public PxCornerSize(float f) {
        this.size = f;
    }
}
