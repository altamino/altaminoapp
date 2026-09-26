package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.Matrix;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class CalculateMatrixToWindowApi21 implements CalculateMatrixToWindow {

    @NotNull
    private final int[] tmpLocation = new int[2];

    @NotNull
    private final float[] tmpMatrix = Matrix.c(null, 1, null);

    private final void b(float[] fArr, android.graphics.Matrix matrix) {
        AndroidMatrixConversions_androidKt.b(this.tmpMatrix, matrix);
        AndroidComposeView_androidKt.g(fArr, this.tmpMatrix);
    }

    private final void c(float[] fArr, float f, float f6) {
        Matrix.h(this.tmpMatrix);
        Matrix.m(this.tmpMatrix, f, f6, 0.0f, 4, null);
        AndroidComposeView_androidKt.g(fArr, this.tmpMatrix);
    }

    @Override // androidx.compose.ui.platform.CalculateMatrixToWindow
    public void a(@NotNull View view, @NotNull float[] matrix) {
        kotlin.jvm.internal.t.j(view, "view");
        kotlin.jvm.internal.t.j(matrix, "matrix");
        Matrix.h(matrix);
        d(view, matrix);
    }

    private final void d(View view, float[] fArr) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            d((View) parent, fArr);
            c(fArr, -view.getScrollX(), -view.getScrollY());
            c(fArr, view.getLeft(), view.getTop());
        } else {
            int[] iArr = this.tmpLocation;
            view.getLocationInWindow(iArr);
            c(fArr, -view.getScrollX(), -view.getScrollY());
            c(fArr, iArr[0], iArr[1]);
        }
        android.graphics.Matrix viewMatrix = view.getMatrix();
        if (!viewMatrix.isIdentity()) {
            kotlin.jvm.internal.t.i(viewMatrix, "viewMatrix");
            b(fArr, viewMatrix);
        }
    }
}
