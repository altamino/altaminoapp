package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class MonotonicCurveFit extends CurveFit {
    private static final String TAG = "MonotonicCurveFit";
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;
    private double[] mT;
    private double[][] mTangent;
    private double[][] mY;

    private static double k(double d, double d2, double d6, double d7, double d10, double d11) {
        double d12 = d2 * d2;
        double d13 = d2 * 6.0d;
        double d14 = 3.0d * d;
        return ((((((((((-6.0d) * d12) * d7) + (d13 * d7)) + ((6.0d * d12) * d6)) - (d13 * d6)) + ((d14 * d11) * d12)) + ((d14 * d10) * d12)) - (((2.0d * d) * d11) * d2)) - (((4.0d * d) * d10) * d2)) + (d * d10);
    }

    private static double l(double d, double d2, double d6, double d7, double d10, double d11) {
        double d12 = d2 * d2;
        double d13 = d12 * d2;
        double d14 = 3.0d * d12;
        double d15 = ((((((-2.0d) * d13) * d7) + (d14 * d7)) + ((d13 * 2.0d) * d6)) - (d14 * d6)) + d6;
        double d16 = d * d11;
        double d17 = d * d10;
        return ((((d15 + (d16 * d13)) + (d13 * d17)) - (d16 * d12)) - (((d * 2.0d) * d10) * d12)) + (d17 * d2);
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] h() {
        return this.mT;
    }

    public MonotonicCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.mSlopeTemp = new double[length2];
        int i10 = length - 1;
        Class cls = Double.TYPE;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) cls, i10, length2);
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) cls, length, length2);
        for (int i11 = 0; i11 < length2; i11++) {
            int i12 = 0;
            while (i12 < i10) {
                int i13 = i12 + 1;
                double d = dArr[i13] - dArr[i12];
                double[] dArr5 = dArr3[i12];
                double d2 = (dArr2[i13][i11] - dArr2[i12][i11]) / d;
                dArr5[i11] = d2;
                if (i12 == 0) {
                    dArr4[i12][i11] = d2;
                } else {
                    dArr4[i12][i11] = (dArr3[i12 - 1][i11] + d2) * 0.5d;
                }
                i12 = i13;
            }
            dArr4[i10][i11] = dArr3[length - 2][i11];
        }
        for (int i14 = 0; i14 < i10; i14++) {
            for (int i15 = 0; i15 < length2; i15++) {
                double d6 = dArr3[i14][i15];
                if (d6 == com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                    dArr4[i14][i15] = 0.0d;
                    dArr4[i14 + 1][i15] = 0.0d;
                } else {
                    double d7 = dArr4[i14][i15] / d6;
                    int i16 = i14 + 1;
                    double d10 = dArr4[i16][i15] / d6;
                    double dHypot = Math.hypot(d7, d10);
                    if (dHypot > 9.0d) {
                        double d11 = 3.0d / dHypot;
                        double[] dArr6 = dArr4[i14];
                        double[] dArr7 = dArr3[i14];
                        dArr6[i15] = d7 * d11 * dArr7[i15];
                        dArr4[i16][i15] = d11 * d10 * dArr7[i15];
                    }
                }
            }
        }
        this.mT = dArr;
        this.mY = dArr2;
        this.mTangent = dArr4;
    }

    private static MonotonicCurveFit j(double[] dArr) {
        int length = (dArr.length * 3) - 2;
        int length2 = dArr.length - 1;
        double d = 1.0d / ((double) length2);
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, 1);
        double[] dArr3 = new double[length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double d2 = dArr[i10];
            int i11 = i10 + length2;
            dArr2[i11][0] = d2;
            double d6 = ((double) i10) * d;
            dArr3[i11] = d6;
            if (i10 > 0) {
                int i12 = (length2 * 2) + i10;
                dArr2[i12][0] = d2 + 1.0d;
                dArr3[i12] = d6 + 1.0d;
                int i13 = i10 - 1;
                dArr2[i13][0] = (d2 - 1.0d) - d;
                dArr3[i13] = (d6 - 1.0d) - d;
            }
        }
        return new MonotonicCurveFit(dArr3, dArr2);
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
                double d13 = d12 - d11;
                double d14 = (d - d11) / d13;
                double[][] dArr3 = this.mY;
                double d15 = dArr3[i11][i10];
                double d16 = dArr3[i14][i10];
                double[][] dArr4 = this.mTangent;
                return l(d13, d14, d15, d16, dArr4[i11][i10], dArr4[i14][i10]);
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
                double d11 = d7 - d10;
                double d12 = (d - d10) / d11;
                while (i10 < length2) {
                    double[][] dArr4 = this.mY;
                    double d13 = dArr4[i15][i10];
                    double d14 = dArr4[i17][i10];
                    double[][] dArr5 = this.mTangent;
                    dArr[i10] = l(d11, d12, d13, d14, dArr5[i15][i10], dArr5[i17][i10]);
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
                double d11 = d7 - d10;
                double d12 = (d - d10) / d11;
                while (i10 < length2) {
                    double[][] dArr3 = this.mY;
                    double d13 = dArr3[i15][i10];
                    double d14 = dArr3[i17][i10];
                    double[][] dArr4 = this.mTangent;
                    fArr[i10] = (float) l(d11, d12, d13, d14, dArr4[i15][i10], dArr4[i17][i10]);
                    i10++;
                }
                return;
            }
            i15 = i17;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double f(double d, int i10) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i11 = 0;
        double d2 = dArr[0];
        if (d >= d2) {
            d2 = dArr[length - 1];
            if (d < d2) {
                d2 = d;
            }
        }
        while (i11 < length - 1) {
            double[] dArr2 = this.mT;
            int i12 = i11 + 1;
            double d6 = dArr2[i12];
            if (d2 <= d6) {
                double d7 = dArr2[i11];
                double d10 = d6 - d7;
                double[][] dArr3 = this.mY;
                double d11 = dArr3[i11][i10];
                double d12 = dArr3[i12][i10];
                double[][] dArr4 = this.mTangent;
                return k(d10, (d2 - d7) / d10, d11, d12, dArr4[i11][i10], dArr4[i12][i10]) / d10;
            }
            i11 = i12;
        }
        return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void g(double d, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int length2 = this.mY[0].length;
        double d2 = dArr2[0];
        if (d > d2) {
            d2 = dArr2[length - 1];
            if (d < d2) {
                d2 = d;
            }
        }
        int i10 = 0;
        while (i10 < length - 1) {
            double[] dArr3 = this.mT;
            int i11 = i10 + 1;
            double d6 = dArr3[i11];
            if (d2 <= d6) {
                double d7 = dArr3[i10];
                double d10 = d6 - d7;
                double d11 = (d2 - d7) / d10;
                for (int i12 = 0; i12 < length2; i12++) {
                    double[][] dArr4 = this.mY;
                    double d12 = dArr4[i10][i12];
                    double d13 = dArr4[i11][i12];
                    double[][] dArr5 = this.mTangent;
                    dArr[i12] = k(d10, d11, d12, d13, dArr5[i10][i12], dArr5[i11][i12]) / d10;
                }
                return;
            }
            i10 = i11;
        }
    }

    public static MonotonicCurveFit i(String str) {
        double[] dArr = new double[str.length() / 2];
        int iIndexOf = str.indexOf(40) + 1;
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        int i10 = 0;
        while (iIndexOf2 != -1) {
            dArr[i10] = Double.parseDouble(str.substring(iIndexOf, iIndexOf2).trim());
            iIndexOf = iIndexOf2 + 1;
            iIndexOf2 = str.indexOf(44, iIndexOf);
            i10++;
        }
        dArr[i10] = Double.parseDouble(str.substring(iIndexOf, str.indexOf(41, iIndexOf)).trim());
        return j(Arrays.copyOf(dArr, i10 + 1));
    }
}
