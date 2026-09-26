package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.google.common.base.c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ViewOscillator extends KeyCycleOscillator {
    private static final String TAG = "ViewOscillator";

    static class CustomSet extends ViewOscillator {
        protected ConstraintAttribute mCustom;
        float[] value = new float[1];

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        protected void c(Object custom) {
            this.mCustom = (ConstraintAttribute) custom;
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
            this.value[0] = a(t5);
            CustomSupport.b(this.mCustom, view, this.value);
        }

        CustomSet() {
        }
    }

    static class ProgressSet extends ViewOscillator {
        boolean mNoMethod = false;

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
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
                    Log.e(ViewOscillator.TAG, "unable to setProgress", e);
                } catch (InvocationTargetException e2) {
                    Log.e(ViewOscillator.TAG, "unable to setProgress", e2);
                }
            }
        }

        ProgressSet() {
        }
    }

    public abstract void j(View view, float t5);

    static class AlphaSet extends ViewOscillator {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
            view.setAlpha(a(t5));
        }
    }

    static class ElevationSet extends ViewOscillator {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
            view.setElevation(a(t5));
        }
    }

    public static class PathRotateSet extends ViewOscillator {
        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
        }

        public void k(View view, float t5, double dx, double dy) {
            view.setRotation(a(t5) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
        }
    }

    static class RotationSet extends ViewOscillator {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
            view.setRotation(a(t5));
        }
    }

    static class RotationXset extends ViewOscillator {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
            view.setRotationX(a(t5));
        }
    }

    static class RotationYset extends ViewOscillator {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
            view.setRotationY(a(t5));
        }
    }

    static class ScaleXset extends ViewOscillator {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
            view.setScaleX(a(t5));
        }
    }

    static class ScaleYset extends ViewOscillator {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
            view.setScaleY(a(t5));
        }
    }

    static class TranslationXset extends ViewOscillator {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
            view.setTranslationX(a(t5));
        }
    }

    static class TranslationYset extends ViewOscillator {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
            view.setTranslationY(a(t5));
        }
    }

    static class TranslationZset extends ViewOscillator {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void j(View view, float t5) {
            view.setTranslationZ(a(t5));
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static ViewOscillator i(String str) {
        if (str.startsWith("CUSTOM")) {
            return new CustomSet();
        }
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
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    b7 = 9;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    b7 = 10;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    b7 = c.VT;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    b7 = c.FF;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    b7 = c.CR;
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
                return new RotationSet();
            case 10:
                return new ElevationSet();
            case 11:
                return new PathRotateSet();
            case 12:
                return new AlphaSet();
            case 13:
                return new AlphaSet();
            default:
                return null;
        }
    }
}
