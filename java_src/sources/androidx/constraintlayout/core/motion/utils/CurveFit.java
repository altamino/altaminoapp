package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes10.dex */
public abstract class CurveFit {
    public static final int CONSTANT = 2;
    public static final int LINEAR = 1;
    public static final int SPLINE = 0;

    static class Constant extends CurveFit {
        double mTime;
        double[] mValue;

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void e(double d, float[] fArr) {
            int i10 = 0;
            while (true) {
                double[] dArr = this.mValue;
                if (i10 >= dArr.length) {
                    return;
                }
                fArr[i10] = (float) dArr[i10];
                i10++;
            }
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double f(double d, int i10) {
            return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void g(double d, double[] dArr) {
            for (int i10 = 0; i10 < this.mValue.length; i10++) {
                dArr[i10] = 0.0d;
            }
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double[] h() {
            return new double[]{this.mTime};
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public double c(double d, int i10) {
            return this.mValue[i10];
        }

        @Override // androidx.constraintlayout.core.motion.utils.CurveFit
        public void d(double d, double[] dArr) {
            double[] dArr2 = this.mValue;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        Constant(double d, double[] dArr) {
            this.mTime = d;
            this.mValue = dArr;
        }
    }

    public static CurveFit a(int i10, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i10 = 2;
        }
        if (i10 != 0) {
            return i10 != 2 ? new LinearCurveFit(dArr, dArr2) : new Constant(dArr[0], dArr2[0]);
        }
        return new MonotonicCurveFit(dArr, dArr2);
    }

    public abstract double c(double d, int i10);

    public abstract void d(double d, double[] dArr);

    public abstract void e(double d, float[] fArr);

    public abstract double f(double d, int i10);

    public abstract void g(double d, double[] dArr);

    public abstract double[] h();

    public static CurveFit b(int[] iArr, double[] dArr, double[][] dArr2) {
        return new ArcCurveFit(iArr, dArr, dArr2);
    }
}
