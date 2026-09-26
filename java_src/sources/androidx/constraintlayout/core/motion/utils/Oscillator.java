package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int CUSTOM = 7;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = "Oscillator";
    public static final int TRIANGLE_WAVE = 2;
    double[] mArea;
    MonotonicCurveFit mCustomCurve;
    String mCustomType;
    int mType;
    float[] mPeriod = new float[0];
    double[] mPosition = new double[0];
    double PI2 = 6.283185307179586d;
    private boolean mNormalized = false;

    public void a(double d, float f) {
        int length = this.mPeriod.length + 1;
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.mPosition = Arrays.copyOf(this.mPosition, length);
        this.mPeriod = Arrays.copyOf(this.mPeriod, length);
        this.mArea = new double[length];
        double[] dArr = this.mPosition;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        this.mPosition[iBinarySearch] = d;
        this.mPeriod[iBinarySearch] = f;
        this.mNormalized = false;
    }

    double b(double d) {
        if (d <= com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            d = 1.0E-5d;
        } else if (d >= 1.0d) {
            d = 0.999999d;
        }
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d);
        if (iBinarySearch > 0 || iBinarySearch == 0) {
            return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        }
        int i10 = -iBinarySearch;
        int i11 = i10 - 1;
        float[] fArr = this.mPeriod;
        float f = fArr[i11];
        int i12 = i10 - 2;
        float f6 = fArr[i12];
        double[] dArr = this.mPosition;
        double d2 = dArr[i11];
        double d6 = dArr[i12];
        double d7 = ((double) (f - f6)) / (d2 - d6);
        return (d * d7) + (((double) f6) - (d7 * d6));
    }

    double c(double d) {
        if (d < com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
            d = 0.0d;
        } else if (d > 1.0d) {
            d = 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d);
        if (iBinarySearch > 0) {
            return 1.0d;
        }
        if (iBinarySearch == 0) {
            return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
        }
        int i10 = -iBinarySearch;
        int i11 = i10 - 1;
        float[] fArr = this.mPeriod;
        float f = fArr[i11];
        int i12 = i10 - 2;
        float f6 = fArr[i12];
        double[] dArr = this.mPosition;
        double d2 = dArr[i11];
        double d6 = dArr[i12];
        double d7 = ((double) (f - f6)) / (d2 - d6);
        return this.mArea[i12] + ((((double) f6) - (d7 * d6)) * (d - d6)) + ((d7 * ((d * d) - (d6 * d6))) / 2.0d);
    }

    public void f() {
        double d = 0.0d;
        int i10 = 0;
        while (true) {
            float[] fArr = this.mPeriod;
            if (i10 >= fArr.length) {
                break;
            }
            d += (double) fArr[i10];
            i10++;
        }
        double d2 = 0.0d;
        int i11 = 1;
        while (true) {
            float[] fArr2 = this.mPeriod;
            if (i11 >= fArr2.length) {
                break;
            }
            int i12 = i11 - 1;
            float f = (fArr2[i12] + fArr2[i11]) / 2.0f;
            double[] dArr = this.mPosition;
            d2 += (dArr[i11] - dArr[i12]) * ((double) f);
            i11++;
        }
        int i13 = 0;
        while (true) {
            float[] fArr3 = this.mPeriod;
            if (i13 >= fArr3.length) {
                break;
            }
            fArr3[i13] = (float) (((double) fArr3[i13]) * (d / d2));
            i13++;
        }
        this.mArea[0] = 0.0d;
        int i14 = 1;
        while (true) {
            float[] fArr4 = this.mPeriod;
            if (i14 >= fArr4.length) {
                this.mNormalized = true;
                return;
            }
            int i15 = i14 - 1;
            float f6 = (fArr4[i15] + fArr4[i14]) / 2.0f;
            double[] dArr2 = this.mPosition;
            double d6 = dArr2[i14] - dArr2[i15];
            double[] dArr3 = this.mArea;
            dArr3[i14] = dArr3[i15] + (d6 * ((double) f6));
            i14++;
        }
    }

    public void g(int i10, String str) {
        this.mType = i10;
        this.mCustomType = str;
        if (str != null) {
            this.mCustomCurve = MonotonicCurveFit.i(str);
        }
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.mPosition) + " period=" + Arrays.toString(this.mPeriod);
    }

    public double d(double d, double d2, double d6) {
        double dC = d2 + c(d);
        double dB = b(d) + d6;
        switch (this.mType) {
            case 1:
                return com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
            case 2:
                return dB * 4.0d * Math.signum((((dC * 4.0d) + 3.0d) % 4.0d) - 2.0d);
            case 3:
                return dB * 2.0d;
            case 4:
                return (-dB) * 2.0d;
            case 5:
                double d7 = this.PI2;
                return (-d7) * dB * Math.sin(d7 * dC);
            case 6:
                return dB * 4.0d * ((((dC * 4.0d) + 2.0d) % 4.0d) - 2.0d);
            case 7:
                return this.mCustomCurve.f(dC % 1.0d, 0);
            default:
                double d10 = this.PI2;
                return dB * d10 * Math.cos(d10 * dC);
        }
    }

    public double e(double d, double d2) {
        double dAbs;
        double dC = c(d) + d2;
        switch (this.mType) {
            case 1:
                return Math.signum(0.5d - (dC % 1.0d));
            case 2:
                dAbs = Math.abs((((dC * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((dC * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                dAbs = ((dC * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.PI2 * (d2 + dC));
            case 6:
                double dAbs2 = 1.0d - Math.abs(((dC * 4.0d) % 4.0d) - 2.0d);
                dAbs = dAbs2 * dAbs2;
                break;
            case 7:
                return this.mCustomCurve.c(dC % 1.0d, 0);
            default:
                return Math.sin(this.PI2 * dC);
        }
        return 1.0d - dAbs;
    }
}
