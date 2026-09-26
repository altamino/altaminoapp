package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import com.google.common.base.c;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes8.dex */
class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {
    static final int CARTESIAN = 2;
    public static final boolean DEBUG = false;
    static final int PERPENDICULAR = 1;
    public static final String TAG = "MotionPaths";
    static String[] names = {"position", "x", "y", "width", "height", "pathRotate"};
    private float height;
    private Easing mKeyFrameEasing;
    private float position;
    int visibility;
    private float width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f136x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f137y;
    private float alpha = 1.0f;
    int mVisibilityMode = 0;
    private boolean applyElevation = false;
    private float elevation = 0.0f;
    private float rotation = 0.0f;
    private float rotationX = 0.0f;
    public float rotationY = 0.0f;
    private float scaleX = 1.0f;
    private float scaleY = 1.0f;
    private float mPivotX = Float.NaN;
    private float mPivotY = Float.NaN;
    private float translationX = 0.0f;
    private float translationY = 0.0f;
    private float translationZ = 0.0f;
    private int mDrawPath = 0;
    private float mPathRotate = Float.NaN;
    private float mProgress = Float.NaN;
    private int mAnimateRelativeTo = -1;
    LinkedHashMap<String, ConstraintAttribute> attributes = new LinkedHashMap<>();
    int mMode = 0;
    double[] mTempValue = new double[18];
    double[] mTempDelta = new double[18];

    void h(float x6, float y6, float w5, float h) {
        this.f136x = x6;
        this.f137y = y6;
        this.width = w5;
        this.height = h;
    }

