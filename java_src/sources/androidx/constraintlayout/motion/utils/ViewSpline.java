package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.google.common.base.c;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ViewSpline extends SplineSet {
    private static final String TAG = "ViewSpline";

    public static class CustomSet extends ViewSpline {
        String mAttributeName;
        SparseArray<ConstraintAttribute> mConstraintAttributeList;
        float[] mTempValues;

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void c(int position, float value) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void e(int curveType) {
            int size = this.mConstraintAttributeList.size();
            int iH = this.mConstraintAttributeList.valueAt(0).h();
            double[] dArr = new double[size];
            this.mTempValues = new float[iH];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iH);
            for (int i10 = 0; i10 < size; i10++) {
                int iKeyAt = this.mConstraintAttributeList.keyAt(i10);
                ConstraintAttribute constraintAttributeValueAt = this.mConstraintAttributeList.valueAt(i10);
                dArr[i10] = ((double) iKeyAt) * 0.01d;
                constraintAttributeValueAt.f(this.mTempValues);
                int i11 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i11 < fArr.length) {
                        dArr2[i10][i11] = fArr[i11];
                        i11++;
                    }
                }
            }
            this.mCurveFit = CurveFit.a(curveType, dArr, dArr2);
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            this.mCurveFit.e(t5, this.mTempValues);
            CustomSupport.b(this.mConstraintAttributeList.valueAt(0), view, this.mTempValues);
        }

        public void i(int position, ConstraintAttribute value) {
            this.mConstraintAttributeList.append(position, value);
        }

        public CustomSet(String attribute, SparseArray<ConstraintAttribute> attrList) {
            this.mAttributeName = attribute.split(",")[1];
            this.mConstraintAttributeList = attrList;
        }
    }

    static class ProgressSet extends ViewSpline {
        boolean mNoMethod = false;

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(t5));
                return;
            }
            if (this.mNoMethod) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.mNoMethod = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(t5)));
                } catch (IllegalAccessException e) {
                    Log.e(ViewSpline.TAG, "unable to setProgress", e);
                } catch (InvocationTargetException e2) {
                    Log.e(ViewSpline.TAG, "unable to setProgress", e2);
                }
            }
        }

        ProgressSet() {
        }
    }

    public abstract void h(View view, float t5);

    static class AlphaSet extends ViewSpline {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setAlpha(a(t5));
        }
    }

    static class ElevationSet extends ViewSpline {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setElevation(a(t5));
        }
    }

    public static class PathRotate extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
        }

        public void i(View view, float t5, double dx, double dy) {
            view.setRotation(a(t5) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
        }
    }

    static class PivotXset extends ViewSpline {
        PivotXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setPivotX(a(t5));
        }
    }

    static class PivotYset extends ViewSpline {
        PivotYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setPivotY(a(t5));
        }
    }

    static class RotationSet extends ViewSpline {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setRotation(a(t5));
        }
    }

    static class RotationXset extends ViewSpline {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setRotationX(a(t5));
        }
    }

    static class RotationYset extends ViewSpline {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setRotationY(a(t5));
        }
    }

    static class ScaleXset extends ViewSpline {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setScaleX(a(t5));
        }
    }

    static class ScaleYset extends ViewSpline {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setScaleY(a(t5));
        }
    }

    static class TranslationXset extends ViewSpline {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setTranslationX(a(t5));
        }
    }

    static class TranslationYset extends ViewSpline {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setTranslationY(a(t5));
        }
    }

    static class TranslationZset extends ViewSpline {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void h(View view, float t5) {
            view.setTranslationZ(a(t5));
        }
    }

    public static ViewSpline f(String str, SparseArray<ConstraintAttribute> attrList) {
        return new CustomSet(str, attrList);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static ViewSpline g(String str) {
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
            case -797520672:
                if (str.equals(Key.WAVE_VARIES_BY)) {
                    b7 = 8;
                }
                break;
            case -760884510:
                if (str.equals(Key.PIVOT_X)) {
                    b7 = 9;
                }
                break;
            case -760884509:
                if (str.equals(Key.PIVOT_Y)) {
                    b7 = 10;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    b7 = c.VT;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    b7 = c.FF;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    b7 = c.CR;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    b7 = c.SO;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    b7 = c.SI;
                }
                break;
        }
        switch (b7) {
            case 0:
                return new RotationXset();
            case 1:
                return new RotationYset();
            case 2:
                return new TranslationXset();
            case 3:
                return new TranslationYset();
            case 4:
                return new TranslationZset();
            case 5:
                return new ProgressSet();
            case 6:
                return new ScaleXset();
            case 7:
                return new ScaleYset();
            case 8:
                return new AlphaSet();
            case 9:
                return new PivotXset();
            case 10:
                return new PivotYset();
            case 11:
                return new RotationSet();
            case 12:
                return new ElevationSet();
            case 13:
                return new PathRotate();
            case 14:
                return new AlphaSet();
            case 15:
                return new AlphaSet();
            default:
                return null;
        }
    }
}
