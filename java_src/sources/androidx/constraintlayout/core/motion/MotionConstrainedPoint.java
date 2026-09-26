package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.Easing;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes9.dex */
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
    private float f125x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f126y;
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
    LinkedHashMap<String, CustomVariable> mCustomVariable = new LinkedHashMap<>();
    int mMode = 0;
    double[] mTempValue = new double[18];
    double[] mTempDelta = new double[18];

    void c(float f, float f6, float f7, float f10) {
        this.f125x = f;
        this.f126y = f6;
        this.width = f7;
        this.height = f10;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(MotionConstrainedPoint motionConstrainedPoint) {
        return Float.compare(this.position, motionConstrainedPoint.position);
    }

    public void a(MotionWidget motionWidget) {
        float fA;
        this.visibility = motionWidget.q();
        if (motionWidget.q() != 4) {
            fA = 0.0f;
        } else {
            fA = motionWidget.a();
        }
        this.alpha = fA;
        this.applyElevation = false;
        this.rotation = motionWidget.j();
        this.rotationX = motionWidget.h();
        this.rotationY = motionWidget.i();
        this.scaleX = motionWidget.k();
        this.scaleY = motionWidget.l();
        this.mPivotX = motionWidget.f();
        this.mPivotY = motionWidget.g();
        this.translationX = motionWidget.n();
        this.translationY = motionWidget.o();
        this.translationZ = motionWidget.p();
        for (String str : motionWidget.c()) {
            CustomVariable customVariableB = motionWidget.b(str);
            if (customVariableB != null && customVariableB.e()) {
                this.mCustomVariable.put(str, customVariableB);
            }
        }
    }

    public void d(MotionWidget motionWidget) {
        c(motionWidget.s(), motionWidget.t(), motionWidget.r(), motionWidget.d());
        a(motionWidget);
    }
}
