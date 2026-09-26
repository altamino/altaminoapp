package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class CanvasDrawScopeKt {

    @NotNull
    private static final Density DefaultDensity = DensityKt.a(1.0f, 1.0f);

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawTransform c(final DrawContext drawContext) {
        return new DrawTransform() { // from class: androidx.compose.ui.graphics.drawscope.CanvasDrawScopeKt$asDrawTransform$1
            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void a(float f, float f6, float f7, float f10, int i10) {
                drawContext.a().a(f, f6, f7, f10, i10);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void b(float f, float f6) {
                drawContext.a().b(f, f6);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void c(@NotNull Path path, int i10) {
                t.j(path, "path");
                drawContext.a().c(path, i10);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void d(float f, float f6, long j6) {
                Canvas canvasA = drawContext.a();
                canvasA.b(Offset.m(j6), Offset.n(j6));
                canvasA.k(f, f6);
                canvasA.b(-Offset.m(j6), -Offset.n(j6));
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void e(float f, long j6) {
                Canvas canvasA = drawContext.a();
                canvasA.b(Offset.m(j6), Offset.n(j6));
                canvasA.q(f);
                canvasA.b(-Offset.m(j6), -Offset.n(j6));
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void f(float f, float f6, float f7, float f10) {
                Canvas canvasA = drawContext.a();
                DrawContext drawContext2 = drawContext;
                long jA = SizeKt.a(Size.i(h()) - (f7 + f), Size.g(h()) - (f10 + f6));
                if (Size.i(jA) < 0.0f || Size.g(jA) < 0.0f) {
                    throw new IllegalArgumentException("Width and height must be greater than or equal to zero".toString());
                }
                drawContext2.b(jA);
                canvasA.b(f, f6);
            }

            @Override // androidx.compose.ui.graphics.drawscope.DrawTransform
            public void g(@NotNull float[] matrix) {
                t.j(matrix, "matrix");
                drawContext.a().s(matrix);
            }

            public long h() {
                return drawContext.c();
            }
        };
    }
}
