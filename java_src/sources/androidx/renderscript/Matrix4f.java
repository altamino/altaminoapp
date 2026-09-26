package androidx.renderscript;

/* JADX INFO: loaded from: classes9.dex */
public class Matrix4f {
    final float[] mMat;

    public Matrix4f() {
        this.mMat = new float[16];
        loadIdentity();
    }

    public float[] getArray() {
        return this.mMat;
    }

    public void load(Matrix4f matrix4f) {
        float[] array = matrix4f.getArray();
        float[] fArr = this.mMat;
        System.arraycopy(array, 0, fArr, 0, fArr.length);
    }

    public void loadMultiply(Matrix4f matrix4f, Matrix4f matrix4f2) {
        for (int i10 = 0; i10 < 4; i10++) {
            float f = 0.0f;
            float f6 = 0.0f;
            float f7 = 0.0f;
            float f10 = 0.0f;
            for (int i11 = 0; i11 < 4; i11++) {
                float f11 = matrix4f2.get(i10, i11);
                f += matrix4f.get(i11, 0) * f11;
                f6 += matrix4f.get(i11, 1) * f11;
                f7 += matrix4f.get(i11, 2) * f11;
                f10 += matrix4f.get(i11, 3) * f11;
            }
            set(i10, 0, f);
            set(i10, 1, f6);
            set(i10, 2, f7);
            set(i10, 3, f10);
        }
    }

    public void loadOrthoWindow(int i10, int i11) {
        loadOrtho(0.0f, i10, i11, 0.0f, -1.0f, 1.0f);
    }

    public void loadPerspective(float f, float f6, float f7, float f10) {
        float fTan = f7 * ((float) Math.tan((float) ((((double) f) * 3.141592653589793d) / 360.0d)));
        float f11 = -fTan;
        loadFrustum(f11 * f6, fTan * f6, f11, fTan, f7, f10);
    }

