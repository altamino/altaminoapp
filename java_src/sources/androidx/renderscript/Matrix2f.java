package androidx.renderscript;

/* JADX INFO: loaded from: classes9.dex */
public class Matrix2f {
    final float[] mMat;

    public Matrix2f() {
        this.mMat = new float[4];
        loadIdentity();
    }

    public float[] getArray() {
        return this.mMat;
    }

    public void loadMultiply(Matrix2f matrix2f, Matrix2f matrix2f2) {
        for (int i10 = 0; i10 < 2; i10++) {
            float f = 0.0f;
            float f6 = 0.0f;
            for (int i11 = 0; i11 < 2; i11++) {
                float f7 = matrix2f2.get(i10, i11);
                f += matrix2f.get(i11, 0) * f7;
                f6 += matrix2f.get(i11, 1) * f7;
            }
            set(i10, 0, f);
            set(i10, 1, f6);
        }
    }

    public float get(int i10, int i11) {
        return this.mMat[(i10 * 2) + i11];
    }

    public void loadIdentity() {
        float[] fArr = this.mMat;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 1.0f;
    }

    public void multiply(Matrix2f matrix2f) {
        Matrix2f matrix2f2 = new Matrix2f();
        matrix2f2.loadMultiply(this, matrix2f);
        load(matrix2f2);
    }

    public void rotate(float f) {
        Matrix2f matrix2f = new Matrix2f();
        matrix2f.loadRotate(f);
        multiply(matrix2f);
    }

    public void scale(float f, float f6) {
        Matrix2f matrix2f = new Matrix2f();
        matrix2f.loadScale(f, f6);
        multiply(matrix2f);
    }

    public void set(int i10, int i11, float f) {
        this.mMat[(i10 * 2) + i11] = f;
    }

    public void transpose() {
        float[] fArr = this.mMat;
        float f = fArr[1];
        fArr[1] = fArr[2];
        fArr[2] = f;
    }

    public Matrix2f(float[] fArr) {
        float[] fArr2 = new float[4];
        this.mMat = fArr2;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
    }

    public void load(Matrix2f matrix2f) {
        float[] array = matrix2f.getArray();
        float[] fArr = this.mMat;
        System.arraycopy(array, 0, fArr, 0, fArr.length);
    }

    public void loadRotate(float f) {
        double d = f * 0.017453292f;
        float fCos = (float) Math.cos(d);
        float fSin = (float) Math.sin(d);
        float[] fArr = this.mMat;
        fArr[0] = fCos;
        fArr[1] = -fSin;
        fArr[2] = fSin;
        fArr[3] = fCos;
    }

    public void loadScale(float f, float f6) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[0] = f;
        fArr[3] = f6;
    }
}
