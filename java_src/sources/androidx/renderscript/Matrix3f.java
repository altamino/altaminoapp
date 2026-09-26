package androidx.renderscript;

/* JADX INFO: loaded from: classes9.dex */
public class Matrix3f {
    final float[] mMat;

    public Matrix3f() {
        this.mMat = new float[9];
        loadIdentity();
    }

    public float[] getArray() {
        return this.mMat;
    }

    public void loadMultiply(Matrix3f matrix3f, Matrix3f matrix3f2) {
        for (int i10 = 0; i10 < 3; i10++) {
            float f = 0.0f;
            float f6 = 0.0f;
            float f7 = 0.0f;
            for (int i11 = 0; i11 < 3; i11++) {
                float f10 = matrix3f2.get(i10, i11);
                f += matrix3f.get(i11, 0) * f10;
                f6 += matrix3f.get(i11, 1) * f10;
                f7 += matrix3f.get(i11, 2) * f10;
            }
            set(i10, 0, f);
            set(i10, 1, f6);
            set(i10, 2, f7);
        }
    }

    public void loadRotate(float f, float f6, float f7, float f10) {
        double d = f * 0.017453292f;
        float fCos = (float) Math.cos(d);
        float fSin = (float) Math.sin(d);
        float fSqrt = (float) Math.sqrt((f6 * f6) + (f7 * f7) + (f10 * f10));
        if (fSqrt == 1.0f) {
            float f11 = 1.0f / fSqrt;
            f6 *= f11;
            f7 *= f11;
            f10 *= f11;
        }
        float f12 = 1.0f - fCos;
        float f13 = f6 * fSin;
        float f14 = f7 * fSin;
        float f15 = fSin * f10;
        float[] fArr = this.mMat;
        fArr[0] = (f6 * f6 * f12) + fCos;
        float f16 = f6 * f7 * f12;
        fArr[3] = f16 - f15;
        float f17 = f10 * f6 * f12;
        fArr[6] = f17 + f14;
        fArr[1] = f16 + f15;
        fArr[4] = (f7 * f7 * f12) + fCos;
        float f18 = f7 * f10 * f12;
        fArr[7] = f18 - f13;
        fArr[2] = f17 - f14;
        fArr[5] = f18 + f13;
        fArr[8] = (f10 * f10 * f12) + fCos;
    }

    public void loadScale(float f, float f6) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[0] = f;
        fArr[4] = f6;
    }

    public void rotate(float f, float f6, float f7, float f10) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadRotate(f, f6, f7, f10);
        multiply(matrix3f);
    }

    public void scale(float f, float f6) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadScale(f, f6);
        multiply(matrix3f);
    }

    public void transpose() {
        int i10 = 0;
        while (i10 < 2) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < 3; i12++) {
                float[] fArr = this.mMat;
                int i13 = (i10 * 3) + i12;
                float f = fArr[i13];
                int i14 = (i12 * 3) + i10;
                fArr[i13] = fArr[i14];
                fArr[i14] = f;
            }
            i10 = i11;
        }
    }

    public float get(int i10, int i11) {
        return this.mMat[(i10 * 3) + i11];
    }

    public void loadIdentity() {
        float[] fArr = this.mMat;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 1.0f;
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    public void multiply(Matrix3f matrix3f) {
        Matrix3f matrix3f2 = new Matrix3f();
        matrix3f2.loadMultiply(this, matrix3f);
        load(matrix3f2);
    }

    public void set(int i10, int i11, float f) {
        this.mMat[(i10 * 3) + i11] = f;
    }

    public void translate(float f, float f6) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadTranslate(f, f6);
        multiply(matrix3f);
    }

    public Matrix3f(float[] fArr) {
        float[] fArr2 = new float[9];
        this.mMat = fArr2;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
    }

    public void load(Matrix3f matrix3f) {
        float[] array = matrix3f.getArray();
        float[] fArr = this.mMat;
        System.arraycopy(array, 0, fArr, 0, fArr.length);
    }

    public void loadTranslate(float f, float f6) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[6] = f;
        fArr[7] = f6;
    }

    public void loadScale(float f, float f6, float f7) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[0] = f;
        fArr[4] = f6;
        fArr[8] = f7;
    }

    public void rotate(float f) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadRotate(f);
        multiply(matrix3f);
    }

    public void scale(float f, float f6, float f7) {
        Matrix3f matrix3f = new Matrix3f();
        matrix3f.loadScale(f, f6, f7);
        multiply(matrix3f);
    }

    public void loadRotate(float f) {
        loadIdentity();
        double d = f * 0.017453292f;
        float fCos = (float) Math.cos(d);
        float fSin = (float) Math.sin(d);
        float[] fArr = this.mMat;
        fArr[0] = fCos;
        fArr[1] = -fSin;
        fArr[3] = fSin;
        fArr[4] = fCos;
    }
}
