package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes10.dex */
class MotionPaths implements Comparable<MotionPaths> {
    static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    static final int PERPENDICULAR = 1;
    static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";
    static String[] names = {"position", "x", "y", "width", "height", "pathRotate"};
    LinkedHashMap<String, ConstraintAttribute> attributes;
    float height;
    int mAnimateCircleAngleTo;
    int mAnimateRelativeTo;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mRelativeAngle;
    MotionController mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float position;
    float time;
    float width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    float f138x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    float f139y;
    int mDrawPath = 0;
    float mPathRotate = Float.NaN;
    float mProgress = Float.NaN;

    public MotionPaths() {
        int i10 = Key.UNSET;
        this.mPathMotionArc = i10;
        this.mAnimateRelativeTo = i10;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.attributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    void e(double[] data, int[] toUse) {
        float[] fArr = {this.position, this.f138x, this.f139y, this.width, this.height, this.mPathRotate};
        int i10 = 0;
        for (int i11 : toUse) {
            if (i11 < 6) {
                data[i10] = fArr[i11];
                i10++;
            }
        }
    }

    void f(double p, int[] toUse, double[] data, float[] point, int offset) {
        float fSin = this.f138x;
        float fCos = this.f139y;
        float f = this.width;
        float f6 = this.height;
        for (int i10 = 0; i10 < toUse.length; i10++) {
            float f7 = (float) data[i10];
            int i11 = toUse[i10];
            if (i11 == 1) {
                fSin = f7;
            } else if (i11 == 2) {
                fCos = f7;
            } else if (i11 == 3) {
                f = f7;
            } else if (i11 == 4) {
                f6 = f7;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr = new float[2];
            motionController.i(p, fArr, new float[2]);
            float f10 = fArr[0];
            float f11 = fArr[1];
            double d = f10;
            double d2 = fSin;
            double d6 = fCos;
            fSin = (float) ((d + (Math.sin(d6) * d2)) - ((double) (f / 2.0f)));
            fCos = (float) ((((double) f11) - (d2 * Math.cos(d6))) - ((double) (f6 / 2.0f)));
        }
        point[offset] = fSin + (f / 2.0f) + 0.0f;
        point[offset + 1] = fCos + (f6 / 2.0f) + 0.0f;
    }

    void r(float x6, float y6, float w5, float h) {
        this.f138x = x6;
        this.f139y = y6;
        this.width = w5;
        this.height = h;
    }

    public void a(ConstraintSet.Constraint c7) {
        this.mKeyFrameEasing = Easing.c(c7.motion.mTransitionEasing);
        ConstraintSet.Motion motion = c7.motion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateCircleAngleTo = motion.mAnimateCircleAngleTo;
        this.mProgress = c7.propertySet.mProgress;
        this.mRelativeAngle = c7.layout.circleAngle;
        for (String str : c7.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = c7.mCustomConstraints.get(str);
            if (constraintAttribute != null && constraintAttribute.g()) {
                this.attributes.put(str, constraintAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NonNull MotionPaths o) {
        return Float.compare(this.position, o.position);
    }

    void d(MotionPaths points, boolean[] mask, String[] custom, boolean arcMode) {
        boolean zC = c(this.f138x, points.f138x);
        boolean zC2 = c(this.f139y, points.f139y);
        mask[0] = mask[0] | c(this.position, points.position);
        boolean z6 = zC | zC2 | arcMode;
        mask[1] = mask[1] | z6;
        mask[2] = z6 | mask[2];
        mask[3] = mask[3] | c(this.width, points.width);
        mask[4] = c(this.height, points.height) | mask[4];
    }

    void h(double p, int[] toUse, double[] data, float[] point, double[] vdata, float[] velocity) {
        float f = this.f138x;
        float f6 = this.f139y;
        float f7 = this.width;
        float f10 = this.height;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        for (int i10 = 0; i10 < toUse.length; i10++) {
            float f15 = (float) data[i10];
            float f16 = (float) vdata[i10];
            int i11 = toUse[i10];
            if (i11 == 1) {
                f = f15;
                f11 = f16;
            } else if (i11 == 2) {
                f6 = f15;
                f13 = f16;
            } else if (i11 == 3) {
                f7 = f15;
                f12 = f16;
            } else if (i11 == 4) {
                f10 = f15;
                f14 = f16;
            }
        }
        float f17 = 2.0f;
        float f18 = (f12 / 2.0f) + f11;
        float fCos = (f14 / 2.0f) + f13;
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.i(p, fArr, fArr2);
            float f19 = fArr[0];
            float f20 = fArr[1];
            float f21 = fArr2[0];
            float f22 = fArr2[1];
            double d = f;
            double d2 = f6;
            float fSin = (float) ((((double) f19) + (Math.sin(d2) * d)) - ((double) (f7 / 2.0f)));
            float fCos2 = (float) ((((double) f20) - (d * Math.cos(d2))) - ((double) (f10 / 2.0f)));
            double d6 = f11;
            double d7 = f13;
            float fSin2 = (float) (((double) f21) + (Math.sin(d2) * d6) + (Math.cos(d2) * d7));
            fCos = (float) ((((double) f22) - (d6 * Math.cos(d2))) + (Math.sin(d2) * d7));
            f18 = fSin2;
            f = fSin;
            f6 = fCos2;
            f17 = 2.0f;
        }
        point[0] = f + (f7 / f17) + 0.0f;
        point[1] = f6 + (f10 / f17) + 0.0f;
        velocity[0] = f18;
        velocity[1] = fCos;
    }

    int i(String name, double[] value, int offset) {
        ConstraintAttribute constraintAttribute = this.attributes.get(name);
        int i10 = 0;
        if (constraintAttribute == null) {
            return 0;
        }
        if (constraintAttribute.h() == 1) {
            value[offset] = constraintAttribute.e();
            return 1;
        }
        int iH = constraintAttribute.h();
        float[] fArr = new float[iH];
        constraintAttribute.f(fArr);
        while (i10 < iH) {
            value[offset] = fArr[i10];
            i10++;
            offset++;
        }
        return iH;
    }

    int j(String name) {
        ConstraintAttribute constraintAttribute = this.attributes.get(name);
        if (constraintAttribute == null) {
            return 0;
        }
        return constraintAttribute.h();
    }

    void k(int[] toUse, double[] data, float[] path, int offset) {
        float f = this.f138x;
        float fCos = this.f139y;
        float f6 = this.width;
        float f7 = this.height;
        for (int i10 = 0; i10 < toUse.length; i10++) {
            float f10 = (float) data[i10];
            int i11 = toUse[i10];
            if (i11 == 1) {
                f = f10;
            } else if (i11 == 2) {
                fCos = f10;
            } else if (i11 == 3) {
                f6 = f10;
            } else if (i11 == 4) {
                f7 = f10;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float fJ = motionController.j();
            float fK = this.mRelativeToController.k();
            double d = f;
            double d2 = fCos;
            float fSin = (float) ((((double) fJ) + (Math.sin(d2) * d)) - ((double) (f6 / 2.0f)));
            fCos = (float) ((((double) fK) - (d * Math.cos(d2))) - ((double) (f7 / 2.0f)));
            f = fSin;
        }
        float f11 = f6 + f;
        float f12 = f7 + fCos;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        path[offset] = f + 0.0f;
        path[offset + 1] = fCos + 0.0f;
        path[offset + 2] = f11 + 0.0f;
        path[offset + 3] = fCos + 0.0f;
        path[offset + 4] = f11 + 0.0f;
        path[offset + 5] = f12 + 0.0f;
        path[offset + 6] = f + 0.0f;
        path[offset + 7] = f12 + 0.0f;
    }

    boolean l(String name) {
        return this.attributes.containsKey(name);
    }

    void n(KeyPosition c7, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        float f = c7.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = c7.mDrawPath;
        float f6 = Float.isNaN(c7.mPercentWidth) ? f : c7.mPercentWidth;
        float f7 = Float.isNaN(c7.mPercentHeight) ? f : c7.mPercentHeight;
        float f10 = endTimePoint.width;
        float f11 = startTimePoint.width;
        float f12 = endTimePoint.height;
        float f13 = startTimePoint.height;
        this.position = this.time;
        float f14 = startTimePoint.f138x;
        float f15 = startTimePoint.f139y;
        float f16 = (endTimePoint.f138x + (f10 / 2.0f)) - ((f11 / 2.0f) + f14);
        float f17 = (endTimePoint.f139y + (f12 / 2.0f)) - (f15 + (f13 / 2.0f));
        float f18 = (f10 - f11) * f6;
        float f19 = f18 / 2.0f;
        this.f138x = (int) ((f14 + (f16 * f)) - f19);
        float f20 = (f12 - f13) * f7;
        float f21 = f20 / 2.0f;
        this.f139y = (int) ((f15 + (f17 * f)) - f21);
        this.width = (int) (f11 + f18);
        this.height = (int) (f13 + f20);
        float f22 = Float.isNaN(c7.mPercentX) ? f : c7.mPercentX;
        float f23 = Float.isNaN(c7.mAltPercentY) ? 0.0f : c7.mAltPercentY;
        if (!Float.isNaN(c7.mPercentY)) {
            f = c7.mPercentY;
        }
        float f24 = Float.isNaN(c7.mAltPercentX) ? 0.0f : c7.mAltPercentX;
        this.mMode = 0;
        this.f138x = (int) (((startTimePoint.f138x + (f22 * f16)) + (f24 * f17)) - f19);
        this.f139y = (int) (((startTimePoint.f139y + (f16 * f23)) + (f17 * f)) - f21);
        this.mKeyFrameEasing = Easing.c(c7.mTransitionEasing);
        this.mPathMotionArc = c7.mPathMotionArc;
    }

    void o(KeyPosition c7, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        float f = c7.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = c7.mDrawPath;
        float f6 = Float.isNaN(c7.mPercentWidth) ? f : c7.mPercentWidth;
        float f7 = Float.isNaN(c7.mPercentHeight) ? f : c7.mPercentHeight;
        float f10 = endTimePoint.width - startTimePoint.width;
        float f11 = endTimePoint.height - startTimePoint.height;
        this.position = this.time;
        if (!Float.isNaN(c7.mPercentX)) {
            f = c7.mPercentX;
        }
        float f12 = startTimePoint.f138x;
        float f13 = startTimePoint.width;
        float f14 = startTimePoint.f139y;
        float f15 = startTimePoint.height;
        float f16 = (endTimePoint.f138x + (endTimePoint.width / 2.0f)) - ((f13 / 2.0f) + f12);
        float f17 = (endTimePoint.f139y + (endTimePoint.height / 2.0f)) - ((f15 / 2.0f) + f14);
        float f18 = f16 * f;
        float f19 = f10 * f6;
        float f20 = f19 / 2.0f;
        this.f138x = (int) ((f12 + f18) - f20);
        float f21 = f * f17;
        float f22 = f11 * f7;
        float f23 = f22 / 2.0f;
        this.f139y = (int) ((f14 + f21) - f23);
        this.width = (int) (f13 + f19);
        this.height = (int) (f15 + f22);
        float f24 = Float.isNaN(c7.mPercentY) ? 0.0f : c7.mPercentY;
        this.mMode = 1;
        float f25 = (int) ((startTimePoint.f138x + f18) - f20);
        float f26 = (int) ((startTimePoint.f139y + f21) - f23);
        this.f138x = f25 + ((-f17) * f24);
        this.f139y = f26 + (f16 * f24);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.c(c7.mTransitionEasing);
        this.mPathMotionArc = c7.mPathMotionArc;
    }

    void p(int parentWidth, int parentHeight, KeyPosition c7, MotionPaths s, MotionPaths e) {
        float fMin;
        float f;
        float f6 = c7.mFramePosition / 100.0f;
        this.time = f6;
        this.mDrawPath = c7.mDrawPath;
        this.mMode = c7.mPositionType;
        float f7 = Float.isNaN(c7.mPercentWidth) ? f6 : c7.mPercentWidth;
        float f10 = Float.isNaN(c7.mPercentHeight) ? f6 : c7.mPercentHeight;
        float f11 = e.width;
        float f12 = s.width;
        float f13 = e.height;
        float f14 = s.height;
        this.position = this.time;
        this.width = (int) (f12 + ((f11 - f12) * f7));
        this.height = (int) (f14 + ((f13 - f14) * f10));
        int i10 = c7.mPositionType;
        if (i10 == 1) {
            float f15 = Float.isNaN(c7.mPercentX) ? f6 : c7.mPercentX;
            float f16 = e.f138x;
            float f17 = s.f138x;
            this.f138x = (f15 * (f16 - f17)) + f17;
            if (!Float.isNaN(c7.mPercentY)) {
                f6 = c7.mPercentY;
            }
            float f18 = e.f139y;
            float f19 = s.f139y;
            this.f139y = (f6 * (f18 - f19)) + f19;
        } else if (i10 != 2) {
            float f20 = Float.isNaN(c7.mPercentX) ? f6 : c7.mPercentX;
            float f21 = e.f138x;
            float f22 = s.f138x;
            this.f138x = (f20 * (f21 - f22)) + f22;
            if (!Float.isNaN(c7.mPercentY)) {
                f6 = c7.mPercentY;
            }
            float f23 = e.f139y;
            float f24 = s.f139y;
            this.f139y = (f6 * (f23 - f24)) + f24;
        } else {
            if (Float.isNaN(c7.mPercentX)) {
                float f25 = e.f138x;
                float f26 = s.f138x;
                fMin = ((f25 - f26) * f6) + f26;
            } else {
                fMin = Math.min(f10, f7) * c7.mPercentX;
            }
            this.f138x = fMin;
            if (Float.isNaN(c7.mPercentY)) {
                float f27 = e.f139y;
                float f28 = s.f139y;
                f = (f6 * (f27 - f28)) + f28;
            } else {
                f = c7.mPercentY;
            }
            this.f139y = f;
        }
        this.mAnimateRelativeTo = s.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.c(c7.mTransitionEasing);
        this.mPathMotionArc = c7.mPathMotionArc;
    }

    void q(int parentWidth, int parentHeight, KeyPosition c7, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        float f = c7.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = c7.mDrawPath;
        float f6 = Float.isNaN(c7.mPercentWidth) ? f : c7.mPercentWidth;
        float f7 = Float.isNaN(c7.mPercentHeight) ? f : c7.mPercentHeight;
        float f10 = endTimePoint.width;
        float f11 = startTimePoint.width;
        float f12 = endTimePoint.height;
        float f13 = startTimePoint.height;
        this.position = this.time;
        float f14 = startTimePoint.f138x;
        float f15 = startTimePoint.f139y;
        float f16 = endTimePoint.f138x + (f10 / 2.0f);
        float f17 = endTimePoint.f139y + (f12 / 2.0f);
        float f18 = (f10 - f11) * f6;
        this.f138x = (int) ((f14 + ((f16 - ((f11 / 2.0f) + f14)) * f)) - (f18 / 2.0f));
        float f19 = (f12 - f13) * f7;
        this.f139y = (int) ((f15 + ((f17 - (f15 + (f13 / 2.0f))) * f)) - (f19 / 2.0f));
        this.width = (int) (f11 + f18);
        this.height = (int) (f13 + f19);
        this.mMode = 2;
        if (!Float.isNaN(c7.mPercentX)) {
            this.f138x = (int) (c7.mPercentX * ((int) (parentWidth - this.width)));
        }
        if (!Float.isNaN(c7.mPercentY)) {
            this.f139y = (int) (c7.mPercentY * ((int) (parentHeight - this.height)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.c(c7.mTransitionEasing);
        this.mPathMotionArc = c7.mPathMotionArc;
    }

    void s(float locationX, float locationY, float[] mAnchorDpDt, int[] toUse, double[] deltaData, double[] data) {
        float f = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        float f10 = 0.0f;
        for (int i10 = 0; i10 < toUse.length; i10++) {
            float f11 = (float) deltaData[i10];
            double d = data[i10];
            int i11 = toUse[i10];
            if (i11 == 1) {
                f = f11;
            } else if (i11 == 2) {
                f7 = f11;
            } else if (i11 == 3) {
                f6 = f11;
            } else if (i11 == 4) {
                f10 = f11;
            }
        }
        float f12 = f - ((0.0f * f6) / 2.0f);
        float f13 = f7 - ((0.0f * f10) / 2.0f);
        mAnchorDpDt[0] = (f12 * (1.0f - locationX)) + (((f6 * 1.0f) + f12) * locationX) + 0.0f;
        mAnchorDpDt[1] = (f13 * (1.0f - locationY)) + (((f10 * 1.0f) + f13) * locationY) + 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void t(float position, View view, int[] toUse, double[] data, double[] slope, double[] cycle, boolean mForceMeasure) {
        float f;
        float f6;
        float f7 = this.f138x;
        float f10 = this.f139y;
        float f11 = this.width;
        float f12 = this.height;
        if (toUse.length != 0 && this.mTempValue.length <= toUse[toUse.length - 1]) {
            int i10 = toUse[toUse.length - 1] + 1;
            this.mTempValue = new double[i10];
            this.mTempDelta = new double[i10];
        }
        Arrays.fill(this.mTempValue, Double.NaN);
        for (int i11 = 0; i11 < toUse.length; i11++) {
            double[] dArr = this.mTempValue;
            int i12 = toUse[i11];
            dArr[i12] = data[i11];
            this.mTempDelta[i12] = slope[i11];
        }
        float f13 = Float.NaN;
        int i13 = 0;
        float f14 = 0.0f;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        while (true) {
            double[] dArr2 = this.mTempValue;
            if (i13 >= dArr2.length) {
                break;
            }
            boolean zIsNaN = Double.isNaN(dArr2[i13]);
            double d = com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE;
            if (zIsNaN && (cycle == null || cycle[i13] == com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE)) {
                f6 = f13;
            } else {
                if (cycle != null) {
                    d = cycle[i13];
                }
                if (!Double.isNaN(this.mTempValue[i13])) {
                    d = this.mTempValue[i13] + d;
                }
                f6 = f13;
                float f18 = (float) d;
                float f19 = (float) this.mTempDelta[i13];
                if (i13 == 1) {
                    f13 = f6;
                    f14 = f19;
                    f7 = f18;
                } else if (i13 == 2) {
                    f13 = f6;
                    f15 = f19;
                    f10 = f18;
                } else if (i13 == 3) {
                    f13 = f6;
                    f16 = f19;
                    f11 = f18;
                } else if (i13 == 4) {
                    f13 = f6;
                    f17 = f19;
                    f12 = f18;
                } else if (i13 == 5) {
                    f13 = f18;
                }
                i13++;
            }
            f13 = f6;
            i13++;
        }
        float f20 = f13;
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.i(position, fArr, fArr2);
            float f21 = fArr[0];
            float f22 = fArr[1];
            float f23 = fArr2[0];
            float f24 = fArr2[1];
            double d2 = f7;
            double d6 = f10;
            float fSin = (float) ((((double) f21) + (Math.sin(d6) * d2)) - ((double) (f11 / 2.0f)));
            f = f12;
            float fCos = (float) ((((double) f22) - (Math.cos(d6) * d2)) - ((double) (f12 / 2.0f)));
            double d7 = f14;
            double d10 = f15;
            float fSin2 = (float) (((double) f23) + (Math.sin(d6) * d7) + (Math.cos(d6) * d2 * d10));
            float fCos2 = (float) ((((double) f24) - (d7 * Math.cos(d6))) + (d2 * Math.sin(d6) * d10));
            if (slope.length >= 2) {
                slope[0] = fSin2;
                slope[1] = fCos2;
            }
            if (!Float.isNaN(f20)) {
                view.setRotation((float) (((double) f20) + Math.toDegrees(Math.atan2(fCos2, fSin2))));
            }
            f7 = fSin;
            f10 = fCos;
        } else {
            f = f12;
            if (!Float.isNaN(f20)) {
                view.setRotation((float) (((double) 0.0f) + ((double) f20) + Math.toDegrees(Math.atan2(f15 + (f17 / 2.0f), f14 + (f16 / 2.0f)))));
            }
        }
        if (view instanceof FloatLayout) {
            ((FloatLayout) view).a(f7, f10, f11 + f7, f10 + f);
            return;
        }
        float f25 = f7 + 0.5f;
        int i14 = (int) f25;
        float f26 = f10 + 0.5f;
        int i15 = (int) f26;
        int i16 = (int) (f25 + f11);
        int i17 = (int) (f26 + f);
        int i18 = i16 - i14;
        int i19 = i17 - i15;
        if (i18 != view.getMeasuredWidth() || i19 != view.getMeasuredHeight() || mForceMeasure) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i18, 1073741824), View.MeasureSpec.makeMeasureSpec(i19, 1073741824));
        }
        view.layout(i14, i15, i16, i17);
    }

    public void u(MotionController mc, MotionPaths relative) {
        double d = ((this.f138x + (this.width / 2.0f)) - relative.f138x) - (relative.width / 2.0f);
        double d2 = ((this.f139y + (this.height / 2.0f)) - relative.f139y) - (relative.height / 2.0f);
        this.mRelativeToController = mc;
        this.f138x = (float) Math.hypot(d2, d);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.f139y = (float) (Math.atan2(d2, d) + 1.5707963267948966d);
        } else {
            this.f139y = (float) Math.toRadians(this.mRelativeAngle);
        }
    }

    private boolean c(float a7, float b7) {
        if (!Float.isNaN(a7) && !Float.isNaN(b7)) {
            if (Math.abs(a7 - b7) <= 1.0E-6f) {
                return false;
            }
            return true;
        }
        if (Float.isNaN(a7) == Float.isNaN(b7)) {
            return false;
        }
        return true;
    }

    public MotionPaths(int parentWidth, int parentHeight, KeyPosition c7, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        int i10 = Key.UNSET;
        this.mPathMotionArc = i10;
        this.mAnimateRelativeTo = i10;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.attributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (startTimePoint.mAnimateRelativeTo != Key.UNSET) {
            p(parentWidth, parentHeight, c7, startTimePoint, endTimePoint);
            return;
        }
        int i11 = c7.mPositionType;
        if (i11 == 1) {
            o(c7, startTimePoint, endTimePoint);
        } else if (i11 != 2) {
            n(c7, startTimePoint, endTimePoint);
        } else {
            q(parentWidth, parentHeight, c7, startTimePoint, endTimePoint);
        }
    }
}
