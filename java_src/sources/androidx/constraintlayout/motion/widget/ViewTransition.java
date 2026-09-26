package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import com.google.firebase.sessions.settings.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes4.dex */
public class ViewTransition {
    static final int ANTICIPATE = 6;
    static final int BOUNCE = 4;
    public static final String CONSTRAINT_OVERRIDE = "ConstraintOverride";
    public static final String CUSTOM_ATTRIBUTE = "CustomAttribute";
    public static final String CUSTOM_METHOD = "CustomMethod";
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    public static final String KEY_FRAME_SET_TAG = "KeyFrameSet";
    static final int LINEAR = 3;
    public static final int ONSTATE_ACTION_DOWN = 1;
    public static final int ONSTATE_ACTION_DOWN_UP = 3;
    public static final int ONSTATE_ACTION_UP = 2;
    public static final int ONSTATE_SHARED_VALUE_SET = 4;
    public static final int ONSTATE_SHARED_VALUE_UNSET = 5;
    static final int OVERSHOOT = 5;
    private static final int SPLINE_STRING = -1;
    private static String TAG = "ViewTransition";
    private static final int UNSET = -1;
    static final int VIEWTRANSITIONMODE_ALLSTATES = 1;
    static final int VIEWTRANSITIONMODE_CURRENTSTATE = 0;
    static final int VIEWTRANSITIONMODE_NOSTATE = 2;
    public static final String VIEW_TRANSITION_TAG = "ViewTransition";
    ConstraintSet.Constraint mConstraintDelta;
    Context mContext;
    private int mId;
    KeyFrames mKeyFrames;
    private int mTargetId;
    private String mTargetString;
    int mViewTransitionMode;
    ConstraintSet set;
    private int mOnStateTransition = -1;
    private boolean mDisabled = false;
    private int mPathMotionArc = 0;
    private int mDuration = -1;
    private int mUpDuration = -1;
    private int mDefaultInterpolator = 0;
    private String mDefaultInterpolatorString = null;
    private int mDefaultInterpolatorID = -1;
    private int mSetsTag = -1;
    private int mClearsTag = -1;
    private int mIfTagSet = -1;
    private int mIfTagNotSet = -1;
    private int mSharedValueTarget = -1;
    private int mSharedValueID = -1;
    private int mSharedValueCurrent = -1;

    static class Animate {
        boolean hold_at_100;
        private final int mClearsTag;
        float mDpositionDt;
        int mDuration;
        Interpolator mInterpolator;
        long mLastRender;
        MotionController mMC;
        float mPosition;
        private final int mSetsTag;
        long mStart;
        int mUpDuration;
        ViewTransitionController mVtController;
        KeyCache mCache = new KeyCache();
        boolean reverse = false;
        Rect mTempRec = new Rect();

        public void d(int action, float x6, float y6) {
            if (action == 1) {
                if (this.reverse) {
                    return;
                }
                e(true);
            } else {
                if (action != 2) {
                    return;
                }
                this.mMC.v().getHitRect(this.mTempRec);
                if (this.mTempRec.contains((int) x6, (int) y6) || this.reverse) {
                    return;
                }
                e(true);
            }
        }

        void a() {
            if (this.reverse) {
                c();
            } else {
                b();
            }
        }

        void e(boolean dir) {
            int i10;
            this.reverse = dir;
            if (dir && (i10 = this.mUpDuration) != -1) {
                this.mDpositionDt = i10 == 0 ? Float.MAX_VALUE : 1.0f / i10;
            }
            this.mVtController.e();
            this.mLastRender = System.nanoTime();
        }

        Animate(ViewTransitionController controller, MotionController motionController, int duration, int upDuration, int mode, Interpolator interpolator, int setTag, int clearTag) {
            float f;
            this.hold_at_100 = false;
            this.mVtController = controller;
            this.mMC = motionController;
            this.mDuration = duration;
            this.mUpDuration = upDuration;
            long jNanoTime = System.nanoTime();
            this.mStart = jNanoTime;
            this.mLastRender = jNanoTime;
            this.mVtController.b(this);
            this.mInterpolator = interpolator;
            this.mSetsTag = setTag;
            this.mClearsTag = clearTag;
            if (mode == 3) {
                this.hold_at_100 = true;
            }
            if (duration == 0) {
                f = Float.MAX_VALUE;
            } else {
                f = 1.0f / duration;
            }
            this.mDpositionDt = f;
            a();
        }

