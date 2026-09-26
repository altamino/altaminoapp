package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import j8.o;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public final class ResistanceConfig {
    private final float basis;
    private final float factorAtMax;
    private final float factorAtMin;

    public ResistanceConfig(float f, float f6, float f7) {
        this.basis = f;
        this.factorAtMin = f6;
        this.factorAtMax = f7;
    }

    public final float a(float f) {
        float f6 = f < 0.0f ? this.factorAtMin : this.factorAtMax;
        if (f6 == 0.0f) {
            return 0.0f;
        }
        return (this.basis / f6) * ((float) Math.sin((o.m(f / this.basis, -1.0f, 1.0f) * 3.1415927f) / 2));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResistanceConfig)) {
            return false;
        }
        ResistanceConfig resistanceConfig = (ResistanceConfig) obj;
        return this.basis == resistanceConfig.basis && this.factorAtMin == resistanceConfig.factorAtMin && this.factorAtMax == resistanceConfig.factorAtMax;
    }

    public /* synthetic */ ResistanceConfig(float f, float f6, float f7, int i10, k kVar) {
        this(f, (i10 & 2) != 0 ? 10.0f : f6, (i10 & 4) != 0 ? 10.0f : f7);
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.basis) * 31) + Float.floatToIntBits(this.factorAtMin)) * 31) + Float.floatToIntBits(this.factorAtMax);
    }

    @NotNull
    public String toString() {
        return "ResistanceConfig(basis=" + this.basis + ", factorAtMin=" + this.factorAtMin + ", factorAtMax=" + this.factorAtMax + ')';
    }
}
