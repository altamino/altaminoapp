package androidx.transition;

import android.graphics.Matrix;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes6.dex */
class MatrixUtils {
    static final Matrix IDENTITY_MATRIX = new Matrix() { // from class: androidx.transition.MatrixUtils.1
        @Override // android.graphics.Matrix
        public boolean postRotate(float f, float f6, float f7) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postScale(float f, float f6, float f7, float f10) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postSkew(float f, float f6, float f7, float f10) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preRotate(float f, float f6, float f7) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preScale(float f, float f6, float f7, float f10) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preSkew(float f, float f6, float f7, float f10) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public void setRotate(float f, float f6, float f7) {
            a();
        }

        @Override // android.graphics.Matrix
        public void setScale(float f, float f6, float f7, float f10) {
            a();
        }

        @Override // android.graphics.Matrix
        public void setSinCos(float f, float f6, float f7, float f10) {
            a();
        }

        @Override // android.graphics.Matrix
        public void setSkew(float f, float f6, float f7, float f10) {
            a();
        }

        void a() {
            throw new IllegalStateException("Matrix can not be modified");
        }

        @Override // android.graphics.Matrix
        public boolean postRotate(float f) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postScale(float f, float f6) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postSkew(float f, float f6) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preRotate(float f) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preScale(float f, float f6) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preSkew(float f, float f6) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public void setRotate(float f) {
            a();
        }

        @Override // android.graphics.Matrix
        public void setScale(float f, float f6) {
            a();
        }

        @Override // android.graphics.Matrix
        public void setSinCos(float f, float f6) {
            a();
        }

        @Override // android.graphics.Matrix
        public void setSkew(float f, float f6) {
            a();
        }

        @Override // android.graphics.Matrix
        public boolean postConcat(Matrix matrix) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean postTranslate(float f, float f6) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preConcat(Matrix matrix) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean preTranslate(float f, float f6) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public void reset() {
            a();
        }

        @Override // android.graphics.Matrix
        public void set(Matrix matrix) {
            a();
        }

        @Override // android.graphics.Matrix
        public boolean setConcat(Matrix matrix, Matrix matrix2) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean setPolyToPoly(float[] fArr, int i10, float[] fArr2, int i11, int i12) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public boolean setRectToRect(RectF rectF, RectF rectF2, Matrix.ScaleToFit scaleToFit) {
            a();
            return false;
        }

        @Override // android.graphics.Matrix
        public void setTranslate(float f, float f6) {
            a();
        }

        @Override // android.graphics.Matrix
        public void setValues(float[] fArr) {
            a();
        }
    };

    private MatrixUtils() {
    }
}