        void b() {
            float interpolation;
            long jNanoTime = System.nanoTime();
            long j6 = jNanoTime - this.mLastRender;
            this.mLastRender = jNanoTime;
            float f = this.mPosition + (((float) (j6 * 1.0E-6d)) * this.mDpositionDt);
            this.mPosition = f;
            if (f >= 1.0f) {
                this.mPosition = 1.0f;
            }
            Interpolator interpolator = this.mInterpolator;
            if (interpolator == null) {
                interpolation = this.mPosition;
            } else {
                interpolation = interpolator.getInterpolation(this.mPosition);
            }
            float f6 = interpolation;
            MotionController motionController = this.mMC;
            boolean zX = motionController.x(motionController.mView, f6, jNanoTime, this.mCache);
            if (this.mPosition >= 1.0f) {
                if (this.mSetsTag != -1) {
                    this.mMC.v().setTag(this.mSetsTag, Long.valueOf(System.nanoTime()));
                }
                if (this.mClearsTag != -1) {
                    this.mMC.v().setTag(this.mClearsTag, null);
                }
                if (!this.hold_at_100) {
                    this.mVtController.g(this);
                }
            }
            if (this.mPosition < 1.0f || zX) {
                this.mVtController.e();
            }
        }

        void c() {
            float interpolation;
            long jNanoTime = System.nanoTime();
            long j6 = jNanoTime - this.mLastRender;
            this.mLastRender = jNanoTime;
            float f = this.mPosition - (((float) (j6 * 1.0E-6d)) * this.mDpositionDt);
            this.mPosition = f;
            if (f < 0.0f) {
                this.mPosition = 0.0f;
            }
            Interpolator interpolator = this.mInterpolator;
            if (interpolator == null) {
                interpolation = this.mPosition;
            } else {
                interpolation = interpolator.getInterpolation(this.mPosition);
            }
            float f6 = interpolation;
            MotionController motionController = this.mMC;
            boolean zX = motionController.x(motionController.mView, f6, jNanoTime, this.mCache);
            if (this.mPosition <= 0.0f) {
                if (this.mSetsTag != -1) {
                    this.mMC.v().setTag(this.mSetsTag, Long.valueOf(System.nanoTime()));
                }
                if (this.mClearsTag != -1) {
                    this.mMC.v().setTag(this.mClearsTag, null);
                }
                this.mVtController.g(this);
            }
            if (this.mPosition > 0.0f || zX) {
                this.mVtController.e();
            }
        }
    }

    int e() {
        return this.mId;
    }

    public int g() {
        return this.mSharedValueTarget;
    }

    public int h() {
        return this.mSharedValueID;
    }

    public int i() {
        return this.mOnStateTransition;
    }

    boolean k(View view) {
        String str;
        if (view == null) {
            return false;
        }
        if ((this.mTargetId == -1 && this.mTargetString == null) || !d(view)) {
            return false;
        }
        if (view.getId() == this.mTargetId) {
            return true;
        }
        return this.mTargetString != null && (view.getLayoutParams() instanceof ConstraintLayout.LayoutParams) && (str = ((ConstraintLayout.LayoutParams) view.getLayoutParams()).constraintTag) != null && str.matches(this.mTargetString);
    }

