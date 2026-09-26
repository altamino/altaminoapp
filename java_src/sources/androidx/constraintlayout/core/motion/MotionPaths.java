package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    public static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    public static final int PERPENDICULAR = 1;
    public static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";
    static String[] names = {"position", "x", "y", "width", "height", "pathRotate"};
    HashMap<String, CustomVariable> customAttributes;
    float height;
    int mAnimateCircleAngleTo;
    int mAnimateRelativeTo;
    int mDrawPath;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mPathRotate;
    float mProgress;
    float mRelativeAngle;
    Motion mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float position;
    float time;
    float width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    float f127x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    float f128y;

    public MotionPaths() {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.customAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    void h(float f, float f6, float f7, float f10) {
        this.f127x = f;
        this.f128y = f6;
        this.width = f7;
        this.height = f10;
    }

    public void a(MotionWidget motionWidget) {
        this.mKeyFrameEasing = Easing.c(motionWidget.motion.mTransitionEasing);
        MotionWidget.Motion motion = motionWidget.motion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateCircleAngleTo = motion.mAnimateCircleAngleTo;
        this.mProgress = motionWidget.propertySet.mProgress;
        this.mRelativeAngle = 0.0f;
        for (String str : motionWidget.c()) {
            CustomVariable customVariableB = motionWidget.b(str);
            if (customVariableB != null && customVariableB.e()) {
                this.customAttributes.put(str, customVariableB);
            }
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.position, motionPaths.position);
    }

    void c(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f6 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f7 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f10 = motionPaths2.width;
        float f11 = motionPaths.width;
        float f12 = motionPaths2.height;
        float f13 = motionPaths.height;
        this.position = this.time;
        float f14 = motionPaths.f127x;
        float f15 = motionPaths.f128y;
        float f16 = (motionPaths2.f127x + (f10 / 2.0f)) - ((f11 / 2.0f) + f14);
        float f17 = (motionPaths2.f128y + (f12 / 2.0f)) - (f15 + (f13 / 2.0f));
        float f18 = (f10 - f11) * f6;
        float f19 = f18 / 2.0f;
        this.f127x = (int) ((f14 + (f16 * f)) - f19);
        float f20 = (f12 - f13) * f7;
        float f21 = f20 / 2.0f;
        this.f128y = (int) ((f15 + (f17 * f)) - f21);
        this.width = (int) (f11 + f18);
        this.height = (int) (f13 + f20);
        float f22 = Float.isNaN(motionKeyPosition.mPercentX) ? f : motionKeyPosition.mPercentX;
        float f23 = Float.isNaN(motionKeyPosition.mAltPercentY) ? 0.0f : motionKeyPosition.mAltPercentY;
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            f = motionKeyPosition.mPercentY;
        }
        float f24 = Float.isNaN(motionKeyPosition.mAltPercentX) ? 0.0f : motionKeyPosition.mAltPercentX;
        this.mMode = 0;
        this.f127x = (int) (((motionPaths.f127x + (f22 * f16)) + (f24 * f17)) - f19);
        this.f128y = (int) (((motionPaths.f128y + (f16 * f23)) + (f17 * f)) - f21);
        this.mKeyFrameEasing = Easing.c(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void d(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f6 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f7 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f10 = motionPaths2.width - motionPaths.width;
        float f11 = motionPaths2.height - motionPaths.height;
        this.position = this.time;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            f = motionKeyPosition.mPercentX;
        }
        float f12 = motionPaths.f127x;
        float f13 = motionPaths.width;
        float f14 = motionPaths.f128y;
        float f15 = motionPaths.height;
        float f16 = (motionPaths2.f127x + (motionPaths2.width / 2.0f)) - ((f13 / 2.0f) + f12);
        float f17 = (motionPaths2.f128y + (motionPaths2.height / 2.0f)) - ((f15 / 2.0f) + f14);
        float f18 = f16 * f;
        float f19 = f10 * f6;
        float f20 = f19 / 2.0f;
        this.f127x = (int) ((f12 + f18) - f20);
        float f21 = f * f17;
        float f22 = f11 * f7;
        float f23 = f22 / 2.0f;
        this.f128y = (int) ((f14 + f21) - f23);
        this.width = (int) (f13 + f19);
        this.height = (int) (f15 + f22);
        float f24 = Float.isNaN(motionKeyPosition.mPercentY) ? 0.0f : motionKeyPosition.mPercentY;
        this.mMode = 1;
        float f25 = (int) ((motionPaths.f127x + f18) - f20);
        float f26 = (int) ((motionPaths.f128y + f21) - f23);
        this.f127x = f25 + ((-f17) * f24);
        this.f128y = f26 + (f16 * f24);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.c(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void e(int i10, int i11, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float fMin;
        float f;
        float f6 = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f6;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mMode = motionKeyPosition.mPositionType;
        float f7 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f6 : motionKeyPosition.mPercentWidth;
        float f10 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f6 : motionKeyPosition.mPercentHeight;
        float f11 = motionPaths2.width;
        float f12 = motionPaths.width;
        float f13 = motionPaths2.height;
        float f14 = motionPaths.height;
        this.position = this.time;
        this.width = (int) (f12 + ((f11 - f12) * f7));
        this.height = (int) (f14 + ((f13 - f14) * f10));
        int i12 = motionKeyPosition.mPositionType;
        if (i12 == 1) {
            float f15 = Float.isNaN(motionKeyPosition.mPercentX) ? f6 : motionKeyPosition.mPercentX;
            float f16 = motionPaths2.f127x;
            float f17 = motionPaths.f127x;
            this.f127x = (f15 * (f16 - f17)) + f17;
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f6 = motionKeyPosition.mPercentY;
            }
            float f18 = motionPaths2.f128y;
            float f19 = motionPaths.f128y;
            this.f128y = (f6 * (f18 - f19)) + f19;
        } else if (i12 != 2) {
            float f20 = Float.isNaN(motionKeyPosition.mPercentX) ? f6 : motionKeyPosition.mPercentX;
            float f21 = motionPaths2.f127x;
            float f22 = motionPaths.f127x;
            this.f127x = (f20 * (f21 - f22)) + f22;
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f6 = motionKeyPosition.mPercentY;
            }
            float f23 = motionPaths2.f128y;
            float f24 = motionPaths.f128y;
            this.f128y = (f6 * (f23 - f24)) + f24;
        } else {
            if (Float.isNaN(motionKeyPosition.mPercentX)) {
                float f25 = motionPaths2.f127x;
                float f26 = motionPaths.f127x;
                fMin = ((f25 - f26) * f6) + f26;
            } else {
                fMin = Math.min(f10, f7) * motionKeyPosition.mPercentX;
            }
            this.f127x = fMin;
            if (Float.isNaN(motionKeyPosition.mPercentY)) {
                float f27 = motionPaths2.f128y;
                float f28 = motionPaths.f128y;
                f = (f6 * (f27 - f28)) + f28;
            } else {
                f = motionKeyPosition.mPercentY;
            }
            this.f128y = f;
        }
        this.mAnimateRelativeTo = motionPaths.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.c(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void f(int i10, int i11, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f6 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f : motionKeyPosition.mPercentWidth;
        float f7 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f : motionKeyPosition.mPercentHeight;
        float f10 = motionPaths2.width;
        float f11 = motionPaths.width;
        float f12 = motionPaths2.height;
        float f13 = motionPaths.height;
        this.position = this.time;
        float f14 = motionPaths.f127x;
        float f15 = motionPaths.f128y;
        float f16 = motionPaths2.f127x + (f10 / 2.0f);
        float f17 = motionPaths2.f128y + (f12 / 2.0f);
        float f18 = (f10 - f11) * f6;
        this.f127x = (int) ((f14 + ((f16 - ((f11 / 2.0f) + f14)) * f)) - (f18 / 2.0f));
        float f19 = (f12 - f13) * f7;
        this.f128y = (int) ((f15 + ((f17 - (f15 + (f13 / 2.0f))) * f)) - (f19 / 2.0f));
        this.width = (int) (f11 + f18);
        this.height = (int) (f13 + f19);
        this.mMode = 2;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            this.f127x = (int) (motionKeyPosition.mPercentX * ((int) (i10 - this.width)));
        }
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            this.f128y = (int) (motionKeyPosition.mPercentY * ((int) (i11 - this.height)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.c(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    public MotionPaths(int i10, int i11, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.customAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (motionPaths.mAnimateRelativeTo != -1) {
            e(i10, i11, motionKeyPosition, motionPaths, motionPaths2);
            return;
        }
        int i12 = motionKeyPosition.mPositionType;
        if (i12 == 1) {
            d(motionKeyPosition, motionPaths, motionPaths2);
        } else if (i12 != 2) {
            c(motionKeyPosition, motionPaths, motionPaths2);
        } else {
            f(i10, i11, motionKeyPosition, motionPaths, motionPaths2);
        }
    }
}
