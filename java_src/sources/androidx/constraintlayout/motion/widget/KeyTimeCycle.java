package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import com.google.common.base.c;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class KeyTimeCycle extends Key {
    public static final int KEY_TYPE = 3;
    static final String NAME = "KeyTimeCycle";
    public static final int SHAPE_BOUNCE = 6;
    public static final int SHAPE_COS_WAVE = 5;
    public static final int SHAPE_REVERSE_SAW_WAVE = 4;
    public static final int SHAPE_SAW_WAVE = 3;
    public static final int SHAPE_SIN_WAVE = 0;
    public static final int SHAPE_SQUARE_WAVE = 1;
    public static final int SHAPE_TRIANGLE_WAVE = 2;
    private static final String TAG = "KeyTimeCycle";
    public static final String WAVE_OFFSET = "waveOffset";
    public static final String WAVE_PERIOD = "wavePeriod";
    public static final String WAVE_SHAPE = "waveShape";
    private String mTransitionEasing;
    private int mCurveFit = -1;
    private float mAlpha = Float.NaN;
    private float mElevation = Float.NaN;
    private float mRotation = Float.NaN;
    private float mRotationX = Float.NaN;
    private float mRotationY = Float.NaN;
    private float mTransitionPathRotate = Float.NaN;
    private float mScaleX = Float.NaN;
    private float mScaleY = Float.NaN;
    private float mTranslationX = Float.NaN;
    private float mTranslationY = Float.NaN;
    private float mTranslationZ = Float.NaN;
    private float mProgress = Float.NaN;
    private int mWaveShape = 0;
    private String mCustomWaveShape = null;
    private float mWavePeriod = Float.NaN;
    private float mWaveOffset = 0.0f;

    private static class Loader {
        private static final int ANDROID_ALPHA = 1;
        private static final int ANDROID_ELEVATION = 2;
        private static final int ANDROID_ROTATION = 4;
        private static final int ANDROID_ROTATION_X = 5;
        private static final int ANDROID_ROTATION_Y = 6;
        private static final int ANDROID_SCALE_X = 7;
        private static final int ANDROID_SCALE_Y = 14;
        private static final int ANDROID_TRANSLATION_X = 15;
        private static final int ANDROID_TRANSLATION_Y = 16;
        private static final int ANDROID_TRANSLATION_Z = 17;
        private static final int CURVE_FIT = 13;
        private static final int FRAME_POSITION = 12;
        private static final int PROGRESS = 18;
        private static final int TARGET_ID = 10;
        private static final int TRANSITION_EASING = 9;
        private static final int TRANSITION_PATH_ROTATE = 8;
        private static final int WAVE_OFFSET = 21;
        private static final int WAVE_PERIOD = 20;
        private static final int WAVE_SHAPE = 19;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_alpha, 1);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_elevation, 2);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_rotation, 4);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_rotationX, 5);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_rotationY, 6);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_scaleX, 7);
            mAttrMap.append(R.styleable.KeyTimeCycle_transitionPathRotate, 8);
            mAttrMap.append(R.styleable.KeyTimeCycle_transitionEasing, 9);
            mAttrMap.append(R.styleable.KeyTimeCycle_motionTarget, 10);
            mAttrMap.append(R.styleable.KeyTimeCycle_framePosition, 12);
            mAttrMap.append(R.styleable.KeyTimeCycle_curveFit, 13);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_scaleY, 14);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_translationX, 15);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_translationY, 16);
            mAttrMap.append(R.styleable.KeyTimeCycle_android_translationZ, 17);
            mAttrMap.append(R.styleable.KeyTimeCycle_motionProgress, 18);
            mAttrMap.append(R.styleable.KeyTimeCycle_wavePeriod, 20);
            mAttrMap.append(R.styleable.KeyTimeCycle_waveOffset, 21);
            mAttrMap.append(R.styleable.KeyTimeCycle_waveShape, 19);
        }

        private Loader() {
        }

        public static void a(KeyTimeCycle c7, TypedArray a7) {
            int indexCount = a7.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = a7.getIndex(i10);
                switch (mAttrMap.get(index)) {
                    case 1:
                        c7.mAlpha = a7.getFloat(index, c7.mAlpha);
                        break;
                    case 2:
                        c7.mElevation = a7.getDimension(index, c7.mElevation);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + mAttrMap.get(index));
                        break;
                    case 4:
                        c7.mRotation = a7.getFloat(index, c7.mRotation);
                        break;
                    case 5:
                        c7.mRotationX = a7.getFloat(index, c7.mRotationX);
                        break;
                    case 6:
                        c7.mRotationY = a7.getFloat(index, c7.mRotationY);
                        break;
                    case 7:
                        c7.mScaleX = a7.getFloat(index, c7.mScaleX);
                        break;
                    case 8:
                        c7.mTransitionPathRotate = a7.getFloat(index, c7.mTransitionPathRotate);
                        break;
                    case 9:
                        c7.mTransitionEasing = a7.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = a7.getResourceId(index, c7.mTargetId);
                            c7.mTargetId = resourceId;
                            if (resourceId == -1) {
                                c7.mTargetString = a7.getString(index);
                            }
                        } else if (a7.peekValue(index).type == 3) {
                            c7.mTargetString = a7.getString(index);
                        } else {
                            c7.mTargetId = a7.getResourceId(index, c7.mTargetId);
                        }
                        break;
                    case 12:
                        c7.mFramePosition = a7.getInt(index, c7.mFramePosition);
                        break;
                    case 13:
                        c7.mCurveFit = a7.getInteger(index, c7.mCurveFit);
                        break;
                    case 14:
                        c7.mScaleY = a7.getFloat(index, c7.mScaleY);
                        break;
                    case 15:
                        c7.mTranslationX = a7.getDimension(index, c7.mTranslationX);
                        break;
                    case 16:
                        c7.mTranslationY = a7.getDimension(index, c7.mTranslationY);
                        break;
                    case 17:
                        c7.mTranslationZ = a7.getDimension(index, c7.mTranslationZ);
                        break;
                    case 18:
                        c7.mProgress = a7.getFloat(index, c7.mProgress);
                        break;
                    case 19:
                        if (a7.peekValue(index).type == 3) {
                            c7.mCustomWaveShape = a7.getString(index);
                            c7.mWaveShape = 7;
                        } else {
                            c7.mWaveShape = a7.getInt(index, c7.mWaveShape);
                        }
                        break;
                    case 20:
                        c7.mWavePeriod = a7.getFloat(index, c7.mWavePeriod);
                        break;
                    case 21:
                        if (a7.peekValue(index).type == 5) {
                            c7.mWaveOffset = a7.getDimension(index, c7.mWaveOffset);
                        } else {
                            c7.mWaveOffset = a7.getFloat(index, c7.mWaveOffset);
                        }
                        break;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void a(HashMap<String, ViewSpline> splines) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: b */
    public Key clone() {
        return new KeyTimeCycle().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void d(HashSet<String> attributes) {
        if (!Float.isNaN(this.mAlpha)) {
            attributes.add("alpha");
        }
        if (!Float.isNaN(this.mElevation)) {
            attributes.add("elevation");
        }
        if (!Float.isNaN(this.mRotation)) {
            attributes.add(Key.ROTATION);
        }
        if (!Float.isNaN(this.mRotationX)) {
            attributes.add("rotationX");
        }
        if (!Float.isNaN(this.mRotationY)) {
            attributes.add("rotationY");
        }
        if (!Float.isNaN(this.mTranslationX)) {
            attributes.add("translationX");
        }
        if (!Float.isNaN(this.mTranslationY)) {
            attributes.add("translationY");
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            attributes.add("translationZ");
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            attributes.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.mScaleX)) {
            attributes.add("scaleX");
        }
        if (!Float.isNaN(this.mScaleY)) {
            attributes.add("scaleY");
        }
        if (!Float.isNaN(this.mProgress)) {
            attributes.add("progress");
        }
        if (this.mCustomConstraints.size() > 0) {
            Iterator<String> it = this.mCustomConstraints.keySet().iterator();
            while (it.hasNext()) {
                attributes.add("CUSTOM," + it.next());
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void e(Context context, AttributeSet attrs) {
        Loader.a(this, context.obtainStyledAttributes(attrs, R.styleable.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void h(HashMap<String, Integer> interpolation) {
        if (this.mCurveFit == -1) {
            return;
        }
        if (!Float.isNaN(this.mAlpha)) {
            interpolation.put("alpha", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mElevation)) {
            interpolation.put("elevation", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotation)) {
            interpolation.put(Key.ROTATION, Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationX)) {
            interpolation.put("rotationX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mRotationY)) {
            interpolation.put("rotationY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationX)) {
            interpolation.put("translationX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationY)) {
            interpolation.put("translationY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTranslationZ)) {
            interpolation.put("translationZ", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            interpolation.put("transitionPathRotate", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleX)) {
            interpolation.put("scaleX", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mScaleX)) {
            interpolation.put("scaleY", Integer.valueOf(this.mCurveFit));
        }
        if (!Float.isNaN(this.mProgress)) {
            interpolation.put("progress", Integer.valueOf(this.mCurveFit));
        }
        if (this.mCustomConstraints.size() > 0) {
            Iterator<String> it = this.mCustomConstraints.keySet().iterator();
            while (it.hasNext()) {
                interpolation.put("CUSTOM," + it.next(), Integer.valueOf(this.mCurveFit));
            }
        }
    }

    public KeyTimeCycle() {
        this.mType = 3;
        this.mCustomConstraints = new HashMap<>();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void U(HashMap<String, ViewTimeCycle> splines) {
        for (String str : splines.keySet()) {
            ViewTimeCycle viewTimeCycle = splines.get(str);
            if (viewTimeCycle != null) {
                byte b7 = 7;
                if (str.startsWith("CUSTOM")) {
                    ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str.substring(7));
                    if (constraintAttribute != null) {
                        ((ViewTimeCycle.CustomSet) viewTimeCycle).j(this.mFramePosition, constraintAttribute, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                    }
                } else {
                    switch (str.hashCode()) {
                        case -1249320806:
                            b7 = !str.equals("rotationX") ? (byte) -1 : (byte) 0;
                            break;
                        case -1249320805:
                            b7 = !str.equals("rotationY") ? (byte) -1 : (byte) 1;
                            break;
                        case -1225497657:
                            b7 = !str.equals("translationX") ? (byte) -1 : (byte) 2;
                            break;
                        case -1225497656:
                            b7 = !str.equals("translationY") ? (byte) -1 : (byte) 3;
                            break;
                        case -1225497655:
                            b7 = !str.equals("translationZ") ? (byte) -1 : (byte) 4;
                            break;
                        case -1001078227:
                            b7 = !str.equals("progress") ? (byte) -1 : (byte) 5;
                            break;
                        case -908189618:
                            b7 = !str.equals("scaleX") ? (byte) -1 : (byte) 6;
                            break;
                        case -908189617:
                            if (!str.equals("scaleY")) {
                                b7 = -1;
                            }
                            break;
                        case -40300674:
                            b7 = !str.equals(Key.ROTATION) ? (byte) -1 : (byte) 8;
                            break;
                        case -4379043:
                            b7 = !str.equals("elevation") ? (byte) -1 : (byte) 9;
                            break;
                        case 37232917:
                            b7 = !str.equals("transitionPathRotate") ? (byte) -1 : (byte) 10;
                            break;
                        case 92909918:
                            b7 = !str.equals("alpha") ? (byte) -1 : c.VT;
                            break;
                        default:
                            b7 = -1;
                            break;
                    }
                    switch (b7) {
                        case 0:
                            if (!Float.isNaN(this.mRotationX)) {
                                viewTimeCycle.b(this.mFramePosition, this.mRotationX, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        case 1:
                            if (!Float.isNaN(this.mRotationY)) {
                                viewTimeCycle.b(this.mFramePosition, this.mRotationY, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        case 2:
                            if (!Float.isNaN(this.mTranslationX)) {
                                viewTimeCycle.b(this.mFramePosition, this.mTranslationX, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        case 3:
                            if (!Float.isNaN(this.mTranslationY)) {
                                viewTimeCycle.b(this.mFramePosition, this.mTranslationY, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        case 4:
                            if (!Float.isNaN(this.mTranslationZ)) {
                                viewTimeCycle.b(this.mFramePosition, this.mTranslationZ, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        case 5:
                            if (!Float.isNaN(this.mProgress)) {
                                viewTimeCycle.b(this.mFramePosition, this.mProgress, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        case 6:
                            if (!Float.isNaN(this.mScaleX)) {
                                viewTimeCycle.b(this.mFramePosition, this.mScaleX, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        case 7:
                            if (!Float.isNaN(this.mScaleY)) {
                                viewTimeCycle.b(this.mFramePosition, this.mScaleY, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        case 8:
                            if (!Float.isNaN(this.mRotation)) {
                                viewTimeCycle.b(this.mFramePosition, this.mRotation, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        case 9:
                            if (!Float.isNaN(this.mElevation)) {
                                viewTimeCycle.b(this.mFramePosition, this.mElevation, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        case 10:
                            if (!Float.isNaN(this.mTransitionPathRotate)) {
                                viewTimeCycle.b(this.mFramePosition, this.mTransitionPathRotate, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        case 11:
                            if (!Float.isNaN(this.mAlpha)) {
                                viewTimeCycle.b(this.mFramePosition, this.mAlpha, this.mWavePeriod, this.mWaveShape, this.mWaveOffset);
                            }
                            break;
                        default:
                            Log.e("KeyTimeCycles", "UNKNOWN addValues \"" + str + "\"");
                            break;
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key c(Key src) {
        super.c(src);
        KeyTimeCycle keyTimeCycle = (KeyTimeCycle) src;
        this.mTransitionEasing = keyTimeCycle.mTransitionEasing;
        this.mCurveFit = keyTimeCycle.mCurveFit;
        this.mWaveShape = keyTimeCycle.mWaveShape;
        this.mWavePeriod = keyTimeCycle.mWavePeriod;
        this.mWaveOffset = keyTimeCycle.mWaveOffset;
        this.mProgress = keyTimeCycle.mProgress;
        this.mAlpha = keyTimeCycle.mAlpha;
        this.mElevation = keyTimeCycle.mElevation;
        this.mRotation = keyTimeCycle.mRotation;
        this.mTransitionPathRotate = keyTimeCycle.mTransitionPathRotate;
        this.mRotationX = keyTimeCycle.mRotationX;
        this.mRotationY = keyTimeCycle.mRotationY;
        this.mScaleX = keyTimeCycle.mScaleX;
        this.mScaleY = keyTimeCycle.mScaleY;
        this.mTranslationX = keyTimeCycle.mTranslationX;
        this.mTranslationY = keyTimeCycle.mTranslationY;
        this.mTranslationZ = keyTimeCycle.mTranslationZ;
        return this;
    }
}