    boolean m(int action) {
        int i10 = this.mOnStateTransition;
        if (i10 == 1) {
            return action == 0;
        }
        if (i10 == 2) {
            return action == 1;
        }
        return i10 == 3 && action == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(View[] viewArr) {
        if (this.mSetsTag != -1) {
            for (View view : viewArr) {
                view.setTag(this.mSetsTag, Long.valueOf(System.nanoTime()));
            }
        }
        if (this.mClearsTag != -1) {
            for (View view2 : viewArr) {
                view2.setTag(this.mClearsTag, null);
            }
        }
    }

    private void n(MotionScene.Transition transition, View view) {
        int i10 = this.mDuration;
        if (i10 != -1) {
            transition.E(i10);
        }
        transition.I(this.mPathMotionArc);
        transition.G(this.mDefaultInterpolator, this.mDefaultInterpolatorString, this.mDefaultInterpolatorID);
        int id = view.getId();
        KeyFrames keyFrames = this.mKeyFrames;
        if (keyFrames != null) {
            ArrayList<Key> arrayListD = keyFrames.d(-1);
            KeyFrames keyFrames2 = new KeyFrames();
            Iterator<Key> it = arrayListD.iterator();
            while (it.hasNext()) {
                keyFrames2.c(it.next().clone().i(id));
            }
            transition.t(keyFrames2);
        }
    }

    void b(ViewTransitionController controller, MotionLayout motionLayout, View view) {
        MotionController motionController = new MotionController(view);
        motionController.B(view);
        this.mKeyFrames.a(motionController);
        motionController.I(motionLayout.getWidth(), motionLayout.getHeight(), this.mDuration, System.nanoTime());
        new Animate(controller, motionController, this.mDuration, this.mUpDuration, this.mOnStateTransition, f(motionLayout.getContext()), this.mSetsTag, this.mClearsTag);
    }

    void c(ViewTransitionController controller, MotionLayout layout, int fromId, ConstraintSet current, final View... views) {
        if (this.mDisabled) {
            return;
        }
        int i10 = this.mViewTransitionMode;
        if (i10 == 2) {
            b(controller, layout, views[0]);
            return;
        }
        if (i10 == 1) {
            for (int i11 : layout.getConstraintSetIds()) {
                if (i11 != fromId) {
                    ConstraintSet constraintSetN = layout.N(i11);
                    for (View view : views) {
                        ConstraintSet.Constraint constraintW = constraintSetN.w(view.getId());
                        ConstraintSet.Constraint constraint = this.mConstraintDelta;
                        if (constraint != null) {
                            constraint.d(constraintW);
                            constraintW.mCustomConstraints.putAll(this.mConstraintDelta.mCustomConstraints);
                        }
                    }
                }
            }
        }
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.q(current);
        for (View view2 : views) {
            ConstraintSet.Constraint constraintW2 = constraintSet.w(view2.getId());
            ConstraintSet.Constraint constraint2 = this.mConstraintDelta;
            if (constraint2 != null) {
                constraint2.d(constraintW2);
                constraintW2.mCustomConstraints.putAll(this.mConstraintDelta.mCustomConstraints);
            }
        }
        layout.l0(fromId, constraintSet);
        int i12 = R.id.view_transition;
        layout.l0(i12, current);
        layout.setState(i12, -1, -1);
        MotionScene.Transition transition = new MotionScene.Transition(-1, layout.mScene, i12, fromId);
        for (View view3 : views) {
            n(transition, view3);
        }
        layout.setTransition(transition);
        layout.e0(new Runnable() { // from class: androidx.constraintlayout.motion.widget.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f140a.j(views);
            }
        });
    }

    boolean d(View view) {
        int i10 = this.mIfTagSet;
        boolean z6 = i10 == -1 || view.getTag(i10) != null;
        int i11 = this.mIfTagNotSet;
        return z6 && (i11 == -1 || view.getTag(i11) == null);
    }

    Interpolator f(Context context) {
        int i10 = this.mDefaultInterpolator;
        if (i10 == -2) {
            return AnimationUtils.loadInterpolator(context, this.mDefaultInterpolatorID);
        }
        if (i10 == -1) {
            final Easing easingC = Easing.c(this.mDefaultInterpolatorString);
            return new Interpolator(this) { // from class: androidx.constraintlayout.motion.widget.ViewTransition.1
                @Override // android.animation.TimeInterpolator
                public float getInterpolation(float v5) {
                    return (float) easingC.a(v5);
                }
            };
        }
        if (i10 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i10 == 1) {
            return new AccelerateInterpolator();
        }
        if (i10 == 2) {
            return new DecelerateInterpolator();
        }
        if (i10 == 4) {
            return new BounceInterpolator();
        }
        if (i10 == 5) {
            return new OvershootInterpolator();
        }
        if (i10 != 6) {
            return null;
        }
        return new AnticipateInterpolator();
    }

