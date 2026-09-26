package androidx.compose.ui.node;

import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class LayoutNode$measureScope$1 implements MeasureScope, Density {
    final /* synthetic */ LayoutNode this$0;

    @Override // androidx.compose.ui.layout.MeasureScope
    public /* synthetic */ MeasureResult G0(int i10, int i11, Map map, l lVar) {
        return MeasureScope.CC.a(this, i10, i11, map, lVar);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float H0(float f) {
        return androidx.compose.ui.unit.a.h(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ int L0(long j6) {
        return androidx.compose.ui.unit.a.a(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float P(float f) {
        return androidx.compose.ui.unit.a.d(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ long X(long j6) {
        return androidx.compose.ui.unit.a.i(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float j(int i10) {
        return androidx.compose.ui.unit.a.e(this, i10);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ int j0(float f) {
        return androidx.compose.ui.unit.a.b(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float p0(long j6) {
        return androidx.compose.ui.unit.a.g(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ long q(long j6) {
        return androidx.compose.ui.unit.a.f(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float s(long j6) {
        return androidx.compose.ui.unit.a.c(this, j6);
    }

    LayoutNode$measureScope$1(LayoutNode layoutNode) {
        this.this$0 = layoutNode;
    }

    @Override // androidx.compose.ui.unit.Density
    public float E0() {
        return this.this$0.T().E0();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.this$0.T().getDensity();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.this$0.getLayoutDirection();
    }
}
