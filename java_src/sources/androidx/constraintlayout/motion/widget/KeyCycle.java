package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import com.google.common.base.c;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class KeyCycle extends Key {
    public static final int KEY_TYPE = 4;
    static final String NAME = "KeyCycle";
    public static final int SHAPE_BOUNCE = 6;
    public static final int SHAPE_COS_WAVE = 5;
    public static final int SHAPE_REVERSE_SAW_WAVE = 4;
    public static final int SHAPE_SAW_WAVE = 3;
    public static final int SHAPE_SIN_WAVE = 0;
    public static final int SHAPE_SQUARE_WAVE = 1;
    public static final int SHAPE_TRIANGLE_WAVE = 2;
    private static final String TAG = "KeyCycle";
    public static final String WAVE_OFFSET = "waveOffset";
    public static final String WAVE_PERIOD = "wavePeriod";
    public static final String WAVE_PHASE = "wavePhase";
    public static final String WAVE_SHAPE = "waveShape";
    private String mTransitionEasing = null;
    private int mCurveFit = 0;
    private int mWaveShape = -1;
    private String mCustomWaveShape = null;
    private float mWavePeriod = Float.NaN;
    private float mWaveOffset = 0.0f;
    private float mWavePhase = 0.0f;
    private float mProgress = Float.NaN;
    private int mWaveVariesBy = -1;
    private float mAlpha = Float.NaN;
    private float mElevation = Float.NaN;
    private float mRotation = Float.NaN;
    private float mTransitionPathRotate = Float.NaN;
    private float mRotationX = Float.NaN;
    private float mRotationY = Float.NaN;
    private float mScaleX = Float.NaN;
    private float mScaleY = Float.NaN;
    private float mTranslationX = Float.NaN;
    private float mTranslationY = Float.NaN;
    private float mTranslationZ = Float.NaN;

    private static class Loader {
        private static final int ANDROID_ALPHA = 9;
        private static final int ANDROID_ELEVATION = 10;
        private static final int ANDROID_ROTATION = 11;
        private static final int ANDROID_ROTATION_X = 12;
        private static final int ANDROID_ROTATION_Y = 13;
        private static final int ANDROID_SCALE_X = 15;
        private static final int ANDROID_SCALE_Y = 16;
        private static final int ANDROID_TRANSLATION_X = 17;
        private static final int ANDROID_TRANSLATION_Y = 18;
        private static final int ANDROID_TRANSLATION_Z = 19;
        private static final int CURVE_FIT = 4;
        private static final int FRAME_POSITION = 2;
        private static final int PROGRESS = 20;
        private static final int TARGET_ID = 1;
        private static final int TRANSITION_EASING = 3;
        private static final int TRANSITION_PATH_ROTATE = 14;
        private static final int WAVE_OFFSET = 7;
        private static final int WAVE_PERIOD = 6;
        private static final int WAVE_PHASE = 21;
        private static final int WAVE_SHAPE = 5;
        private static final int WAVE_VARIES_BY = 8;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyCycle_motionTarget, 1);
            mAttrMap.append(R.styleable.KeyCycle_framePosition, 2);
            mAttrMap.append(R.styleable.KeyCycle_transitionEasing, 3);
            mAttrMap.append(R.styleable.KeyCycle_curveFit, 4);
            mAttrMap.append(R.styleable.KeyCycle_waveShape, 5);
            mAttrMap.append(R.styleable.KeyCycle_wavePeriod, 6);
            mAttrMap.append(R.styleable.KeyCycle_waveOffset, 7);
            mAttrMap.append(R.styleable.KeyCycle_waveVariesBy, 8);
            mAttrMap.append(R.styleable.KeyCycle_android_alpha, 9);
            mAttrMap.append(R.styleable.KeyCycle_android_elevation, 10);
            mAttrMap.append(R.styleable.KeyCycle_android_rotation, 11);
            mAttrMap.append(R.styleable.KeyCycle_android_rotationX, 12);
            mAttrMap.append(R.styleable.KeyCycle_android_rotationY, 13);
            mAttrMap.append(R.styleable.KeyCycle_transitionPathRotate, 14);
            mAttrMap.append(R.styleable.KeyCycle_android_scaleX, 15);
            mAttrMap.append(R.styleable.KeyCycle_android_scaleY, 16);
            mAttrMap.append(R.styleable.KeyCycle_android_translationX, 17);
            mAttrMap.append(R.styleable.KeyCycle_android_translationY, 18);
            mAttrMap.append(R.styleable.KeyCycle_android_translationZ, 19);
            mAttrMap.append(R.styleable.KeyCycle_motionProgress, 20);
            mAttrMap.append(R.styleable.KeyCycle_wavePhase, 21);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(KeyCycle c7, TypedArray a7) {
            int indexCount = a7.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = a7.getIndex(i10);
                switch (mAttrMap.get(index)) {
                    case 1:
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
                    case 2:
                        c7.mFramePosition = a7.getInt(index, c7.mFramePosition);
                        break;
                    case 3:
                        c7.mTransitionEasing = a7.getString(index);
                        break;
                    case 4:
                        c7.mCurveFit = a7.getInteger(index, c7.mCurveFit);
                        break;
                    case 5:
                        if (a7.peekValue(index).type == 3) {
                            c7.mCustomWaveShape = a7.getString(index);
                            c7.mWaveShape = 7;
                        } else {
                            c7.mWaveShape = a7.getInt(index, c7.mWaveShape);
                        }
                        break;
                    case 6:
                        c7.mWavePeriod = a7.getFloat(index, c7.mWavePeriod);
                        break;
                    case 7:
                        if (a7.peekValue(index).type == 5) {
                            c7.mWaveOffset = a7.getDimension(index, c7.mWaveOffset);
                        } else {
                            c7.mWaveOffset = a7.getFloat(index, c7.mWaveOffset);
                        }
                        break;
                    case 8:
                        c7.mWaveVariesBy = a7.getInt(index, c7.mWaveVariesBy);
                        break;
                    case 9:
                        c7.mAlpha = a7.getFloat(index, c7.mAlpha);
                        break;
                    case 10:
                        c7.mElevation = a7.getDimension(index, c7.mElevation);
                        break;
                    case 11:
                        c7.mRotation = a7.getFloat(index, c7.mRotation);
                        break;
                    case 12:
                        c7.mRotationX = a7.getFloat(index, c7.mRotationX);
                        break;
                    case 13:
                        c7.mRotationY = a7.getFloat(index, c7.mRotationY);
                        break;
                    case 14:
                        c7.mTransitionPathRotate = a7.getFloat(index, c7.mTransitionPathRotate);
                        break;
                    case 15:
                        c7.mScaleX = a7.getFloat(index, c7.mScaleX);
                        break;
                    case 16:
                        c7.mScaleY = a7.getFloat(index, c7.mScaleY);
                        break;
                    case 17:
                        c7.mTranslationX = a7.getDimension(index, c7.mTranslationX);
                        break;
                    case 18:
                        c7.mTranslationY = a7.getDimension(index, c7.mTranslationY);
                        break;
                    case 19:
                        c7.mTranslationZ = a7.getDimension(index, c7.mTranslationZ);
                        break;
                    case 20:
                        c7.mProgress = a7.getFloat(index, c7.mProgress);
                        break;
                    case 21:
                        c7.mWavePhase = a7.getFloat(index, c7.mWavePhase) / 360.0f;
                        break;
                    default:
                        Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + mAttrMap.get(index));
                        break;
                }
            }
        }
    }

    public void Y(HashMap<String, ViewOscillator> oscSet) {
        ViewOscillator viewOscillator;
        ViewOscillator viewOscillator2;
        for (String str : oscSet.keySet()) {
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str.substring(7));
                if (constraintAttribute != null && constraintAttribute.d() == ConstraintAttribute.AttributeType.FLOAT_TYPE && (viewOscillator = oscSet.get(str)) != null) {
                    viewOscillator.e(this.mFramePosition, this.mWaveShape, this.mCustomWaveShape, this.mWaveVariesBy, this.mWavePeriod, this.mWaveOffset, this.mWavePhase, constraintAttribute.e(), constraintAttribute);
                }
            } else {
                float fZ = Z(str);
                if (!Float.isNaN(fZ) && (viewOscillator2 = oscSet.get(str)) != null) {
                    viewOscillator2.d(this.mFramePosition, this.mWaveShape, this.mCustomWaveShape, this.mWaveVariesBy, this.mWavePeriod, this.mWaveOffset, this.mWavePhase, fZ);
                }
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.constraintlayout.motion.widget.Key
    public void a(HashMap<String, ViewSpline> splines) {
        Debug.g("KeyCycle", "add " + splines.size() + " values", 2);
        for (String str : splines.keySet()) {
            ViewSpline viewSpline = splines.get(str);
            if (viewSpline != null) {
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
                    case 156108012:
                        if (str.equals("waveOffset")) {
                            b7 = c.FF;
                        }
                        break;
                    case 1530034690:
                        if (str.equals("wavePhase")) {
                            b7 = c.CR;
                        }
                        break;
                }
                switch (b7) {
                    case 0:
                        viewSpline.c(this.mFramePosition, this.mRotationX);
                        break;
                    case 1:
                        viewSpline.c(this.mFramePosition, this.mRotationY);
                        break;
                    case 2:
                        viewSpline.c(this.mFramePosition, this.mTranslationX);
                        break;
                    case 3:
                        viewSpline.c(this.mFramePosition, this.mTranslationY);
                        break;
                    case 4:
                        viewSpline.c(this.mFramePosition, this.mTranslationZ);
                        break;
                    case 5:
                        viewSpline.c(this.mFramePosition, this.mProgress);
                        break;
                    case 6:
                        viewSpline.c(this.mFramePosition, this.mScaleX);
                        break;
                    case 7:
                        viewSpline.c(this.mFramePosition, this.mScaleY);
                        break;
                    case 8:
                        viewSpline.c(this.mFramePosition, this.mRotation);
                        break;
                    case 9:
                        viewSpline.c(this.mFramePosition, this.mElevation);
                        break;
                    case 10:
                        viewSpline.c(this.mFramePosition, this.mTransitionPathRotate);
                        break;
                    case 11:
                        viewSpline.c(this.mFramePosition, this.mAlpha);
                        break;
                    case 12:
                        viewSpline.c(this.mFramePosition, this.mWaveOffset);
                        break;
                    case 13:
                        viewSpline.c(this.mFramePosition, this.mWavePhase);
                        break;
                    default:
                        if (!str.startsWith("CUSTOM")) {
                            Log.v("WARNING KeyCycle", "  UNKNOWN  " + str);
                        }
                        break;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: b */
    public Key clone() {
        return new KeyCycle().c(this);
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
        if (!Float.isNaN(this.mScaleX)) {
            attributes.add("scaleX");
        }
        if (!Float.isNaN(this.mScaleY)) {
            attributes.add("scaleY");
        }
        if (!Float.isNaN(this.mTransitionPathRotate)) {
            attributes.add("transitionPathRotate");
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
        if (this.mCustomConstraints.size() > 0) {
            Iterator<String> it = this.mCustomConstraints.keySet().iterator();
            while (it.hasNext()) {
                attributes.add("CUSTOM," + it.next());
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void e(Context context, AttributeSet attrs) {
        Loader.b(this, context.obtainStyledAttributes(attrs, R.styleable.KeyCycle));
    }

    public KeyCycle() {
        this.mType = 4;
        this.mCustomConstraints = new HashMap<>();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public float Z(String key) {
        key.hashCode();
        byte b7 = -1;
        switch (key.hashCode()) {
            case -1249320806:
                if (key.equals("rotationX")) {
                    b7 = 0;
                }
                break;
            case -1249320805:
                if (key.equals("rotationY")) {
                    b7 = 1;
                }
                break;
            case -1225497657:
                if (key.equals("translationX")) {
                    b7 = 2;
                }
                break;
            case -1225497656:
                if (key.equals("translationY")) {
                    b7 = 3;
                }
                break;
            case -1225497655:
                if (key.equals("translationZ")) {
                    b7 = 4;
                }
                break;
            case -1001078227:
                if (key.equals("progress")) {
                    b7 = 5;
                }
                break;
            case -908189618:
                if (key.equals("scaleX")) {
                    b7 = 6;
                }
                break;
            case -908189617:
                if (key.equals("scaleY")) {
                    b7 = 7;
                }
                break;
            case -40300674:
                if (key.equals(Key.ROTATION)) {
                    b7 = 8;
                }
                break;
            case -4379043:
                if (key.equals("elevation")) {
                    b7 = 9;
                }
                break;
            case 37232917:
                if (key.equals("transitionPathRotate")) {
                    b7 = 10;
                }
                break;
            case 92909918:
                if (key.equals("alpha")) {
                    b7 = c.VT;
                }
                break;
            case 156108012:
                if (key.equals("waveOffset")) {
                    b7 = c.FF;
                }
                break;
            case 1530034690:
                if (key.equals("wavePhase")) {
                    b7 = c.CR;
                }
                break;
        }
        switch (b7) {
            case 0:
                return this.mRotationX;
            case 1:
                return this.mRotationY;
            case 2:
                return this.mTranslationX;
            case 3:
                return this.mTranslationY;
            case 4:
                return this.mTranslationZ;
            case 5:
                return this.mProgress;
            case 6:
                return this.mScaleX;
            case 7:
                return this.mScaleY;
            case 8:
                return this.mRotation;
            case 9:
                return this.mElevation;
            case 10:
                return this.mTransitionPathRotate;
            case 11:
                return this.mAlpha;
            case 12:
                return this.mWaveOffset;
            case 13:
                return this.mWavePhase;
            default:
                if (!key.startsWith("CUSTOM")) {
                    Log.v("WARNING! KeyCycle", "  UNKNOWN  " + key);
                    return Float.NaN;
                }
                return Float.NaN;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key c(Key src) {
        super.c(src);
        KeyCycle keyCycle = (KeyCycle) src;
        this.mTransitionEasing = keyCycle.mTransitionEasing;
        this.mCurveFit = keyCycle.mCurveFit;
        this.mWaveShape = keyCycle.mWaveShape;
        this.mCustomWaveShape = keyCycle.mCustomWaveShape;
        this.mWavePeriod = keyCycle.mWavePeriod;
        this.mWaveOffset = keyCycle.mWaveOffset;
        this.mWavePhase = keyCycle.mWavePhase;
        this.mProgress = keyCycle.mProgress;
        this.mWaveVariesBy = keyCycle.mWaveVariesBy;
        this.mAlpha = keyCycle.mAlpha;
        this.mElevation = keyCycle.mElevation;
        this.mRotation = keyCycle.mRotation;
        this.mTransitionPathRotate = keyCycle.mTransitionPathRotate;
        this.mRotationX = keyCycle.mRotationX;
        this.mRotationY = keyCycle.mRotationY;
        this.mScaleX = keyCycle.mScaleX;
        this.mScaleY = keyCycle.mScaleY;
        this.mTranslationX = keyCycle.mTranslationX;
        this.mTranslationY = keyCycle.mTranslationY;
        this.mTranslationZ = keyCycle.mTranslationZ;
        return this;
    }
}
