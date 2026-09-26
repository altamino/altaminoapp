package androidx.compose.ui.unit;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
final class DensityImpl implements Density {
    private final float density;
    private final float fontScale;

    @Override // androidx.compose.ui.unit.Density
    public float E0() {
        return this.fontScale;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float H0(float f) {
        return a.h(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ int L0(long j6) {
        return a.a(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float P(float f) {
        return a.d(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ long X(long j6) {
        return a.i(this, j6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DensityImpl)) {
            return false;
        }
        DensityImpl densityImpl = (DensityImpl) obj;
        return t.e(Float.valueOf(getDensity()), Float.valueOf(densityImpl.getDensity())) && t.e(Float.valueOf(E0()), Float.valueOf(densityImpl.E0()));
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.density;
    }

    public int hashCode() {
        return (Float.floatToIntBits(getDensity()) * 31) + Float.floatToIntBits(E0());
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float j(int i10) {
        return a.e(this, i10);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ int j0(float f) {
        return a.b(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float p0(long j6) {
        return a.g(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ long q(long j6) {
        return a.f(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float s(long j6) {
        return a.c(this, j6);
    }

    @NotNull
    public String toString() {
        return "DensityImpl(density=" + getDensity() + ", fontScale=" + E0() + ')';
    }

    public DensityImpl(float f, float f6) {
        this.density = f;
        this.fontScale = f6;
    }
}
