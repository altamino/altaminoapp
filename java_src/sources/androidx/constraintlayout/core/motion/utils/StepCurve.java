package androidx.constraintlayout.core.motion.utils;

import java.io.PrintStream;
import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: loaded from: classes10.dex */
public class StepCurve extends Easing {
    private static final boolean DEBUG = false;
    MonotonicCurveFit mCurveFit;

    private static MonotonicCurveFit d(double[] dArr) {
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
        MonotonicCurveFit monotonicCurveFit = new MonotonicCurveFit(dArr3, dArr2);
        PrintStream printStream = System.out;
        printStream.println(" 0 " + monotonicCurveFit.c(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE, 0));
        printStream.println(" 1 " + monotonicCurveFit.c(1.0d, 0));
        return monotonicCurveFit;
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double a(double d) {
        return this.mCurveFit.c(d, 0);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double b(double d) {
        return this.mCurveFit.f(d, 0);
    }

    StepCurve(String str) {
        this.str = str;
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
        this.mCurveFit = d(Arrays.copyOf(dArr, i10 + 1));
    }
}