    public void transpose() {
        int i10 = 0;
        while (i10 < 3) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < 4; i12++) {
                float[] fArr = this.mMat;
                int i13 = (i10 * 4) + i12;
                float f = fArr[i13];
                int i14 = (i12 * 4) + i10;
                fArr[i13] = fArr[i14];
                fArr[i14] = f;
            }
            i10 = i11;
        }
    }

    private float computeCofactor(int i10, int i11) {
        int i12 = (i10 + 1) % 4;
        int i13 = (i10 + 2) % 4;
        int i14 = (i10 + 3) % 4;
        float[] fArr = this.mMat;
        int i15 = ((i11 + 1) % 4) * 4;
        float f = fArr[i12 + i15];
        int i16 = ((i11 + 2) % 4) * 4;
        float f6 = fArr[i13 + i16];
        int i17 = ((i11 + 3) % 4) * 4;
        float f7 = fArr[i14 + i17];
        float f10 = fArr[i13 + i17];
        float f11 = fArr[i14 + i16];
        float f12 = fArr[i16 + i12];
        float f13 = fArr[i13 + i15];
        float f14 = fArr[i14 + i15];
        float f15 = ((f * ((f6 * f7) - (f10 * f11))) - (f12 * ((f7 * f13) - (f10 * f14)))) + (fArr[i12 + i17] * ((f13 * f11) - (f6 * f14)));
        return ((i10 + i11) & 1) != 0 ? -f15 : f15;
    }

    public float get(int i10, int i11) {
        return this.mMat[(i10 * 4) + i11];
    }

    public boolean inverse() {
        Matrix4f matrix4f = new Matrix4f();
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                matrix4f.mMat[(i10 * 4) + i11] = computeCofactor(i10, i11);
            }
        }
        float[] fArr = this.mMat;
        float f = fArr[0];
        float[] fArr2 = matrix4f.mMat;
        float f6 = (f * fArr2[0]) + (fArr[4] * fArr2[1]) + (fArr[8] * fArr2[2]) + (fArr[12] * fArr2[3]);
        if (Math.abs(f6) < 1.0E-6d) {
            return false;
        }
        float f7 = 1.0f / f6;
        for (int i12 = 0; i12 < 16; i12++) {
            this.mMat[i12] = matrix4f.mMat[i12] * f7;
        }
        return true;
    }

    public boolean inverseTranspose() {
        Matrix4f matrix4f = new Matrix4f();
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                matrix4f.mMat[(i11 * 4) + i10] = computeCofactor(i10, i11);
            }
        }
        float[] fArr = this.mMat;
        float f = fArr[0];
        float[] fArr2 = matrix4f.mMat;
        float f6 = (f * fArr2[0]) + (fArr[4] * fArr2[4]) + (fArr[8] * fArr2[8]) + (fArr[12] * fArr2[12]);
        if (Math.abs(f6) < 1.0E-6d) {
            return false;
        }
        float f7 = 1.0f / f6;
        for (int i12 = 0; i12 < 16; i12++) {
            this.mMat[i12] = matrix4f.mMat[i12] * f7;
        }
        return true;
    }

    public void load(Matrix3f matrix3f) {
        float[] fArr = this.mMat;
        float[] fArr2 = matrix3f.mMat;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        fArr[2] = fArr2[2];
        fArr[3] = 0.0f;
        fArr[4] = fArr2[3];
        fArr[5] = fArr2[4];
        fArr[6] = fArr2[5];
        fArr[7] = 0.0f;
        fArr[8] = fArr2[6];
        fArr[9] = fArr2[7];
        fArr[10] = fArr2[8];
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
    }

    public void loadIdentity() {
        float[] fArr = this.mMat;
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 1.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
    }

    public void loadProjectionNormalized(int i10, int i11) {
        Matrix4f matrix4f = new Matrix4f();
        Matrix4f matrix4f2 = new Matrix4f();
        if (i10 > i11) {
            float f = i10 / i11;
            matrix4f.loadFrustum(-f, f, -1.0f, 1.0f, 1.0f, 100.0f);
        } else {
            float f6 = i11 / i10;
            matrix4f.loadFrustum(-1.0f, 1.0f, -f6, f6, 1.0f, 100.0f);
        }
        matrix4f2.loadRotate(180.0f, 0.0f, 1.0f, 0.0f);
        matrix4f.loadMultiply(matrix4f, matrix4f2);
        matrix4f2.loadScale(-2.0f, 2.0f, 1.0f);
        matrix4f.loadMultiply(matrix4f, matrix4f2);
        matrix4f2.loadTranslate(0.0f, 0.0f, 2.0f);
        matrix4f.loadMultiply(matrix4f, matrix4f2);
        load(matrix4f);
    }

    public void loadRotate(float f, float f6, float f7, float f10) {
        float[] fArr = this.mMat;
        fArr[3] = 0.0f;
        fArr[7] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
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
        float[] fArr2 = this.mMat;
        fArr2[0] = (f6 * f6 * f12) + fCos;
        float f16 = f6 * f7 * f12;
        fArr2[4] = f16 - f15;
        float f17 = f10 * f6 * f12;
        fArr2[8] = f17 + f14;
        fArr2[1] = f16 + f15;
        fArr2[5] = (f7 * f7 * f12) + fCos;
        float f18 = f7 * f10 * f12;
        fArr2[9] = f18 - f13;
        fArr2[2] = f17 - f14;
        fArr2[6] = f18 + f13;
        fArr2[10] = (f10 * f10 * f12) + fCos;
    }

    public void multiply(Matrix4f matrix4f) {
        Matrix4f matrix4f2 = new Matrix4f();
        matrix4f2.loadMultiply(this, matrix4f);
        load(matrix4f2);
    }

    public void rotate(float f, float f6, float f7, float f10) {
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.loadRotate(f, f6, f7, f10);
        multiply(matrix4f);
    }

    public void scale(float f, float f6, float f7) {
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.loadScale(f, f6, f7);
        multiply(matrix4f);
    }

    public void set(int i10, int i11, float f) {
        this.mMat[(i10 * 4) + i11] = f;
    }

    public void translate(float f, float f6, float f7) {
        Matrix4f matrix4f = new Matrix4f();
        matrix4f.loadTranslate(f, f6, f7);
        multiply(matrix4f);
    }

    public Matrix4f(float[] fArr) {
        float[] fArr2 = new float[16];
        this.mMat = fArr2;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
    }

    public void loadFrustum(float f, float f6, float f7, float f10, float f11, float f12) {
        loadIdentity();
        float[] fArr = this.mMat;
        float f13 = 2.0f * f11;
        float f14 = f6 - f;
        fArr[0] = f13 / f14;
        float f15 = f10 - f7;
        fArr[5] = f13 / f15;
        fArr[8] = (f6 + f) / f14;
        fArr[9] = (f10 + f7) / f15;
        float f16 = f12 - f11;
        fArr[10] = (-(f12 + f11)) / f16;
        fArr[11] = -1.0f;
        fArr[14] = ((f12 * (-2.0f)) * f11) / f16;
        fArr[15] = 0.0f;
    }

    public void loadOrtho(float f, float f6, float f7, float f10, float f11, float f12) {
        loadIdentity();
        float[] fArr = this.mMat;
        float f13 = f6 - f;
        fArr[0] = 2.0f / f13;
        float f14 = f10 - f7;
        fArr[5] = 2.0f / f14;
        float f15 = f12 - f11;
        fArr[10] = (-2.0f) / f15;
        fArr[12] = (-(f6 + f)) / f13;
        fArr[13] = (-(f10 + f7)) / f14;
        fArr[14] = (-(f12 + f11)) / f15;
    }

    public void loadScale(float f, float f6, float f7) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[0] = f;
        fArr[5] = f6;
        fArr[10] = f7;
    }

    public void loadTranslate(float f, float f6, float f7) {
        loadIdentity();
        float[] fArr = this.mMat;
        fArr[12] = f;
        fArr[13] = f6;
        fArr[14] = f7;
    }
}
