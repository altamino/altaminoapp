package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.google.common.base.c;
import com.google.firebase.remoteconfig.a;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ViewTimeCycle extends TimeCycleSplineSet {
    private static final String TAG = "ViewTimeCycle";

    public static class CustomSet extends ViewTimeCycle {
        String mAttributeName;
        float[] mCache;
        SparseArray<ConstraintAttribute> mConstraintAttributeList;
        float[] mTempValues;
        SparseArray<float[]> mWaveProperties = new SparseArray<>();

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void b(int position, float value, float period, int shape, float offset) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void e(int curveType) {
            int size = this.mConstraintAttributeList.size();
            int iH = this.mConstraintAttributeList.valueAt(0).h();
            double[] dArr = new double[size];
            int i10 = iH + 2;
            this.mTempValues = new float[i10];
            this.mCache = new float[iH];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i10);
            for (int i11 = 0; i11 < size; i11++) {
                int iKeyAt = this.mConstraintAttributeList.keyAt(i11);
                ConstraintAttribute constraintAttributeValueAt = this.mConstraintAttributeList.valueAt(i11);
                float[] fArrValueAt = this.mWaveProperties.valueAt(i11);
                dArr[i11] = ((double) iKeyAt) * 0.01d;
                constraintAttributeValueAt.f(this.mTempValues);
                int i12 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i12 < fArr.length) {
                        dArr2[i11][i12] = fArr[i12];
                        i12++;
                    }
                }
                double[] dArr3 = dArr2[i11];
                dArr3[iH] = fArrValueAt[0];
                dArr3[iH + 1] = fArrValueAt[1];
            }
            this.mCurveFit = CurveFit.a(curveType, dArr, dArr2);
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            this.mCurveFit.e(t5, this.mTempValues);
            float[] fArr = this.mTempValues;
            float f = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            long j6 = time - this.last_time;
            if (Float.isNaN(this.last_cycle)) {
                float fA = cache.a(view, this.mAttributeName, 0);
                this.last_cycle = fA;
                if (Float.isNaN(fA)) {
                    this.last_cycle = 0.0f;
                }
            }
            float f7 = (float) ((((double) this.last_cycle) + ((j6 * 1.0E-9d) * ((double) f))) % 1.0d);
            this.last_cycle = f7;
            this.last_time = time;
            float fA2 = a(f7);
            this.mContinue = false;
            int i10 = 0;
            while (true) {
                float[] fArr2 = this.mCache;
                if (i10 >= fArr2.length) {
                    break;
                }
                boolean z6 = this.mContinue;
                float f10 = this.mTempValues[i10];
                this.mContinue = z6 | (((double) f10) != a.DEFAULT_VALUE_FOR_DOUBLE);
                fArr2[i10] = (f10 * fA2) + f6;
                i10++;
            }
            CustomSupport.b(this.mConstraintAttributeList.valueAt(0), view, this.mCache);
            if (f != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }

        public void j(int position, ConstraintAttribute value, float period, int shape, float offset) {
            this.mConstraintAttributeList.append(position, value);
            this.mWaveProperties.append(position, new float[]{period, offset});
            this.mWaveShape = Math.max(this.mWaveShape, shape);
        }

        public CustomSet(String attribute, SparseArray<ConstraintAttribute> attrList) {
            this.mAttributeName = attribute.split(",")[1];
            this.mConstraintAttributeList = attrList;
        }
    }

    public static class PathRotate extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            return this.mContinue;
        }

        public boolean j(View view, KeyCache cache, float t5, long time, double dx, double dy) {
            view.setRotation(f(t5, time, view, cache) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
            return this.mContinue;
        }
    }

    public abstract boolean i(View view, float t5, long time, KeyCache cache);

    static class AlphaSet extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            view.setAlpha(f(t5, time, view, cache));
            return this.mContinue;
        }

        AlphaSet() {
        }
    }

    static class ElevationSet extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            view.setElevation(f(t5, time, view, cache));
            return this.mContinue;
        }

        ElevationSet() {
        }
    }

    static class ProgressSet extends ViewTimeCycle {
        boolean mNoMethod = false;

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(f(t5, time, view, cache));
            } else {
                if (this.mNoMethod) {
                    return false;
                }
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.mNoMethod = true;
                    method = null;
                }
                Method method2 = method;
                if (method2 != null) {
                    try {
                        method2.invoke(view, Float.valueOf(f(t5, time, view, cache)));
                    } catch (IllegalAccessException e) {
                        Log.e(ViewTimeCycle.TAG, "unable to setProgress", e);
                    } catch (InvocationTargetException e2) {
                        Log.e(ViewTimeCycle.TAG, "unable to setProgress", e2);
                    }
                }
            }
            return this.mContinue;
        }

        ProgressSet() {
        }
    }

    static class RotationSet extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            view.setRotation(f(t5, time, view, cache));
            return this.mContinue;
        }

        RotationSet() {
        }
    }

    static class RotationXset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            view.setRotationX(f(t5, time, view, cache));
            return this.mContinue;
        }

        RotationXset() {
        }
    }

    static class RotationYset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            view.setRotationY(f(t5, time, view, cache));
            return this.mContinue;
        }

        RotationYset() {
        }
    }

    static class ScaleXset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            view.setScaleX(f(t5, time, view, cache));
            return this.mContinue;
        }

        ScaleXset() {
        }
    }

    static class ScaleYset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            view.setScaleY(f(t5, time, view, cache));
            return this.mContinue;
        }

        ScaleYset() {
        }
    }

    static class TranslationXset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            view.setTranslationX(f(t5, time, view, cache));
            return this.mContinue;
        }

        TranslationXset() {
        }
    }

    static class TranslationYset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            view.setTranslationY(f(t5, time, view, cache));
            return this.mContinue;
        }

        TranslationYset() {
        }
    }

    static class TranslationZset extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean i(View view, float t5, long time, KeyCache cache) {
            view.setTranslationZ(f(t5, time, view, cache));
            return this.mContinue;
        }

        TranslationZset() {
        }
    }

    public static ViewTimeCycle g(String str, SparseArray<ConstraintAttribute> attrList) {
        return new CustomSet(str, attrList);
    }

    public float f(float pos, long time, View view, KeyCache cache) {
        this.mCurveFit.e(pos, this.mCache);
        float[] fArr = this.mCache;
        float f = fArr[1];
        if (f == 0.0f) {
            this.mContinue = false;
            return fArr[2];
        }
        if (Float.isNaN(this.last_cycle)) {
            float fA = cache.a(view, this.mType, 0);
            this.last_cycle = fA;
            if (Float.isNaN(fA)) {
                this.last_cycle = 0.0f;
            }
        }
        float f6 = (float) ((((double) this.last_cycle) + (((time - this.last_time) * 1.0E-9d) * ((double) f))) % 1.0d);
        this.last_cycle = f6;
        cache.b(view, this.mType, 0, f6);
        this.last_time = time;
        float f7 = this.mCache[0];
        float fA2 = (a(this.last_cycle) * f7) + this.mCache[2];
        this.mContinue = (f7 == 0.0f && f == 0.0f) ? false : true;
        return fA2;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static ViewTimeCycle h(String str, long currentTime) {
        ViewTimeCycle rotationXset;
        str.hashCode();
        byte b7 = -1;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    b7 = 0;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    b7 = 1;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    b7 = 2;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    b7 = 3;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    b7 = 4;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    b7 = 5;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    b7 = 6;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    b7 = 7;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    b7 = 8;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    b7 = 9;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    b7 = 10;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    b7 = c.VT;
                }
                break;
        }
        switch (b7) {
            case 0:
                rotationXset = new RotationXset();
                break;
            case 1:
                rotationXset = new RotationYset();
                break;
            case 2:
                rotationXset = new TranslationXset();
                break;
            case 3:
                rotationXset = new TranslationYset();
                break;
            case 4:
                rotationXset = new TranslationZset();
                break;
            case 5:
                rotationXset = new ProgressSet();
                break;
            case 6:
                rotationXset = new ScaleXset();
                break;
            case 7:
                rotationXset = new ScaleYset();
                break;
            case 8:
                rotationXset = new RotationSet();
                break;
            case 9:
                rotationXset = new ElevationSet();
                break;
            case 10:
                rotationXset = new PathRotate();
                break;
            case 11:
                rotationXset = new AlphaSet();
                break;
            default:
                return null;
        }
        rotationXset.c(currentTime);
        return rotationXset;
    }
}
