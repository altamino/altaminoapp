package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class KeyPosition extends KeyPositionBase {
    public static final String DRAWPATH = "drawPath";
    static final int KEY_TYPE = 2;
    static final String NAME = "KeyPosition";
    public static final String PERCENT_HEIGHT = "percentHeight";
    public static final String PERCENT_WIDTH = "percentWidth";
    public static final String PERCENT_X = "percentX";
    public static final String PERCENT_Y = "percentY";
    public static final String SIZE_PERCENT = "sizePercent";
    private static final String TAG = "KeyPosition";
    public static final String TRANSITION_EASING = "transitionEasing";
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;
    String mTransitionEasing = null;
    int mPathMotionArc = Key.UNSET;
    int mDrawPath = 0;
    float mPercentWidth = Float.NaN;
    float mPercentHeight = Float.NaN;
    float mPercentX = Float.NaN;
    float mPercentY = Float.NaN;
    float mAltPercentX = Float.NaN;
    float mAltPercentY = Float.NaN;
    int mPositionType = 0;
    private float mCalculatedPositionX = Float.NaN;
    private float mCalculatedPositionY = Float.NaN;

    private static class Loader {
        private static final int CURVE_FIT = 4;
        private static final int DRAW_PATH = 5;
        private static final int FRAME_POSITION = 2;
        private static final int PATH_MOTION_ARC = 10;
        private static final int PERCENT_HEIGHT = 12;
        private static final int PERCENT_WIDTH = 11;
        private static final int PERCENT_X = 6;
        private static final int PERCENT_Y = 7;
        private static final int SIZE_PERCENT = 8;
        private static final int TARGET_ID = 1;
        private static final int TRANSITION_EASING = 3;
        private static final int TYPE = 9;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyPosition_motionTarget, 1);
            mAttrMap.append(R.styleable.KeyPosition_framePosition, 2);
            mAttrMap.append(R.styleable.KeyPosition_transitionEasing, 3);
            mAttrMap.append(R.styleable.KeyPosition_curveFit, 4);
            mAttrMap.append(R.styleable.KeyPosition_drawPath, 5);
            mAttrMap.append(R.styleable.KeyPosition_percentX, 6);
            mAttrMap.append(R.styleable.KeyPosition_percentY, 7);
            mAttrMap.append(R.styleable.KeyPosition_keyPositionType, 9);
            mAttrMap.append(R.styleable.KeyPosition_sizePercent, 8);
            mAttrMap.append(R.styleable.KeyPosition_percentWidth, 11);
            mAttrMap.append(R.styleable.KeyPosition_percentHeight, 12);
            mAttrMap.append(R.styleable.KeyPosition_pathMotionArc, 10);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(KeyPosition c7, TypedArray a7) {
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
                        if (a7.peekValue(index).type == 3) {
                            c7.mTransitionEasing = a7.getString(index);
                        } else {
                            c7.mTransitionEasing = Easing.NAMED_EASING[a7.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        c7.mCurveFit = a7.getInteger(index, c7.mCurveFit);
                        break;
                    case 5:
                        c7.mDrawPath = a7.getInt(index, c7.mDrawPath);
                        break;
                    case 6:
                        c7.mPercentX = a7.getFloat(index, c7.mPercentX);
                        break;
                    case 7:
                        c7.mPercentY = a7.getFloat(index, c7.mPercentY);
                        break;
                    case 8:
                        float f = a7.getFloat(index, c7.mPercentHeight);
                        c7.mPercentWidth = f;
                        c7.mPercentHeight = f;
                        break;
                    case 9:
                        c7.mPositionType = a7.getInt(index, c7.mPositionType);
                        break;
                    case 10:
                        c7.mPathMotionArc = a7.getInt(index, c7.mPathMotionArc);
                        break;
                    case 11:
                        c7.mPercentWidth = a7.getFloat(index, c7.mPercentWidth);
                        break;
                    case 12:
                        c7.mPercentHeight = a7.getFloat(index, c7.mPercentHeight);
                        break;
                    default:
                        Log.e(TypedValues.PositionType.NAME, "unused attribute 0x" + Integer.toHexString(index) + "   " + mAttrMap.get(index));
                        break;
                }
            }
            if (c7.mFramePosition == -1) {
                Log.e(TypedValues.PositionType.NAME, "no frame position");
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void a(HashMap<String, ViewSpline> splines) {
    }

    public void m(int type) {
        this.mPositionType = type;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: b */
    public Key clone() {
        return new KeyPosition().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void e(Context context, AttributeSet attrs) {
        Loader.b(this, context.obtainStyledAttributes(attrs, R.styleable.KeyPosition));
    }

    public KeyPosition() {
        this.mType = 2;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key c(Key src) {
        super.c(src);
        KeyPosition keyPosition = (KeyPosition) src;
        this.mTransitionEasing = keyPosition.mTransitionEasing;
        this.mPathMotionArc = keyPosition.mPathMotionArc;
        this.mDrawPath = keyPosition.mDrawPath;
        this.mPercentWidth = keyPosition.mPercentWidth;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = keyPosition.mPercentX;
        this.mPercentY = keyPosition.mPercentY;
        this.mAltPercentX = keyPosition.mAltPercentX;
        this.mAltPercentY = keyPosition.mAltPercentY;
        this.mCalculatedPositionX = keyPosition.mCalculatedPositionX;
        this.mCalculatedPositionY = keyPosition.mCalculatedPositionY;
        return this;
    }

    public void n(String tag, Object value) {
        tag.hashCode();
        switch (tag) {
            case "transitionEasing":
                this.mTransitionEasing = value.toString();
                break;
            case "percentWidth":
                this.mPercentWidth = k(value);
                break;
            case "percentHeight":
                this.mPercentHeight = k(value);
                break;
            case "drawPath":
                this.mDrawPath = l(value);
                break;
            case "sizePercent":
                float fK = k(value);
                this.mPercentWidth = fK;
                this.mPercentHeight = fK;
                break;
            case "percentX":
                this.mPercentX = k(value);
                break;
            case "percentY":
                this.mPercentY = k(value);
                break;
        }
    }
}
