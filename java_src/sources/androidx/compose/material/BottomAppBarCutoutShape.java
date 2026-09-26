package androidx.compose.material;

import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes6.dex */
final class BottomAppBarCutoutShape implements Shape {

    @NotNull
    private final Shape cutoutShape;

    @NotNull
    private final FabPlacement fabPlacement;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BottomAppBarCutoutShape)) {
            return false;
        }
        BottomAppBarCutoutShape bottomAppBarCutoutShape = (BottomAppBarCutoutShape) obj;
        return t.e(this.cutoutShape, bottomAppBarCutoutShape.cutoutShape) && t.e(this.fabPlacement, bottomAppBarCutoutShape.fabPlacement);
    }

    public int hashCode() {
        return (this.cutoutShape.hashCode() * 31) + this.fabPlacement.hashCode();
    }

    @NotNull
    public String toString() {
        return "BottomAppBarCutoutShape(cutoutShape=" + this.cutoutShape + ", fabPlacement=" + this.fabPlacement + ')';
    }

    public BottomAppBarCutoutShape(@NotNull Shape cutoutShape, @NotNull FabPlacement fabPlacement) {
        t.j(cutoutShape, "cutoutShape");
        t.j(fabPlacement, "fabPlacement");
        this.cutoutShape = cutoutShape;
        this.fabPlacement = fabPlacement;
    }

    private final void c(Path path, float f, float f6, float f7, float f10, float f11) {
        float f12 = -((float) Math.sqrt((f7 * f7) - (f11 * f11)));
        float f13 = f7 + f12;
        float f14 = f + f13;
        float f15 = f6 - f13;
        u<Float, Float> uVarL = AppBarKt.l(f12 - 1.0f, f11, f7);
        float fFloatValue = uVarL.a().floatValue() + f7;
        float fFloatValue2 = uVarL.b().floatValue() - f11;
        path.moveTo(f14 - f10, 0.0f);
        path.h(f14 - 1.0f, 0.0f, f + fFloatValue, fFloatValue2);
        path.lineTo(f6 - fFloatValue, fFloatValue2);
        path.h(f15 + 1.0f, 0.0f, f10 + f15, 0.0f);
        path.close();
    }

    @Override // androidx.compose.ui.graphics.Shape
    @NotNull
    public Outline a(long j6, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        t.j(layoutDirection, "layoutDirection");
        t.j(density, "density");
        Path pathA = AndroidPath_androidKt.a();
        pathA.j(new Rect(0.0f, 0.0f, Size.i(j6), Size.g(j6)));
        Path pathA2 = AndroidPath_androidKt.a();
        b(pathA2, layoutDirection, density);
        pathA2.k(pathA, pathA2, PathOperation.Companion.a());
        return new Outline.Generic(pathA2);
    }

    private final void b(Path path, LayoutDirection layoutDirection, Density density) {
        float fH0 = density.H0(AppBarKt.BottomAppBarCutoutOffset);
        float f = 2 * fH0;
        long jA = SizeKt.a(this.fabPlacement.c() + f, this.fabPlacement.a() + f);
        float fB = this.fabPlacement.b() - fH0;
        float fI = fB + Size.i(jA);
        float fG = Size.g(jA) / 2.0f;
        OutlineKt.b(path, this.cutoutShape.a(jA, layoutDirection, density));
        path.d(OffsetKt.a(fB, -fG));
        if (t.e(this.cutoutShape, RoundedCornerShapeKt.d())) {
            c(path, fB, fI, fG, density.H0(AppBarKt.BottomAppBarRoundedEdgeRadius), 0.0f);
        }
    }
}