    public void c(ConstraintSet.Constraint c7) {
        ConstraintSet.PropertySet propertySet = c7.propertySet;
        int i10 = propertySet.mVisibilityMode;
        this.mVisibilityMode = i10;
        int i11 = propertySet.visibility;
        this.visibility = i11;
        this.alpha = (i11 == 0 || i10 != 0) ? propertySet.alpha : 0.0f;
        ConstraintSet.Transform transform = c7.transform;
        this.applyElevation = transform.applyElevation;
        this.elevation = transform.elevation;
        this.rotation = transform.rotation;
        this.rotationX = transform.rotationX;
        this.rotationY = transform.rotationY;
        this.scaleX = transform.scaleX;
        this.scaleY = transform.scaleY;
        this.mPivotX = transform.transformPivotX;
        this.mPivotY = transform.transformPivotY;
        this.translationX = transform.translationX;
        this.translationY = transform.translationY;
        this.translationZ = transform.translationZ;
        this.mKeyFrameEasing = Easing.c(c7.motion.mTransitionEasing);
        ConstraintSet.Motion motion = c7.motion;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mProgress = c7.propertySet.mProgress;
        for (String str : c7.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = c7.mCustomConstraints.get(str);
            if (constraintAttribute.g()) {
                this.attributes.put(str, constraintAttribute);
            }
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public int compareTo(MotionConstrainedPoint o) {
        return Float.compare(this.position, o.position);
    }

    void f(MotionConstrainedPoint points, HashSet<String> keySet) {
        if (e(this.alpha, points.alpha)) {
            keySet.add("alpha");
        }
        if (e(this.elevation, points.elevation)) {
            keySet.add("elevation");
        }
        int i10 = this.visibility;
        int i11 = points.visibility;
        if (i10 != i11 && this.mVisibilityMode == 0 && (i10 == 0 || i11 == 0)) {
            keySet.add("alpha");
        }
        if (e(this.rotation, points.rotation)) {
            keySet.add(Key.ROTATION);
        }
        if (!Float.isNaN(this.mPathRotate) || !Float.isNaN(points.mPathRotate)) {
            keySet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.mProgress) || !Float.isNaN(points.mProgress)) {
            keySet.add("progress");
        }
        if (e(this.rotationX, points.rotationX)) {
            keySet.add("rotationX");
        }
        if (e(this.rotationY, points.rotationY)) {
            keySet.add("rotationY");
        }
        if (e(this.mPivotX, points.mPivotX)) {
            keySet.add(Key.PIVOT_X);
        }
        if (e(this.mPivotY, points.mPivotY)) {
            keySet.add(Key.PIVOT_Y);
        }
        if (e(this.scaleX, points.scaleX)) {
            keySet.add("scaleX");
        }
        if (e(this.scaleY, points.scaleY)) {
            keySet.add("scaleY");
        }
        if (e(this.translationX, points.translationX)) {
            keySet.add("translationX");
        }
        if (e(this.translationY, points.translationY)) {
            keySet.add("translationY");
        }
        if (e(this.translationZ, points.translationZ)) {
            keySet.add("translationZ");
        }
    }

    public void i(Rect rect, View view, int rotation, float prevous) {
        h(rect.left, rect.top, rect.width(), rect.height());
        b(view);
        this.mPivotX = Float.NaN;
        this.mPivotY = Float.NaN;
        if (rotation == 1) {
            this.rotation = prevous - 90.0f;
        } else {
            if (rotation != 2) {
                return;
            }
            this.rotation = prevous + 90.0f;
        }
    }

    public void j(Rect cw, ConstraintSet constraintSet, int rotation, int viewId) {
        h(cw.left, cw.top, cw.width(), cw.height());
        c(constraintSet.z(viewId));
        if (rotation != 1) {
            if (rotation != 2) {
                if (rotation != 3) {
                    if (rotation != 4) {
                        return;
                    }
                }
            }
            float f = this.rotation + 90.0f;
            this.rotation = f;
            if (f > 180.0f) {
                this.rotation = f - 360.0f;
                return;
            }
            return;
        }
        this.rotation -= 90.0f;
    }

    private boolean e(float a7, float b7) {
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

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void a(HashMap<String, ViewSpline> splines, int mFramePosition) {
        for (String str : splines.keySet()) {
            ViewSpline viewSpline = splines.get(str);
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
                case -760884510:
                    if (str.equals(Key.PIVOT_X)) {
                        b7 = 8;
                    }
                    break;
                case -760884509:
                    if (str.equals(Key.PIVOT_Y)) {
                        b7 = 9;
                    }
                    break;
                case -40300674:
                    if (str.equals(Key.ROTATION)) {
                        b7 = 10;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        b7 = c.VT;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        b7 = c.FF;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        b7 = c.CR;
                    }
                    break;
            }
            float f = 1.0f;
            float f6 = 0.0f;
            switch (b7) {
                case 0:
                    if (!Float.isNaN(this.rotationX)) {
                        f6 = this.rotationX;
                    }
                    viewSpline.c(mFramePosition, f6);
                    break;
                case 1:
                    if (!Float.isNaN(this.rotationY)) {
                        f6 = this.rotationY;
                    }
                    viewSpline.c(mFramePosition, f6);
                    break;
                case 2:
                    if (!Float.isNaN(this.translationX)) {
                        f6 = this.translationX;
                    }
                    viewSpline.c(mFramePosition, f6);
                    break;
                case 3:
                    if (!Float.isNaN(this.translationY)) {
                        f6 = this.translationY;
                    }
                    viewSpline.c(mFramePosition, f6);
                    break;
                case 4:
                    if (!Float.isNaN(this.translationZ)) {
                        f6 = this.translationZ;
                    }
                    viewSpline.c(mFramePosition, f6);
                    break;
                case 5:
                    if (!Float.isNaN(this.mProgress)) {
                        f6 = this.mProgress;
                    }
                    viewSpline.c(mFramePosition, f6);
                    break;
                case 6:
                    if (!Float.isNaN(this.scaleX)) {
                        f = this.scaleX;
                    }
                    viewSpline.c(mFramePosition, f);
                    break;
                case 7:
                    if (!Float.isNaN(this.scaleY)) {
                        f = this.scaleY;
                    }
                    viewSpline.c(mFramePosition, f);
                    break;
                case 8:
                    if (!Float.isNaN(this.mPivotX)) {
                        f6 = this.mPivotX;
                    }
                    viewSpline.c(mFramePosition, f6);
                    break;
                case 9:
                    if (!Float.isNaN(this.mPivotY)) {
                        f6 = this.mPivotY;
                    }
                    viewSpline.c(mFramePosition, f6);
                    break;
                case 10:
                    if (!Float.isNaN(this.rotation)) {
                        f6 = this.rotation;
                    }
                    viewSpline.c(mFramePosition, f6);
                    break;
                case 11:
                    if (!Float.isNaN(this.elevation)) {
                        f6 = this.elevation;
                    }
                    viewSpline.c(mFramePosition, f6);
                    break;
                case 12:
                    if (!Float.isNaN(this.mPathRotate)) {
                        f6 = this.mPathRotate;
                    }
                    viewSpline.c(mFramePosition, f6);
                    break;
                case 13:
                    if (!Float.isNaN(this.alpha)) {
                        f = this.alpha;
                    }
                    viewSpline.c(mFramePosition, f);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.attributes.containsKey(str2)) {
                            ConstraintAttribute constraintAttribute = this.attributes.get(str2);
                            if (viewSpline instanceof ViewSpline.CustomSet) {
                                ((ViewSpline.CustomSet) viewSpline).i(mFramePosition, constraintAttribute);
                            } else {
                                Log.e("MotionPaths", str + " ViewSpline not a CustomSet frame = " + mFramePosition + ", value" + constraintAttribute.e() + viewSpline);
                            }
                        }
                    } else {
                        Log.e("MotionPaths", "UNKNOWN spline " + str);
                    }
                    break;
            }
        }
    }

    public void b(View view) {
        float alpha;
        this.visibility = view.getVisibility();
        if (view.getVisibility() != 0) {
            alpha = 0.0f;
        } else {
            alpha = view.getAlpha();
        }
        this.alpha = alpha;
        this.applyElevation = false;
        this.elevation = view.getElevation();
        this.rotation = view.getRotation();
        this.rotationX = view.getRotationX();
        this.rotationY = view.getRotationY();
        this.scaleX = view.getScaleX();
        this.scaleY = view.getScaleY();
        this.mPivotX = view.getPivotX();
        this.mPivotY = view.getPivotY();
        this.translationX = view.getTranslationX();
        this.translationY = view.getTranslationY();
        this.translationZ = view.getTranslationZ();
    }

    public void k(View view) {
        h(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        b(view);
    }
}
