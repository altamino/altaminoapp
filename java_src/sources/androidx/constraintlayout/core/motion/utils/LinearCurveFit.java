package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: loaded from: classes10.dex */
public class LinearCurveFit extends CurveFit {
    private static final String TAG = "LinearCurveFit";
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;
    private double[] mT;
    private double mTotalLength;
    private double[][] mY;

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] h() {
        return this.mT;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double c(double d, int i10) {
        double d2;
        double d6;
        double dF;
        double[] dArr = this.mT;
        int length = dArr.length;
        int i11 = 0;
        if (this.mExtrapolate) {
            double d7 = dArr[0];
            if (d <= d7) {
                d2 = this.mY[0][i10];
                d6 = d - d7;
                dF = f(d7, i10);
            } else {
                int i12 = length - 1;
                double d10 = dArr[i12];
                if (d >= d10) {
                    d2 = this.mY[i12][i10];
                    d6 = d - d10;
                    dF = f(d10, i10);
                }
            }
            return d2 + (d6 * dF);
        }
        if (d <= dArr[0]) {
            return this.mY[0][i10];
        }
        int i13 = length - 1;
        if (d >= dArr[i13]) {
            return this.mY[i13][i10];
        }
        while (i11 < length - 1) {
            double[] dArr2 = this.mT;
            double d11 = dArr2[i11];
            if (d == d11) {
                return this.mY[i11][i10];
            }
            int i14 = i11 + 1;
            double d12 = dArr2[i14];
            if (d < d12) {
                double d13 = (d - d11) / (d12 - d11);
                double[][] dArr3 = this.mY;
                return (dArr3[i11][i10] * (1.0d - d13)) + (dArr3[i14][i10] * d13);
            }
            i11 = i14;
        }
        return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void d(double d, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int i10 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            double d2 = dArr2[0];
            if (d <= d2) {
                g(d2, this.mSlopeTemp);
                for (int i11 = 0; i11 < length2; i11++) {
                    dArr[i11] = this.mY[0][i11] + ((d - this.mT[0]) * this.mSlopeTemp[i11]);
                }
                return;
            }
            int i12 = length - 1;
            double d6 = dArr2[i12];
            if (d >= d6) {
                g(d6, this.mSlopeTemp);
                while (i10 < length2) {
                    dArr[i10] = this.mY[i12][i10] + ((d - this.mT[i12]) * this.mSlopeTemp[i10]);
                    i10++;
                }
                return;
            }
        } else {
            if (d <= dArr2[0]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    dArr[i13] = this.mY[0][i13];
                }
                return;
            }
            int i14 = length - 1;
            if (d >= dArr2[i14]) {
                while (i10 < length2) {
                    dArr[i10] = this.mY[i14][i10];
                    i10++;
                }
                return;
            }
        }
        int i15 = 0;
        while (i15 < length - 1) {
            if (d == this.mT[i15]) {
                for (int i16 = 0; i16 < length2; i16++) {
                    dArr[i16] = this.mY[i15][i16];
                }
            }
            double[] dArr3 = this.mT;
            int i17 = i15 + 1;
            double d7 = dArr3[i17];
            if (d < d7) {
                double d10 = dArr3[i15];
                double d11 = (d - d10) / (d7 - d10);
                while (i10 < length2) {
                    double[][] dArr4 = this.mY;
                    dArr[i10] = (dArr4[i15][i10] * (1.0d - d11)) + (dArr4[i17][i10] * d11);
                    i10++;
                }
                return;
            }
            i15 = i17;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void e(double d, float[] fArr) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i10 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            double d2 = dArr[0];
            if (d <= d2) {
                g(d2, this.mSlopeTemp);
                for (int i11 = 0; i11 < length2; i11++) {
                    fArr[i11] = (float) (this.mY[0][i11] + ((d - this.mT[0]) * this.mSlopeTemp[i11]));
                }
                return;
            }
            int i12 = length - 1;
            double d6 = dArr[i12];
            if (d >= d6) {
                g(d6, this.mSlopeTemp);
                while (i10 < length2) {
                    fArr[i10] = (float) (this.mY[i12][i10] + ((d - this.mT[i12]) * this.mSlopeTemp[i10]));
                    i10++;
                }
                return;
            }
        } else {
            if (d <= dArr[0]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    fArr[i13] = (float) this.mY[0][i13];
                }
                return;
            }
            int i14 = length - 1;
            if (d >= dArr[i14]) {
                while (i10 < length2) {
                    fArr[i10] = (float) this.mY[i14][i10];
                    i10++;
                }
                return;
            }
        }
        int i15 = 0;
        while (i15 < length - 1) {
            if (d == this.mT[i15]) {
                for (int i16 = 0; i16 < length2; i16++) {
                    fArr[i16] = (float) this.mY[i15][i16];
                }
            }
            double[] dArr2 = this.mT;
            int i17 = i15 + 1;
            double d7 = dArr2[i17];
            if (d < d7) {
                double d10 = dArr2[i15];
                double d11 = (d - d10) / (d7 - d10);
                while (i10 < length2) {
                    double[][] dArr3 = this.mY;
                    fArr[i10] = (float) ((dArr3[i15][i10] * (1.0d - d11)) + (dArr3[i17][i10] * d11));
                    i10++;
                }
                return;
            }
            i15 = i17;
        }
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a A[PHI: r3
      0x000a: PHI (r3v4 double) = (r3v0 double), (r3v2 double) binds: [B:3:0x0008, B:6:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double f(double d, int i10) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i11 = 0;
        double d2 = dArr[0];
        if (d < d2) {
            d = d2;
        } else {
            d2 = dArr[length - 1];
            if (d >= d2) {
                d = d2;
            }
        }
        while (i11 < length - 1) {
            double[] dArr2 = this.mT;
            int i12 = i11 + 1;
            double d6 = dArr2[i12];
            if (d <= d6) {
                double d7 = d6 - dArr2[i11];
                double[][] dArr3 = this.mY;
                return (dArr3[i12][i10] - dArr3[i11][i10]) / d7;
            }
            i11 = i12;
        }
        return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000f A[PHI: r4
      0x000f: PHI (r4v5 double) = (r4v0 double), (r4v2 double) binds: [B:3:0x000d, B:6:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void g(double d, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int length2 = this.mY[0].length;
        double d2 = dArr2[0];
        if (d <= d2) {
            d = d2;
        } else {
            d2 = dArr2[length - 1];
            if (d >= d2) {
                d = d2;
            }
        }
        int i10 = 0;
        while (i10 < length - 1) {
            double[] dArr3 = this.mT;
            int i11 = i10 + 1;
            double d6 = dArr3[i11];
            if (d <= d6) {
                double d7 = d6 - dArr3[i10];
                for (int i12 = 0; i12 < length2; i12++) {
                    double[][] dArr4 = this.mY;
                    dArr[i12] = (dArr4[i11][i12] - dArr4[i10][i12]) / d7;
                }
                return;
            }
            i10 = i11;
        }
    }

    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        this.mTotalLength = Double.NaN;
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.mSlopeTemp = new double[length2];
        this.mT = dArr;
        this.mY = dArr2;
        if (length2 > 2) {
            int i10 = 0;
            double d = 0.0d;
            while (true) {
                double d2 = d;
                if (i10 < dArr.length) {
                    double d6 = dArr2[i10][0];
                    if (i10 > 0) {
                        Math.hypot(d6 - d, d6 - d2);
                    }
                    i10++;
                    d = d6;
                } else {
                    this.mTotalLength = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
                    return;
                }
            }
        }
    }
}
