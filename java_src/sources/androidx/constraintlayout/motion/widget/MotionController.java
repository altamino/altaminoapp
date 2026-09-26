package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.motion.utils.CustomSupport;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class MotionController {
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    private static final int INTERPOLATOR_UNDEFINED = -3;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;
    private static final int SPLINE_STRING = -1;
    private static final String TAG = "MotionController";
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    String[] attributeTable;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpolatorCount;
    private String[] mAttributeNames;
    private HashMap<String, ViewSpline> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, ViewOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private boolean mNoMovement;
    private int mPathMotionArc;
    private Interpolator mQuantizeMotionInterpolator;
    private float mQuantizeMotionPhase;
    private int mQuantizeMotionSteps;
    private CurveFit[] mSpline;
    private HashMap<String, ViewTimeCycle> mTimeCycleAttributesMap;
    private int mTransformPivotTarget;
    private View mTransformPivotView;
    View mView;
    Rect mTempRect = new Rect();
    boolean mForceMeasure = false;
    private int mCurveFitType = -1;
    private MotionPaths mStartMotionPath = new MotionPaths();
    private MotionPaths mEndMotionPath = new MotionPaths();
    private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
    private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
    float mMotionStagger = Float.NaN;
    float mStaggerOffset = 0.0f;
    float mStaggerScale = 1.0f;
    private int MAX_DIMENSION = 4;
    private float[] mValuesBuff = new float[4];
    private ArrayList<MotionPaths> mMotionPaths = new ArrayList<>();
    private float[] mVelocity = new float[1];
    private ArrayList<Key> mKeyList = new ArrayList<>();

    private float g(float position, float[] velocity) {
        float f = 0.0f;
        if (velocity != null) {
            velocity[0] = 1.0f;
        } else {
            float f6 = this.mStaggerScale;
            if (f6 != 1.0d) {
                float f7 = this.mStaggerOffset;
                if (position < f7) {
                    position = 0.0f;
                }
                if (position > f7 && position < 1.0d) {
                    position = Math.min((position - f7) * f6, 1.0f);
                }
            }
        }
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        float f10 = Float.NaN;
        for (MotionPaths motionPaths : this.mMotionPaths) {
            Easing easing2 = motionPaths.mKeyFrameEasing;
            if (easing2 != null) {
                float f11 = motionPaths.time;
                if (f11 < position) {
                    easing = easing2;
                    f = f11;
                } else if (Float.isNaN(f10)) {
                    f10 = motionPaths.time;
                }
            }
        }
        if (easing != null) {
            float f12 = (Float.isNaN(f10) ? 1.0f : f10) - f;
            double d = (position - f) / f12;
            position = (((float) easing.a(d)) * f12) + f;
            if (velocity != null) {
                velocity[0] = (float) easing.b(d);
            }
        }
        return position;
    }

    private static Interpolator p(Context context, int type, String interpolatorString, int id) {
        if (type == -2) {
            return AnimationUtils.loadInterpolator(context, id);
        }
        if (type == -1) {
            final Easing easingC = Easing.c(interpolatorString);
            return new Interpolator() { // from class: androidx.constraintlayout.motion.widget.MotionController.1
                @Override // android.animation.TimeInterpolator
                public float getInterpolation(float v5) {
                    return (float) easingC.a(v5);
                }
            };
        }
        if (type == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (type == 1) {
            return new AccelerateInterpolator();
        }
        if (type == 2) {
            return new DecelerateInterpolator();
        }
        if (type == 4) {
            return new BounceInterpolator();
        }
        if (type != 5) {
            return null;
        }
        return new OvershootInterpolator();
    }

    void A(Rect rect, Rect out, int rotation, int preHeight, int preWidth) {
        if (rotation == 1) {
            int i10 = rect.left + rect.right;
            out.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            out.top = preWidth - ((i10 + rect.height()) / 2);
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
            return;
        }
        if (rotation == 2) {
            int i11 = rect.left + rect.right;
            out.left = preHeight - (((rect.top + rect.bottom) + rect.width()) / 2);
            out.top = (i11 - rect.height()) / 2;
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
            return;
        }
        if (rotation == 3) {
            int i12 = rect.left + rect.right;
            out.left = ((rect.height() / 2) + rect.top) - (i12 / 2);
            out.top = preWidth - ((i12 + rect.height()) / 2);
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
            return;
        }
        if (rotation != 4) {
            return;
        }
        int i13 = rect.left + rect.right;
        out.left = preHeight - (((rect.bottom + rect.top) + rect.width()) / 2);
        out.top = (i13 - rect.height()) / 2;
        out.right = out.left + rect.width();
        out.bottom = out.top + rect.height();
    }

    public void D(int arc) {
        this.mPathMotionArc = arc;
    }

    int c(float[] keyFrames, int[] mode) {
        if (keyFrames == null) {
            return 0;
        }
        double[] dArrH = this.mSpline[0].h();
        if (mode != null) {
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                mode[i10] = it.next().mMode;
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < dArrH.length; i12++) {
            this.mSpline[0].d(dArrH[i12], this.mInterpolateData);
            this.mStartMotionPath.f(dArrH[i12], this.mInterpolateVariables, this.mInterpolateData, keyFrames, i11);
            i11 += 2;
        }
        return i11 / 2;
    }

    void e(float p, float[] path, int offset) {
        this.mSpline[0].d(g(p, null), this.mInterpolateData);
        this.mStartMotionPath.k(this.mInterpolateVariables, this.mInterpolateData, path, offset);
    }

    public void i(double p, float[] pos, float[] vel) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.mSpline[0].d(p, dArr);
        this.mSpline[0].g(p, dArr2);
        Arrays.fill(vel, 0.0f);
        this.mStartMotionPath.h(p, this.mInterpolateVariables, dArr, pos, dArr2, vel);
    }

    public float j() {
        return this.mCurrentCenterX;
    }

    public float k() {
        return this.mCurrentCenterY;
    }

    public View v() {
        return this.mView;
    }

    public void z() {
        this.mForceMeasure = true;
    }

    private float s() {
        char c7;
        float fHypot;
        float[] fArr = new float[2];
        float f = 1.0f / 99;
        double d = 0.0d;
        double d2 = 0.0d;
        float f6 = 0.0f;
        int i10 = 0;
        while (i10 < 100) {
            float f7 = i10 * f;
            double dA = f7;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f10 = Float.NaN;
            float f11 = 0.0f;
            for (MotionPaths motionPaths : this.mMotionPaths) {
                Easing easing2 = motionPaths.mKeyFrameEasing;
                if (easing2 != null) {
                    float f12 = motionPaths.time;
                    if (f12 < f7) {
                        easing = easing2;
                        f11 = f12;
                    } else if (Float.isNaN(f10)) {
                        f10 = motionPaths.time;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f10)) {
                    f10 = 1.0f;
                }
                float f13 = f10 - f11;
                dA = (((float) easing.a((f7 - f11) / f13)) * f13) + f11;
            }
            this.mSpline[0].d(dA, this.mInterpolateData);
            float f14 = f6;
            int i11 = i10;
            this.mStartMotionPath.f(dA, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
            if (i11 > 0) {
                c7 = 0;
                fHypot = (float) (((double) f14) + Math.hypot(d2 - ((double) fArr[1]), d - ((double) fArr[0])));
            } else {
                c7 = 0;
                fHypot = f14;
            }
            d = fArr[c7];
            i10 = i11 + 1;
            f6 = fHypot;
            d2 = fArr[1];
        }
        return f6;
    }

    private void w(MotionPaths point) {
        int iBinarySearch = Collections.binarySearch(this.mMotionPaths, point);
        if (iBinarySearch == 0) {
            Log.e(TAG, " KeyPath position \"" + point.position + "\" outside of range");
        }
        this.mMotionPaths.add((-iBinarySearch) - 1, point);
    }

    private void y(MotionPaths motionPaths) {
        motionPaths.r((int) this.mView.getX(), (int) this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    void B(View v5) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        this.mNoMovement = true;
        motionPaths.r(v5.getX(), v5.getY(), v5.getWidth(), v5.getHeight());
        this.mEndMotionPath.r(v5.getX(), v5.getY(), v5.getWidth(), v5.getHeight());
        this.mStartPoint.k(v5);
        this.mEndPoint.k(v5);
    }

    void C(Rect cw, ConstraintSet constraintSet, int parentWidth, int parentHeight) {
        int i10 = constraintSet.mRotate;
        if (i10 != 0) {
            A(cw, this.mTempRect, i10, parentWidth, parentHeight);
            cw = this.mTempRect;
        }
        MotionPaths motionPaths = this.mEndMotionPath;
        motionPaths.time = 1.0f;
        motionPaths.position = 1.0f;
        y(motionPaths);
        this.mEndMotionPath.r(cw.left, cw.top, cw.width(), cw.height());
        this.mEndMotionPath.a(constraintSet.z(this.mId));
        this.mEndPoint.j(cw, constraintSet, i10, this.mId);
    }

    void E(View v5) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        motionPaths.r(v5.getX(), v5.getY(), v5.getWidth(), v5.getHeight());
        this.mStartPoint.k(v5);
    }

    void F(Rect cw, ConstraintSet constraintSet, int parentWidth, int parentHeight) {
        int i10 = constraintSet.mRotate;
        if (i10 != 0) {
            A(cw, this.mTempRect, i10, parentWidth, parentHeight);
        }
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        y(motionPaths);
        this.mStartMotionPath.r(cw.left, cw.top, cw.width(), cw.height());
        ConstraintSet.Constraint constraintZ = constraintSet.z(this.mId);
        this.mStartMotionPath.a(constraintZ);
        this.mMotionStagger = constraintZ.motion.mMotionStagger;
        this.mStartPoint.j(cw, constraintSet, i10, this.mId);
        this.mTransformPivotTarget = constraintZ.transform.transformPivotTarget;
        ConstraintSet.Motion motion = constraintZ.motion;
        this.mQuantizeMotionSteps = motion.mQuantizeMotionSteps;
        this.mQuantizeMotionPhase = motion.mQuantizeMotionPhase;
        Context context = this.mView.getContext();
        ConstraintSet.Motion motion2 = constraintZ.motion;
        this.mQuantizeMotionInterpolator = p(context, motion2.mQuantizeInterpolatorType, motion2.mQuantizeInterpolatorString, motion2.mQuantizeInterpolatorID);
    }

    public void G(ViewState rect, View v5, int rotation, int preWidth, int preHeight) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        Rect rect2 = new Rect();
        if (rotation == 1) {
            int i10 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.b()) / 2;
            rect2.top = preWidth - ((i10 + rect.a()) / 2);
            rect2.right = rect2.left + rect.b();
            rect2.bottom = rect2.top + rect.a();
        } else if (rotation == 2) {
            int i11 = rect.left + rect.right;
            rect2.left = preHeight - (((rect.top + rect.bottom) + rect.b()) / 2);
            rect2.top = (i11 - rect.a()) / 2;
            rect2.right = rect2.left + rect.b();
            rect2.bottom = rect2.top + rect.a();
        }
        this.mStartMotionPath.r(rect2.left, rect2.top, rect2.width(), rect2.height());
        this.mStartPoint.i(rect2, v5, rotation, rect.rotation);
    }

    public void H(View view) {
        this.mView = view;
        this.mId = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.mConstraintTag = ((ConstraintLayout.LayoutParams) layoutParams).a();
        }
    }

    public void I(int parentWidth, int parentHeight, float transitionDuration, long currentTime) {
        ArrayList arrayList;
        String[] strArr;
        ConstraintAttribute constraintAttribute;
        ViewTimeCycle viewTimeCycleH;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        ViewSpline viewSplineG;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> map = new HashMap<>();
        int i10 = this.mPathMotionArc;
        if (i10 != Key.UNSET) {
            this.mStartMotionPath.mPathMotionArc = i10;
        }
        this.mStartPoint.f(this.mEndPoint, hashSet2);
        ArrayList<Key> arrayList2 = this.mKeyList;
        if (arrayList2 != null) {
            arrayList = null;
            for (Key key : arrayList2) {
                if (key instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key;
                    w(new MotionPaths(parentWidth, parentHeight, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int i11 = keyPosition.mCurveFit;
                    if (i11 != Key.UNSET) {
                        this.mCurveFitType = i11;
                    }
                } else if (key instanceof KeyCycle) {
                    key.d(hashSet3);
                } else if (key instanceof KeyTimeCycle) {
                    key.d(hashSet);
                } else if (key instanceof KeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((KeyTrigger) key);
                } else {
                    key.h(map);
                    key.d(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.mKeyTriggers = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            for (String str : hashSet2) {
                if (str.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str2 = str.split(",")[1];
                    for (Key key2 : this.mKeyList) {
                        HashMap<String, ConstraintAttribute> map2 = key2.mCustomConstraints;
                        if (map2 != null && (constraintAttribute3 = map2.get(str2)) != null) {
                            sparseArray.append(key2.mFramePosition, constraintAttribute3);
                        }
                    }
                    viewSplineG = ViewSpline.f(str, sparseArray);
                } else {
                    viewSplineG = ViewSpline.g(str);
                }
                if (viewSplineG != null) {
                    viewSplineG.d(str);
                    this.mAttributesMap.put(str, viewSplineG);
                }
            }
            ArrayList<Key> arrayList3 = this.mKeyList;
            if (arrayList3 != null) {
                for (Key key3 : arrayList3) {
                    if (key3 instanceof KeyAttributes) {
                        key3.a(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.a(this.mAttributesMap, 0);
            this.mEndPoint.a(this.mAttributesMap, 100);
            for (String str3 : this.mAttributesMap.keySet()) {
                int iIntValue = (!map.containsKey(str3) || (num = map.get(str3)) == null) ? 0 : num.intValue();
                ViewSpline viewSpline = this.mAttributesMap.get(str3);
                if (viewSpline != null) {
                    viewSpline.e(iIntValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            for (String str4 : hashSet) {
                if (!this.mTimeCycleAttributesMap.containsKey(str4)) {
                    if (str4.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str5 = str4.split(",")[1];
                        for (Key key4 : this.mKeyList) {
                            HashMap<String, ConstraintAttribute> map3 = key4.mCustomConstraints;
                            if (map3 != null && (constraintAttribute2 = map3.get(str5)) != null) {
                                sparseArray2.append(key4.mFramePosition, constraintAttribute2);
                            }
                        }
                        viewTimeCycleH = ViewTimeCycle.g(str4, sparseArray2);
                    } else {
                        viewTimeCycleH = ViewTimeCycle.h(str4, currentTime);
                    }
                    if (viewTimeCycleH != null) {
                        viewTimeCycleH.d(str4);
                        this.mTimeCycleAttributesMap.put(str4, viewTimeCycleH);
                    }
                }
            }
            ArrayList<Key> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                for (Key key5 : arrayList4) {
                    if (key5 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) key5).U(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str6 : this.mTimeCycleAttributesMap.keySet()) {
                this.mTimeCycleAttributesMap.get(str6).e(map.containsKey(str6) ? map.get(str6).intValue() : 0);
            }
        }
        int size = this.mMotionPaths.size();
        int i12 = size + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[i12];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size + 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        int i13 = 1;
        while (it.hasNext()) {
            motionPathsArr[i13] = it.next();
            i13++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str7 : this.mEndMotionPath.attributes.keySet()) {
            if (this.mStartMotionPath.attributes.containsKey(str7)) {
                if (!hashSet2.contains("CUSTOM," + str7)) {
                    hashSet4.add(str7);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpolatorCount = new int[strArr2.length];
        int i14 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (i14 >= strArr.length) {
                break;
            }
            String str8 = strArr[i14];
            this.mAttributeInterpolatorCount[i14] = 0;
            for (int i15 = 0; i15 < i12; i15++) {
                if (motionPathsArr[i15].attributes.containsKey(str8) && (constraintAttribute = motionPathsArr[i15].attributes.get(str8)) != null) {
                    int[] iArr = this.mAttributeInterpolatorCount;
                    iArr[i14] = iArr[i14] + constraintAttribute.h();
                    break;
                }
            }
            i14++;
        }
        boolean z6 = motionPathsArr[0].mPathMotionArc != Key.UNSET;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i16 = 1; i16 < i12; i16++) {
            motionPathsArr[i16].d(motionPathsArr[i16 - 1], zArr, this.mAttributeNames, z6);
        }
        int i17 = 0;
        for (int i18 = 1; i18 < length; i18++) {
            if (zArr[i18]) {
                i17++;
            }
        }
        this.mInterpolateVariables = new int[i17];
        int iMax = Math.max(2, i17);
        this.mInterpolateData = new double[iMax];
        this.mInterpolateVelocity = new double[iMax];
        int i19 = 0;
        for (int i20 = 1; i20 < length; i20++) {
            if (zArr[i20]) {
                this.mInterpolateVariables[i19] = i20;
                i19++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i12, this.mInterpolateVariables.length);
        double[] dArr2 = new double[i12];
        for (int i21 = 0; i21 < i12; i21++) {
            motionPathsArr[i21].e(dArr[i21], this.mInterpolateVariables);
            dArr2[i21] = motionPathsArr[i21].time;
        }
        int i22 = 0;
        while (true) {
            int[] iArr2 = this.mInterpolateVariables;
            if (i22 >= iArr2.length) {
                break;
            }
            if (iArr2[i22] < MotionPaths.names.length) {
                String str9 = MotionPaths.names[this.mInterpolateVariables[i22]] + " [";
                for (int i23 = 0; i23 < i12; i23++) {
                    str9 = str9 + dArr[i23][i22];
                }
            }
            i22++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i24 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (i24 >= strArr3.length) {
                break;
            }
            String str10 = strArr3[i24];
            int i25 = 0;
            int i26 = 0;
            double[] dArr3 = null;
            double[][] dArr4 = null;
            while (i25 < i12) {
                if (motionPathsArr[i25].l(str10)) {
                    if (dArr4 == null) {
                        dArr3 = new double[i12];
                        dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i12, motionPathsArr[i25].j(str10));
                    }
                    MotionPaths motionPaths = motionPathsArr[i25];
                    dArr3[i26] = motionPaths.time;
                    motionPaths.i(str10, dArr4[i26], 0);
                    i26++;
                }
                i25++;
                dArr = dArr;
            }
            i24++;
            this.mSpline[i24] = CurveFit.a(this.mCurveFitType, Arrays.copyOf(dArr3, i26), (double[][]) Arrays.copyOf(dArr4, i26));
            dArr = dArr;
        }
        this.mSpline[0] = CurveFit.a(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != Key.UNSET) {
            int[] iArr3 = new int[i12];
            double[] dArr5 = new double[i12];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i12, 2);
            for (int i27 = 0; i27 < i12; i27++) {
                MotionPaths motionPaths2 = motionPathsArr[i27];
                iArr3[i27] = motionPaths2.mPathMotionArc;
                dArr5[i27] = motionPaths2.time;
                double[] dArr7 = dArr6[i27];
                dArr7[0] = motionPaths2.f138x;
                dArr7[1] = motionPaths2.f139y;
            }
            this.mArcSpline = CurveFit.b(iArr3, dArr5, dArr6);
        }
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            float fS = Float.NaN;
            for (String str11 : hashSet3) {
                ViewOscillator viewOscillatorI = ViewOscillator.i(str11);
                if (viewOscillatorI != null) {
                    if (viewOscillatorI.h() && Float.isNaN(fS)) {
                        fS = s();
                    }
                    viewOscillatorI.f(str11);
                    this.mCycleMap.put(str11, viewOscillatorI);
                }
            }
            for (Key key6 : this.mKeyList) {
                if (key6 instanceof KeyCycle) {
                    ((KeyCycle) key6).Y(this.mCycleMap);
                }
            }
            Iterator<ViewOscillator> it2 = this.mCycleMap.values().iterator();
            while (it2.hasNext()) {
                it2.next().g(fS);
            }
        }
    }

    public void J(MotionController motionController) {
        this.mStartMotionPath.u(motionController, motionController.mStartMotionPath);
        this.mEndMotionPath.u(motionController, motionController.mEndMotionPath);
    }

    public void a(Key key) {
        this.mKeyList.add(key);
    }

    void b(ArrayList<Key> list) {
        this.mKeyList.addAll(list);
    }

    void d(float[] points, int pointCount) {
        double dA;
        float f = 1.0f;
        float f6 = 1.0f / (pointCount - 1);
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        ViewSpline viewSpline = map == null ? null : map.get("translationX");
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        ViewSpline viewSpline2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, ViewOscillator> map3 = this.mCycleMap;
        ViewOscillator viewOscillator = map3 == null ? null : map3.get("translationX");
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
        ViewOscillator viewOscillator2 = map4 != null ? map4.get("translationY") : null;
        int i10 = 0;
        while (i10 < pointCount) {
            float fMin = i10 * f6;
            float f7 = this.mStaggerScale;
            float f10 = 0.0f;
            if (f7 != f) {
                float f11 = this.mStaggerOffset;
                if (fMin < f11) {
                    fMin = 0.0f;
                }
                if (fMin > f11 && fMin < 1.0d) {
                    fMin = Math.min((fMin - f11) * f7, f);
                }
            }
            float f12 = fMin;
            double d = f12;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f13 = Float.NaN;
            for (MotionPaths motionPaths : this.mMotionPaths) {
                Easing easing2 = motionPaths.mKeyFrameEasing;
                double d2 = d;
                if (easing2 != null) {
                    float f14 = motionPaths.time;
                    if (f14 < f12) {
                        f10 = f14;
                        easing = easing2;
                    } else if (Float.isNaN(f13)) {
                        f13 = motionPaths.time;
                    }
                }
                d = d2;
            }
            double d6 = d;
            if (easing != null) {
                if (Float.isNaN(f13)) {
                    f13 = 1.0f;
                }
                float f15 = f13 - f10;
                dA = (((float) easing.a((f12 - f10) / f15)) * f15) + f10;
            } else {
                dA = d6;
            }
            this.mSpline[0].d(dA, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.d(dA, dArr);
                }
            }
            int i11 = i10 * 2;
            int i12 = i10;
            this.mStartMotionPath.f(dA, this.mInterpolateVariables, this.mInterpolateData, points, i11);
            if (viewOscillator != null) {
                points[i11] = points[i11] + viewOscillator.a(f12);
            } else if (viewSpline != null) {
                points[i11] = points[i11] + viewSpline.a(f12);
            }
            if (viewOscillator2 != null) {
                int i13 = i11 + 1;
                points[i13] = points[i13] + viewOscillator2.a(f12);
            } else if (viewSpline2 != null) {
                int i14 = i11 + 1;
                points[i14] = points[i14] + viewSpline2.a(f12);
            }
            i10 = i12 + 1;
            f = 1.0f;
        }
    }

    void f(boolean start) {
        if (!"button".equals(Debug.d(this.mView)) || this.mKeyTriggers == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
            if (i10 >= keyTriggerArr.length) {
                return;
            }
            keyTriggerArr[i10].y(start ? -100.0f : 100.0f, this.mView);
            i10++;
        }
    }

    public int h() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    void l(float position, float locationX, float locationY, float[] mAnchorDpDt) {
        double[] dArr;
        float fG = g(position, this.mVelocity);
        CurveFit[] curveFitArr = this.mSpline;
        int i10 = 0;
        if (curveFitArr == null) {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f = motionPaths.f138x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f6 = f - motionPaths2.f138x;
            float f7 = motionPaths.f139y - motionPaths2.f139y;
            float f10 = (motionPaths.width - motionPaths2.width) + f6;
            float f11 = (motionPaths.height - motionPaths2.height) + f7;
            mAnchorDpDt[0] = (f6 * (1.0f - locationX)) + (f10 * locationX);
            mAnchorDpDt[1] = (f7 * (1.0f - locationY)) + (f11 * locationY);
            return;
        }
        double d = fG;
        curveFitArr[0].g(d, this.mInterpolateVelocity);
        this.mSpline[0].d(d, this.mInterpolateData);
        float f12 = this.mVelocity[0];
        while (true) {
            dArr = this.mInterpolateVelocity;
            if (i10 >= dArr.length) {
                break;
            }
            dArr[i10] = dArr[i10] * ((double) f12);
            i10++;
        }
        CurveFit curveFit = this.mArcSpline;
        if (curveFit == null) {
            this.mStartMotionPath.s(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, dArr, this.mInterpolateData);
            return;
        }
        double[] dArr2 = this.mInterpolateData;
        if (dArr2.length > 0) {
            curveFit.d(d, dArr2);
            this.mArcSpline.g(d, this.mInterpolateVelocity);
            this.mStartMotionPath.s(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
        }
    }

    public int m() {
        int iMax = this.mStartMotionPath.mDrawPath;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (it.hasNext()) {
            iMax = Math.max(iMax, it.next().mDrawPath);
        }
        return Math.max(iMax, this.mEndMotionPath.mDrawPath);
    }

    public float n() {
        return this.mEndMotionPath.f138x;
    }

    public float o() {
        return this.mEndMotionPath.f139y;
    }

    MotionPaths q(int i10) {
        return this.mMotionPaths.get(i10);
    }

    void r(float position, int width, int height, float locationX, float locationY, float[] mAnchorDpDt) {
        float fG = g(position, this.mVelocity);
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        ViewSpline viewSpline = map == null ? null : map.get("translationX");
        HashMap<String, ViewSpline> map2 = this.mAttributesMap;
        ViewSpline viewSpline2 = map2 == null ? null : map2.get("translationY");
        HashMap<String, ViewSpline> map3 = this.mAttributesMap;
        ViewSpline viewSpline3 = map3 == null ? null : map3.get(Key.ROTATION);
        HashMap<String, ViewSpline> map4 = this.mAttributesMap;
        ViewSpline viewSpline4 = map4 == null ? null : map4.get("scaleX");
        HashMap<String, ViewSpline> map5 = this.mAttributesMap;
        ViewSpline viewSpline5 = map5 == null ? null : map5.get("scaleY");
        HashMap<String, ViewOscillator> map6 = this.mCycleMap;
        ViewOscillator viewOscillator = map6 == null ? null : map6.get("translationX");
        HashMap<String, ViewOscillator> map7 = this.mCycleMap;
        ViewOscillator viewOscillator2 = map7 == null ? null : map7.get("translationY");
        HashMap<String, ViewOscillator> map8 = this.mCycleMap;
        ViewOscillator viewOscillator3 = map8 == null ? null : map8.get(Key.ROTATION);
        HashMap<String, ViewOscillator> map9 = this.mCycleMap;
        ViewOscillator viewOscillator4 = map9 == null ? null : map9.get("scaleX");
        HashMap<String, ViewOscillator> map10 = this.mCycleMap;
        ViewOscillator viewOscillator5 = map10 != null ? map10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.b();
        velocityMatrix.d(viewSpline3, fG);
        velocityMatrix.h(viewSpline, viewSpline2, fG);
        velocityMatrix.f(viewSpline4, viewSpline5, fG);
        velocityMatrix.c(viewOscillator3, fG);
        velocityMatrix.g(viewOscillator, viewOscillator2, fG);
        velocityMatrix.e(viewOscillator4, viewOscillator5, fG);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                double d = fG;
                curveFit.d(d, dArr);
                this.mArcSpline.g(d, this.mInterpolateVelocity);
                this.mStartMotionPath.s(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            }
            velocityMatrix.a(locationX, locationY, width, height, mAnchorDpDt);
            return;
        }
        int i10 = 0;
        if (this.mSpline == null) {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f = motionPaths.f138x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f6 = f - motionPaths2.f138x;
            ViewOscillator viewOscillator6 = viewOscillator5;
            float f7 = motionPaths.f139y - motionPaths2.f139y;
            ViewOscillator viewOscillator7 = viewOscillator4;
            float f10 = (motionPaths.width - motionPaths2.width) + f6;
            float f11 = (motionPaths.height - motionPaths2.height) + f7;
            mAnchorDpDt[0] = (f6 * (1.0f - locationX)) + (f10 * locationX);
            mAnchorDpDt[1] = (f7 * (1.0f - locationY)) + (f11 * locationY);
            velocityMatrix.b();
            velocityMatrix.d(viewSpline3, fG);
            velocityMatrix.h(viewSpline, viewSpline2, fG);
            velocityMatrix.f(viewSpline4, viewSpline5, fG);
            velocityMatrix.c(viewOscillator3, fG);
            velocityMatrix.g(viewOscillator, viewOscillator2, fG);
            velocityMatrix.e(viewOscillator7, viewOscillator6, fG);
            velocityMatrix.a(locationX, locationY, width, height, mAnchorDpDt);
            return;
        }
        double dG = g(fG, this.mVelocity);
        this.mSpline[0].g(dG, this.mInterpolateVelocity);
        this.mSpline[0].d(dG, this.mInterpolateData);
        float f12 = this.mVelocity[0];
        while (true) {
            double[] dArr2 = this.mInterpolateVelocity;
            if (i10 >= dArr2.length) {
                this.mStartMotionPath.s(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, dArr2, this.mInterpolateData);
                velocityMatrix.a(locationX, locationY, width, height, mAnchorDpDt);
                return;
            } else {
                dArr2[i10] = dArr2[i10] * ((double) f12);
                i10++;
            }
        }
    }

    public float t() {
        return this.mStartMotionPath.f138x;
    }

    public String toString() {
        return " start: x: " + this.mStartMotionPath.f138x + " y: " + this.mStartMotionPath.f139y + " end: x: " + this.mEndMotionPath.f138x + " y: " + this.mEndMotionPath.f139y;
    }

    public float u() {
        return this.mStartMotionPath.f139y;
    }

    boolean x(View child, float global_position, long time, KeyCache keyCache) {
        ViewTimeCycle.PathRotate pathRotate;
        boolean zJ;
        float fG = g(global_position, null);
        int i10 = this.mQuantizeMotionSteps;
        if (i10 != Key.UNSET) {
            float f = 1.0f / i10;
            float fFloor = ((float) Math.floor(fG / f)) * f;
            float f6 = (fG % f) / f;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f6 = (f6 + this.mQuantizeMotionPhase) % 1.0f;
            }
            Interpolator interpolator = this.mQuantizeMotionInterpolator;
            fG = ((interpolator != null ? interpolator.getInterpolation(f6) : ((double) f6) > 0.5d ? 1.0f : 0.0f) * f) + fFloor;
        }
        float f7 = fG;
        HashMap<String, ViewSpline> map = this.mAttributesMap;
        if (map != null) {
            Iterator<ViewSpline> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().h(child, f7);
            }
        }
        HashMap<String, ViewTimeCycle> map2 = this.mTimeCycleAttributesMap;
        if (map2 != null) {
            ViewTimeCycle.PathRotate pathRotate2 = null;
            boolean zI = false;
            for (ViewTimeCycle viewTimeCycle : map2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle.PathRotate) {
                    pathRotate2 = (ViewTimeCycle.PathRotate) viewTimeCycle;
                } else {
                    zI |= viewTimeCycle.i(child, f7, time, keyCache);
                }
            }
            zJ = zI;
            pathRotate = pathRotate2;
        } else {
            pathRotate = null;
            zJ = false;
        }
        CurveFit[] curveFitArr = this.mSpline;
        int i11 = 1;
        if (curveFitArr != null) {
            double d = f7;
            curveFitArr[0].d(d, this.mInterpolateData);
            this.mSpline[0].g(d, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.d(d, dArr);
                    this.mArcSpline.g(d, this.mInterpolateVelocity);
                }
            }
            if (!this.mNoMovement) {
                this.mStartMotionPath.t(f7, child, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null, this.mForceMeasure);
                this.mForceMeasure = false;
            }
            if (this.mTransformPivotTarget != Key.UNSET) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = ((View) child.getParent()).findViewById(this.mTransformPivotTarget);
                }
                View view = this.mTransformPivotView;
                if (view != null) {
                    float top = (view.getTop() + this.mTransformPivotView.getBottom()) / 2.0f;
                    float left = (this.mTransformPivotView.getLeft() + this.mTransformPivotView.getRight()) / 2.0f;
                    if (child.getRight() - child.getLeft() > 0 && child.getBottom() - child.getTop() > 0) {
                        float left2 = left - child.getLeft();
                        float top2 = top - child.getTop();
                        child.setPivotX(left2);
                        child.setPivotY(top2);
                    }
                }
            }
            HashMap<String, ViewSpline> map3 = this.mAttributesMap;
            if (map3 != null) {
                for (ViewSpline viewSpline : map3.values()) {
                    if (viewSpline instanceof ViewSpline.PathRotate) {
                        double[] dArr2 = this.mInterpolateVelocity;
                        if (dArr2.length > 1) {
                            ((ViewSpline.PathRotate) viewSpline).i(child, f7, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.mInterpolateVelocity;
                zJ |= pathRotate.j(child, keyCache, f7, time, dArr3[0], dArr3[1]);
            }
            int i12 = i11;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i12 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i12].e(d, this.mValuesBuff);
                CustomSupport.b(this.mStartMotionPath.attributes.get(this.mAttributeNames[i12 - 1]), child, this.mValuesBuff);
                i12++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (f7 <= 0.0f) {
                    child.setVisibility(motionConstrainedPoint.visibility);
                } else if (f7 >= 1.0f) {
                    child.setVisibility(this.mEndPoint.visibility);
                } else if (this.mEndPoint.visibility != motionConstrainedPoint.visibility) {
                    child.setVisibility(0);
                }
            }
            if (this.mKeyTriggers != null) {
                int i13 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                    if (i13 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i13].y(f7, child);
                    i13++;
                }
            }
        } else {
            i11 = 1;
            MotionPaths motionPaths = this.mStartMotionPath;
            float f10 = motionPaths.f138x;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float f11 = f10 + ((motionPaths2.f138x - f10) * f7);
            float f12 = motionPaths.f139y;
            float f13 = f12 + ((motionPaths2.f139y - f12) * f7);
            float f14 = motionPaths.width;
            float f15 = motionPaths2.width;
            float f16 = motionPaths.height;
            float f17 = motionPaths2.height;
            float f18 = f11 + 0.5f;
            int i14 = (int) f18;
            float f19 = f13 + 0.5f;
            int i15 = (int) f19;
            int i16 = (int) (f18 + ((f15 - f14) * f7) + f14);
            int i17 = (int) (f19 + ((f17 - f16) * f7) + f16);
            int i18 = i16 - i14;
            int i19 = i17 - i15;
            if (f15 != f14 || f17 != f16 || this.mForceMeasure) {
                child.measure(View.MeasureSpec.makeMeasureSpec(i18, 1073741824), View.MeasureSpec.makeMeasureSpec(i19, 1073741824));
                this.mForceMeasure = false;
            }
            child.layout(i14, i15, i16, i17);
        }
        HashMap<String, ViewOscillator> map4 = this.mCycleMap;
        if (map4 != null) {
            for (ViewOscillator viewOscillator : map4.values()) {
                if (viewOscillator instanceof ViewOscillator.PathRotateSet) {
                    double[] dArr4 = this.mInterpolateVelocity;
                    ((ViewOscillator.PathRotateSet) viewOscillator).k(child, f7, dArr4[0], dArr4[i11]);
                } else {
                    viewOscillator.j(child, f7);
                }
            }
        }
        return zJ;
    }

    MotionController(View view) {
        int i10 = Key.UNSET;
        this.mPathMotionArc = i10;
        this.mTransformPivotTarget = i10;
        this.mTransformPivotView = null;
        this.mQuantizeMotionSteps = i10;
        this.mQuantizeMotionPhase = Float.NaN;
        this.mQuantizeMotionInterpolator = null;
        this.mNoMovement = false;
        H(view);
    }
}
