package androidx.compose.foundation.shape;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class PercentCornerSize implements CornerSize, InspectableValue {
    private final float percent;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PercentCornerSize) && t.e(Float.valueOf(this.percent), Float.valueOf(((PercentCornerSize) obj).percent));
    }

    public int hashCode() {
        return Float.floatToIntBits(this.percent);
    }

    @Override // androidx.compose.foundation.shape.CornerSize
    public float a(long j6, @NotNull Density density) {
        t.j(density, "density");
        return Size.h(j6) * (this.percent / 100.0f);
    }

    @NotNull
    public String toString() {
        return "CornerSize(size = " + this.percent + "%)";
    }

    public PercentCornerSize(float f) {
        this.percent = f;
        if (f >= 0.0f && f <= 100.0f) {
        } else {
            throw new IllegalArgumentException("The percent should be in the range of [0, 100]");
        }
    }
}
