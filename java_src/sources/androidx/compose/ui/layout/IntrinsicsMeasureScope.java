package androidx.compose.ui.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class IntrinsicsMeasureScope implements MeasureScope, Density {
    private final /* synthetic */ Density $$delegate_0;

    @NotNull
    private final LayoutDirection layoutDirection;

    @Override // androidx.compose.ui.unit.Density
    public float E0() {
        return this.$$delegate_0.E0();
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public /* synthetic */ MeasureResult G0(int i10, int i11, Map map, l lVar) {
        return MeasureScope.CC.a(this, i10, i11, map, lVar);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float H0(float f) {
        return this.$$delegate_0.H0(f);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int L0(long j6) {
        return this.$$delegate_0.L0(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float P(float f) {
        return this.$$delegate_0.P(f);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public long X(long j6) {
        return this.$$delegate_0.X(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float j(int i10) {
        return this.$$delegate_0.j(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int j0(float f) {
        return this.$$delegate_0.j0(f);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float p0(long j6) {
        return this.$$delegate_0.p0(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public long q(long j6) {
        return this.$$delegate_0.q(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float s(long j6) {
        return this.$$delegate_0.s(j6);
    }

    public IntrinsicsMeasureScope(@NotNull Density density, @NotNull LayoutDirection layoutDirection) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        this.layoutDirection = layoutDirection;
        this.$$delegate_0 = density;
    }
}
