package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
@ExperimentalMaterialApi
public final class FractionalThreshold implements ThresholdConfig {
    private final float fraction;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FractionalThreshold) && t.e(Float.valueOf(this.fraction), Float.valueOf(((FractionalThreshold) obj).fraction));
    }

    public int hashCode() {
        return Float.floatToIntBits(this.fraction);
    }

    @NotNull
    public String toString() {
        return "FractionalThreshold(fraction=" + this.fraction + ')';
    }

    @Override // androidx.compose.material.ThresholdConfig
    public float a(@NotNull Density density, float f, float f6) {
        t.j(density, "<this>");
        return MathHelpersKt.a(f, f6, this.fraction);
    }

    public FractionalThreshold(float f) {
        this.fraction = f;
    }
}
