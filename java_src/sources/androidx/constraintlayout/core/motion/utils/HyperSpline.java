package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
public class HyperSpline {
    double[][] mCtl;
    Cubic[][] mCurve;
    double[] mCurveLength;
    int mDimensionality;
    int mPoints;
    double mTotalLength;

    public HyperSpline(double[][] dArr) {
        c(dArr);
    }

    public void c(double[][] dArr) {
        int i10;
        int length = dArr[0].length;
        this.mDimensionality = length;
        int length2 = dArr.length;
        this.mPoints = length2;
        this.mCtl = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        this.mCurve = new Cubic[this.mDimensionality][];
        for (int i11 = 0; i11 < this.mDimensionality; i11++) {
            for (int i12 = 0; i12 < this.mPoints; i12++) {
                this.mCtl[i11][i12] = dArr[i12][i11];
            }
        }
        int i13 = 0;
        while (true) {
            i10 = this.mDimensionality;
            if (i13 >= i10) {
                break;
            }
            Cubic[][] cubicArr = this.mCurve;
            double[] dArr2 = this.mCtl[i13];
            cubicArr[i13] = b(dArr2.length, dArr2);
            i13++;
        }
        this.mCurveLength = new double[this.mPoints - 1];
        this.mTotalLength = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        Cubic[] cubicArr2 = new Cubic[i10];
        for (int i14 = 0; i14 < this.mCurveLength.length; i14++) {
            for (int i15 = 0; i15 < this.mDimensionality; i15++) {
                cubicArr2[i15] = this.mCurve[i15][i14];
            }
            double d = this.mTotalLength;
            double[] dArr3 = this.mCurveLength;
            double dA = a(cubicArr2);
            dArr3[i14] = dA;
            this.mTotalLength = d + dA;
        }
    }

    public static class Cubic {
        double mA;
        double mB;
        double mC;
        double mD;

        public double a(double d) {
            return (((((this.mD * d) + this.mC) * d) + this.mB) * d) + this.mA;
        }

        public Cubic(double d, double d2, double d6, double d7) {
            this.mA = d;
            this.mB = d2;
            this.mC = d6;
            this.mD = d7;
        }
    }

    static Cubic[] b(int i10, double[] dArr) {
        double[] dArr2 = new double[i10];
        double[] dArr3 = new double[i10];
        double[] dArr4 = new double[i10];
        int i11 = i10 - 1;
        int i12 = 0;
        dArr2[0] = 0.5d;
        int i13 = 1;
        for (int i14 = 1; i14 < i11; i14++) {
            dArr2[i14] = 1.0d / (4.0d - dArr2[i14 - 1]);
        }
        int i15 = i10 - 2;
        dArr2[i11] = 1.0d / (2.0d - dArr2[i15]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        while (i13 < i11) {
            int i16 = i13 + 1;
            int i17 = i13 - 1;
            dArr3[i13] = (((dArr[i16] - dArr[i17]) * 3.0d) - dArr3[i17]) * dArr2[i13];
            i13 = i16;
        }
        double d = (((dArr[i11] - dArr[i15]) * 3.0d) - dArr3[i15]) * dArr2[i11];
        dArr3[i11] = d;
        dArr4[i11] = d;
        while (i15 >= 0) {
            dArr4[i15] = dArr3[i15] - (dArr2[i15] * dArr4[i15 + 1]);
            i15--;
        }
        Cubic[] cubicArr = new Cubic[i11];
        while (i12 < i11) {
            double d2 = dArr[i12];
            double d6 = dArr4[i12];
            int i18 = i12 + 1;
            double d7 = dArr[i18];
            double d10 = dArr4[i18];
            cubicArr[i12] = new Cubic((float) d2, d6, (((d7 - d2) * 3.0d) - (d6 * 2.0d)) - d10, ((d2 - d7) * 2.0d) + d6 + d10);
            i12 = i18;
        }
        return cubicArr;
    }

    public double a(Cubic[] cubicArr) {
        int i10;
        int length = cubicArr.length;
        double[] dArr = new double[cubicArr.length];
        double d = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        double d2 = 0.0d;
        double dSqrt = 0.0d;
        while (true) {
            i10 = 0;
            if (d2 >= 1.0d) {
                break;
            }
            double d6 = 0.0d;
            while (i10 < cubicArr.length) {
                double d7 = dArr[i10];
                double dA = cubicArr[i10].a(d2);
                dArr[i10] = dA;
                double d10 = d7 - dA;
                d6 += d10 * d10;
                i10++;
            }
            if (d2 > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                dSqrt += Math.sqrt(d6);
            }
            d2 += 0.1d;
        }
        while (i10 < cubicArr.length) {
            double d11 = dArr[i10];
            double dA2 = cubicArr[i10].a(1.0d);
            dArr[i10] = dA2;
            double d12 = d11 - dA2;
            d += d12 * d12;
            i10++;
        }
        return dSqrt + Math.sqrt(d);
    }

    public HyperSpline() {
    }
}
