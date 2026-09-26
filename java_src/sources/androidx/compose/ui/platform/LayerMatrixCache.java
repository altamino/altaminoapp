package androidx.compose.ui.platform;

import android.graphics.Matrix;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class LayerMatrixCache<T> {

    @Nullable
    private Matrix androidMatrixCache;

    @NotNull
    private final e8.p<T, Matrix, w7.l0> getMatrix;

    @Nullable
    private float[] inverseMatrixCache;
    private boolean isDirty;
    private boolean isInverseDirty;
    private boolean isInverseValid;

    @Nullable
    private float[] matrixCache;

    @Nullable
    private Matrix previousAndroidMatrix;

    public final void c() {
        this.isDirty = true;
        this.isInverseDirty = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LayerMatrixCache(@NotNull e8.p<? super T, ? super Matrix, w7.l0> getMatrix) {
        kotlin.jvm.internal.t.j(getMatrix, "getMatrix");
        this.getMatrix = getMatrix;
        this.isDirty = true;
        this.isInverseDirty = true;
        this.isInverseValid = true;
    }

    @Nullable
    public final float[] a(T t5) {
        float[] fArrC = this.inverseMatrixCache;
        if (fArrC == null) {
            fArrC = androidx.compose.ui.graphics.Matrix.c(null, 1, null);
            this.inverseMatrixCache = fArrC;
        }
        if (this.isInverseDirty) {
            this.isInverseValid = InvertMatrixKt.a(b(t5), fArrC);
            this.isInverseDirty = false;
        }
        if (this.isInverseValid) {
            return fArrC;
        }
        return null;
    }

    @NotNull
    public final float[] b(T t5) {
        float[] fArrC = this.matrixCache;
        if (fArrC == null) {
            fArrC = androidx.compose.ui.graphics.Matrix.c(null, 1, null);
            this.matrixCache = fArrC;
        }
        if (!this.isDirty) {
            return fArrC;
        }
        Matrix matrix = this.androidMatrixCache;
        if (matrix == null) {
            matrix = new Matrix();
            this.androidMatrixCache = matrix;
        }
        this.getMatrix.invoke(t5, matrix);
        Matrix matrix2 = this.previousAndroidMatrix;
        if (matrix2 == null || !kotlin.jvm.internal.t.e(matrix, matrix2)) {
            AndroidMatrixConversions_androidKt.b(fArrC, matrix);
            this.androidMatrixCache = matrix2;
            this.previousAndroidMatrix = matrix;
        }
        this.isDirty = false;
        return fArrC;
    }
}
