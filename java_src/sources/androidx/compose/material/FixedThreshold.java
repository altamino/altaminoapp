package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
@ExperimentalMaterialApi
public final class FixedThreshold implements ThresholdConfig {
    private final float offset;

    public /* synthetic */ FixedThreshold(float f, k kVar) {
        this(f);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FixedThreshold) && Dp.i(this.offset, ((FixedThreshold) obj).offset);
    }

    public int hashCode() {
        return Dp.j(this.offset);
    }

    @NotNull
    public String toString() {
        return "FixedThreshold(offset=" + ((Object) Dp.k(this.offset)) + ')';
    }

    private FixedThreshold(float f) {
        this.offset = f;
    }

    @Override // androidx.compose.material.ThresholdConfig
    public float a(@NotNull Density density, float f, float f6) {
        t.j(density, "<this>");
        return f + (density.H0(this.offset) * Math.signum(f6 - f));
    }
}