    public String toString() {
        return "ViewTransition(" + Debug.c(this.mContext, this.mId) + ")";
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0085  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    ViewTransition(Context context, XmlPullParser parser) {
        byte b7;
        this.mContext = context;
        try {
            int eventType = parser.getEventType();
            while (eventType != 1) {
                if (eventType != 2) {
                    if (eventType == 3 && VIEW_TRANSITION_TAG.equals(parser.getName())) {
                        return;
                    }
                } else {
                    String name = parser.getName();
                    switch (name.hashCode()) {
                        case -1962203927:
                            if (name.equals(CONSTRAINT_OVERRIDE)) {
                                b7 = 2;
                            } else {
                                b7 = -1;
                            }
                            break;
                        case -1239391468:
                            if (name.equals(KEY_FRAME_SET_TAG)) {
                                b7 = 1;
                            } else {
                                b7 = -1;
                            }
                            break;
                        case 61998586:
                            if (name.equals(VIEW_TRANSITION_TAG)) {
                                b7 = 0;
                            } else {
                                b7 = -1;
                            }
                            break;
                        case 366511058:
                            if (name.equals(CUSTOM_METHOD)) {
                                b7 = 4;
                            } else {
                                b7 = -1;
                            }
                            break;
                        case 1791837707:
                            if (name.equals(CUSTOM_ATTRIBUTE)) {
                                b7 = 3;
                            } else {
                                b7 = -1;
                            }
                            break;
                        default:
                            b7 = -1;
                            break;
                    }
                    if (b7 != 0) {
                        if (b7 != 1) {
                            if (b7 != 2) {
                                if (b7 != 3 && b7 != 4) {
                                    Log.e(TAG, Debug.a() + " unknown tag " + name);
                                    Log.e(TAG, ".xml:" + parser.getLineNumber());
                                } else {
                                    ConstraintAttribute.i(context, parser, this.mConstraintDelta.mCustomConstraints);
                                }
                            } else {
                                this.mConstraintDelta = ConstraintSet.m(context, parser);
                            }
                        } else {
                            this.mKeyFrames = new KeyFrames(context, parser);
                        }
                    } else {
                        l(context, parser);
                    }
                }
                eventType = parser.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    private void l(Context context, XmlPullParser parser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.ViewTransition);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R.styleable.ViewTransition_android_id) {
                this.mId = typedArrayObtainStyledAttributes.getResourceId(index, this.mId);
            } else if (index == R.styleable.ViewTransition_motionTarget) {
                if (MotionLayout.IS_IN_EDIT_MODE) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.mTargetId);
                    this.mTargetId = resourceId;
                    if (resourceId == -1) {
                        this.mTargetString = typedArrayObtainStyledAttributes.getString(index);
                    }
                } else if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                    this.mTargetString = typedArrayObtainStyledAttributes.getString(index);
                } else {
                    this.mTargetId = typedArrayObtainStyledAttributes.getResourceId(index, this.mTargetId);
                }
            } else if (index == R.styleable.ViewTransition_onStateTransition) {
                this.mOnStateTransition = typedArrayObtainStyledAttributes.getInt(index, this.mOnStateTransition);
            } else if (index == R.styleable.ViewTransition_transitionDisable) {
                this.mDisabled = typedArrayObtainStyledAttributes.getBoolean(index, this.mDisabled);
            } else if (index == R.styleable.ViewTransition_pathMotionArc) {
                this.mPathMotionArc = typedArrayObtainStyledAttributes.getInt(index, this.mPathMotionArc);
            } else if (index == R.styleable.ViewTransition_duration) {
                this.mDuration = typedArrayObtainStyledAttributes.getInt(index, this.mDuration);
            } else if (index == R.styleable.ViewTransition_upDuration) {
                this.mUpDuration = typedArrayObtainStyledAttributes.getInt(index, this.mUpDuration);
            } else if (index == R.styleable.ViewTransition_viewTransitionMode) {
                this.mViewTransitionMode = typedArrayObtainStyledAttributes.getInt(index, this.mViewTransitionMode);
            } else if (index == R.styleable.ViewTransition_motionInterpolator) {
                int i11 = typedArrayObtainStyledAttributes.peekValue(index).type;
                if (i11 == 1) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    this.mDefaultInterpolatorID = resourceId2;
                    if (resourceId2 != -1) {
                        this.mDefaultInterpolator = -2;
                    }
                } else if (i11 == 3) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.mDefaultInterpolatorString = string;
                    if (string != null && string.indexOf(c.FORWARD_SLASH_STRING) > 0) {
                        this.mDefaultInterpolatorID = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.mDefaultInterpolator = -2;
                    } else {
                        this.mDefaultInterpolator = -1;
                    }
                } else {
                    this.mDefaultInterpolator = typedArrayObtainStyledAttributes.getInteger(index, this.mDefaultInterpolator);
                }
            } else if (index == R.styleable.ViewTransition_setsTag) {
                this.mSetsTag = typedArrayObtainStyledAttributes.getResourceId(index, this.mSetsTag);
            } else if (index == R.styleable.ViewTransition_clearsTag) {
                this.mClearsTag = typedArrayObtainStyledAttributes.getResourceId(index, this.mClearsTag);
            } else if (index == R.styleable.ViewTransition_ifTagSet) {
                this.mIfTagSet = typedArrayObtainStyledAttributes.getResourceId(index, this.mIfTagSet);
            } else if (index == R.styleable.ViewTransition_ifTagNotSet) {
                this.mIfTagNotSet = typedArrayObtainStyledAttributes.getResourceId(index, this.mIfTagNotSet);
            } else if (index == R.styleable.ViewTransition_SharedValueId) {
                this.mSharedValueID = typedArrayObtainStyledAttributes.getResourceId(index, this.mSharedValueID);
            } else if (index == R.styleable.ViewTransition_SharedValue) {
                this.mSharedValueTarget = typedArrayObtainStyledAttributes.getInteger(index, this.mSharedValueTarget);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
