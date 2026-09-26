package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes7.dex */
public abstract class KeyCycleOscillator {
    private static final String TAG = "KeyCycleOscillator";
    private CurveFit mCurveFit;
    private CycleOscillator mCycleOscillator;
    private String mType;
    private int mWaveShape = 0;
    private String mWaveString = null;
    public int mVariesBy = 0;
    ArrayList<WavePoint> mWavePoints = new ArrayList<>();

    static class CycleOscillator {
        private static final String TAG = "CycleOscillator";
        static final int UNSET = -1;
        private final int OFFST;
        private final int PHASE;
        private final int VALUE;
        CurveFit mCurveFit;
        float[] mOffset;
        Oscillator mOscillator;
        float mPathLength;
        float[] mPeriod;
        float[] mPhase;
        double[] mPosition;
        float[] mScale;
        double[] mSplineSlopeCache;
        double[] mSplineValueCache;
        float[] mValues;
        private final int mVariesBy;
        int mWaveShape;

        public double a(float f) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                double d = f;
                curveFit.g(d, this.mSplineSlopeCache);
                this.mCurveFit.d(d, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineSlopeCache;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
                dArr[2] = 0.0d;
            }
            double d2 = f;
            double dE = this.mOscillator.e(d2, this.mSplineValueCache[1]);
            double d6 = this.mOscillator.d(d2, this.mSplineValueCache[1], this.mSplineSlopeCache[1]);
            double[] dArr2 = this.mSplineSlopeCache;
            return dArr2[0] + (dE * dArr2[2]) + (d6 * this.mSplineValueCache[2]);
        }

        public double b(float f) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                curveFit.d(f, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineValueCache;
                dArr[0] = this.mOffset[0];
                dArr[1] = this.mPhase[0];
                dArr[2] = this.mValues[0];
            }
            double[] dArr2 = this.mSplineValueCache;
            return dArr2[0] + (this.mOscillator.e(f, dArr2[1]) * this.mSplineValueCache[2]);
        }

        public void c(int i10, int i11, float f, float f6, float f7, float f10) {
            this.mPosition[i10] = ((double) i11) / 100.0d;
            this.mPeriod[i10] = f;
            this.mOffset[i10] = f6;
            this.mPhase[i10] = f7;
            this.mValues[i10] = f10;
        }

        public void d(float f) {
            this.mPathLength = f;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.mPosition.length, 3);
            float[] fArr = this.mValues;
            this.mSplineValueCache = new double[fArr.length + 2];
            this.mSplineSlopeCache = new double[fArr.length + 2];
            if (this.mPosition[0] > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                this.mOscillator.a(com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE, this.mPeriod[0]);
            }
            double[] dArr2 = this.mPosition;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.mOscillator.a(1.0d, this.mPeriod[length]);
            }
            for (int i10 = 0; i10 < dArr.length; i10++) {
                double[] dArr3 = dArr[i10];
                dArr3[0] = this.mOffset[i10];
                dArr3[1] = this.mPhase[i10];
                dArr3[2] = this.mValues[i10];
                this.mOscillator.a(this.mPosition[i10], this.mPeriod[i10]);
            }
            this.mOscillator.f();
            double[] dArr4 = this.mPosition;
            if (dArr4.length > 1) {
                this.mCurveFit = CurveFit.a(0, dArr4, dArr);
            } else {
                this.mCurveFit = null;
            }
        }

        CycleOscillator(int i10, String str, int i11, int i12) {
            Oscillator oscillator = new Oscillator();
            this.mOscillator = oscillator;
            this.OFFST = 0;
            this.PHASE = 1;
            this.VALUE = 2;
            this.mWaveShape = i10;
            this.mVariesBy = i11;
            oscillator.g(i10, str);
            this.mValues = new float[i12];
            this.mPosition = new double[i12];
            this.mPeriod = new float[i12];
            this.mOffset = new float[i12];
            this.mPhase = new float[i12];
            this.mScale = new float[i12];
        }
    }

    protected void c(Object obj) {
    }

    public void d(int i10, int i11, String str, int i12, float f, float f6, float f7, float f10) {
        this.mWavePoints.add(new WavePoint(i10, f, f6, f7, f10));
        if (i12 != -1) {
            this.mVariesBy = i12;
        }
        this.mWaveShape = i11;
        this.mWaveString = str;
    }

    public void e(int i10, int i11, String str, int i12, float f, float f6, float f7, float f10, Object obj) {
        this.mWavePoints.add(new WavePoint(i10, f, f6, f7, f10));
        if (i12 != -1) {
            this.mVariesBy = i12;
        }
        this.mWaveShape = i11;
        c(obj);
        this.mWaveString = str;
    }

    public void f(String str) {
        this.mType = str;
    }

    public boolean h() {
        return this.mVariesBy == 1;
    }

    private static class CoreSpline extends KeyCycleOscillator {
        String type;
        int typeId;

        public CoreSpline(String str) {
            this.type = str;
            this.typeId = a.a(str);
        }
    }

    private static class IntDoubleSort {
        private IntDoubleSort() {
        }
    }

    private static class IntFloatFloatSort {
        private IntFloatFloatSort() {
        }
    }

    public static class PathRotateSet extends KeyCycleOscillator {
        String type;
        int typeId;

        public PathRotateSet(String str) {
            this.type = str;
            this.typeId = a.a(str);
        }
    }

    static class WavePoint {
        float mOffset;
        float mPeriod;
        float mPhase;
        int mPosition;
        float mValue;

        public WavePoint(int i10, float f, float f6, float f7, float f10) {
            this.mPosition = i10;
            this.mValue = f10;
            this.mOffset = f6;
            this.mPeriod = f;
            this.mPhase = f7;
        }
    }

    public float a(float f) {
        return (float) this.mCycleOscillator.b(f);
    }

    public float b(float f) {
        return (float) this.mCycleOscillator.a(f);
    }

    public void g(float f) {
        int size = this.mWavePoints.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.mWavePoints, new Comparator<WavePoint>() { // from class: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(WavePoint wavePoint, WavePoint wavePoint2) {
                return Integer.compare(wavePoint.mPosition, wavePoint2.mPosition);
            }
        });
        double[] dArr = new double[size];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 3);
        this.mCycleOscillator = new CycleOscillator(this.mWaveShape, this.mWaveString, this.mVariesBy, size);
        int i10 = 0;
        for (WavePoint wavePoint : this.mWavePoints) {
            float f6 = wavePoint.mPeriod;
            dArr[i10] = ((double) f6) * 0.01d;
            double[] dArr3 = dArr2[i10];
            float f7 = wavePoint.mValue;
            dArr3[0] = f7;
            float f10 = wavePoint.mOffset;
            dArr3[1] = f10;
            float f11 = wavePoint.mPhase;
            dArr3[2] = f11;
            this.mCycleOscillator.c(i10, wavePoint.mPosition, f6, f10, f11, f7);
            i10++;
        }
        this.mCycleOscillator.d(f);
        this.mCurveFit = CurveFit.a(0, dArr, dArr2);
    }

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (WavePoint wavePoint : this.mWavePoints) {
            str = str + "[" + wavePoint.mPosition + " , " + decimalFormat.format(wavePoint.mValue) + "] ";
        }
        return str;
    }
}
