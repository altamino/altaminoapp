package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SplineSet {
    private static final String TAG = "SplineSet";
    private int count;
    protected CurveFit mCurveFit;
    private String mType;
    protected int[] mTimePoints = new int[10];
    protected float[] mValues = new float[10];

    public static class CustomSet extends SplineSet {
        String mAttributeName;
        KeyFrameArray.CustomArray mConstraintAttributeList;
        float[] mTempValues;

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void c(int i10, float f) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void e(int i10) {
            int iC = this.mConstraintAttributeList.c();
            int iB = this.mConstraintAttributeList.d(0).b();
            double[] dArr = new double[iC];
            this.mTempValues = new float[iB];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iC, iB);
            for (int i11 = 0; i11 < iC; i11++) {
                int iB2 = this.mConstraintAttributeList.b(i11);
                CustomAttribute customAttributeD = this.mConstraintAttributeList.d(i11);
                dArr[i11] = ((double) iB2) * 0.01d;
                customAttributeD.a(this.mTempValues);
                int i12 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i12 < fArr.length) {
                        dArr2[i11][i12] = fArr[i12];
                        i12++;
                    }
                }
            }
            this.mCurveFit = CurveFit.a(i10, dArr, dArr2);
        }

        public CustomSet(String str, KeyFrameArray.CustomArray customArray) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = customArray;
        }
    }

    public static class CustomSpline extends SplineSet {
        String mAttributeName;
        KeyFrameArray.CustomVar mConstraintAttributeList;
        float[] mTempValues;

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void c(int i10, float f) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void e(int i10) {
            int iC = this.mConstraintAttributeList.c();
            int iF = this.mConstraintAttributeList.d(0).f();
            double[] dArr = new double[iC];
            this.mTempValues = new float[iF];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, iC, iF);
            for (int i11 = 0; i11 < iC; i11++) {
                int iB = this.mConstraintAttributeList.b(i11);
                CustomVariable customVariableD = this.mConstraintAttributeList.d(i11);
                dArr[i11] = ((double) iB) * 0.01d;
                customVariableD.d(this.mTempValues);
                int i12 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i12 < fArr.length) {
                        dArr2[i11][i12] = fArr[i12];
                        i12++;
                    }
                }
            }
            this.mCurveFit = CurveFit.a(i10, dArr, dArr2);
        }

        public CustomSpline(String str, KeyFrameArray.CustomVar customVar) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = customVar;
        }
    }

    private static class Sort {
        static void a(int[] iArr, float[] fArr, int i10, int i11) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i11;
            iArr2[1] = i10;
            int i12 = 2;
            while (i12 > 0) {
                int i13 = iArr2[i12 - 1];
                int i14 = i12 - 2;
                int i15 = iArr2[i14];
                if (i13 < i15) {
                    int iB = b(iArr, fArr, i13, i15);
                    iArr2[i14] = iB - 1;
                    iArr2[i12 - 1] = i13;
                    int i16 = i12 + 1;
                    iArr2[i12] = i15;
                    i12 += 2;
                    iArr2[i16] = iB + 1;
                } else {
                    i12 = i14;
                }
            }
        }

        private static int b(int[] iArr, float[] fArr, int i10, int i11) {
            int i12 = iArr[i11];
            int i13 = i10;
            while (i10 < i11) {
                if (iArr[i10] <= i12) {
                    c(iArr, fArr, i13, i10);
                    i13++;
                }
                i10++;
            }
            c(iArr, fArr, i13, i11);
            return i13;
        }

        private static void c(int[] iArr, float[] fArr, int i10, int i11) {
            int i12 = iArr[i10];
            iArr[i10] = iArr[i11];
            iArr[i11] = i12;
            float f = fArr[i10];
            fArr[i10] = fArr[i11];
            fArr[i11] = f;
        }

        private Sort() {
        }
    }

    public void d(String str) {
        this.mType = str;
    }

    private static class CoreSpline extends SplineSet {
        long start;
        String type;

        public CoreSpline(String str, long j6) {
            this.type = str;
            this.start = j6;
        }
    }

    public float a(float f) {
        return (float) this.mCurveFit.c(f, 0);
    }

    public float b(float f) {
        return (float) this.mCurveFit.f(f, 0);
    }

    public void c(int i10, float f) {
        int[] iArr = this.mTimePoints;
        if (iArr.length < this.count + 1) {
            this.mTimePoints = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.mValues;
            this.mValues = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.mTimePoints;
        int i11 = this.count;
        iArr2[i11] = i10;
        this.mValues[i11] = f;
        this.count = i11 + 1;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0045  */
    public void e(int i10) {
        int i11 = this.count;
        if (i11 == 0) {
            return;
        }
        Sort.a(this.mTimePoints, this.mValues, 0, i11 - 1);
        int i12 = 1;
        for (int i13 = 1; i13 < this.count; i13++) {
            int[] iArr = this.mTimePoints;
            if (iArr[i13 - 1] != iArr[i13]) {
                i12++;
            }
        }
        double[] dArr = new double[i12];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i12, 1);
        int i14 = 0;
        for (int i15 = 0; i15 < this.count; i15++) {
            if (i15 > 0) {
                int[] iArr2 = this.mTimePoints;
                if (iArr2[i15] != iArr2[i15 - 1]) {
                    dArr[i14] = ((double) this.mTimePoints[i15]) * 0.01d;
                    dArr2[i14][0] = this.mValues[i15];
                    i14++;
                }
            } else {
                dArr[i14] = ((double) this.mTimePoints[i15]) * 0.01d;
                dArr2[i14][0] = this.mValues[i15];
                i14++;
            }
        }
        this.mCurveFit = CurveFit.a(i10, dArr, dArr2);
    }

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i10 = 0; i10 < this.count; i10++) {
            str = str + "[" + this.mTimePoints[i10] + " , " + decimalFormat.format(this.mValues[i10]) + "] ";
        }
        return str;
    }
}
