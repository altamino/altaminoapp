package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
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
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.StateSet;
import com.google.firebase.sessions.settings.c;
import com.narvii.util.ws.WsMessage;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes5.dex */
public class MotionScene {
    static final int ANTICIPATE = 6;
    static final int BOUNCE = 4;
    private static final String CONSTRAINTSET_TAG = "ConstraintSet";
    private static final boolean DEBUG = false;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final String INCLUDE_TAG = "include";
    private static final String INCLUDE_TAG_UC = "Include";
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    private static final String KEYFRAMESET_TAG = "KeyFrameSet";
    public static final int LAYOUT_CALL_MEASURE = 2;
    public static final int LAYOUT_HONOR_REQUEST = 1;
    public static final int LAYOUT_IGNORE_REQUEST = 0;
    static final int LINEAR = 3;
    private static final int MIN_DURATION = 8;
    private static final String MOTIONSCENE_TAG = "MotionScene";
    private static final String ONCLICK_TAG = "OnClick";
    private static final String ONSWIPE_TAG = "OnSwipe";
    static final int OVERSHOOT = 5;
    private static final int SPLINE_STRING = -1;
    private static final String STATESET_TAG = "StateSet";
    private static final String TAG = "MotionScene";
    static final int TRANSITION_BACKWARD = 0;
    static final int TRANSITION_FORWARD = 1;
    private static final String TRANSITION_TAG = "Transition";
    public static final int UNSET = -1;
    private static final String VIEW_TRANSITION = "ViewTransition";
    private MotionEvent mLastTouchDown;
    float mLastTouchX;
    float mLastTouchY;
    private final MotionLayout mMotionLayout;
    private boolean mRtl;
    private MotionLayout.MotionTracker mVelocityTracker;
    final ViewTransitionController mViewTransitionController;
    StateSet mStateSet = null;
    Transition mCurrentTransition = null;
    private boolean mDisableAutoTransition = false;
    private ArrayList<Transition> mTransitionList = new ArrayList<>();
    private Transition mDefaultTransition = null;
    private ArrayList<Transition> mAbstractTransitionList = new ArrayList<>();
    private SparseArray<ConstraintSet> mConstraintSetMap = new SparseArray<>();
    private HashMap<String, Integer> mConstraintSetIdMap = new HashMap<>();
    private SparseIntArray mDeriveMap = new SparseIntArray();
    private boolean DEBUG_DESKTOP = false;
    private int mDefaultDuration = WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
    private int mLayoutDuringTransition = 0;
    private boolean mIgnoreTouch = false;
    private boolean mMotionOutsideRegion = false;

    public static class Transition {
        public static final int AUTO_ANIMATE_TO_END = 4;
        public static final int AUTO_ANIMATE_TO_START = 3;
        public static final int AUTO_JUMP_TO_END = 2;
        public static final int AUTO_JUMP_TO_START = 1;
        public static final int AUTO_NONE = 0;
        public static final int INTERPOLATE_ANTICIPATE = 6;
        public static final int INTERPOLATE_BOUNCE = 4;
        public static final int INTERPOLATE_EASE_IN = 1;
        public static final int INTERPOLATE_EASE_IN_OUT = 0;
        public static final int INTERPOLATE_EASE_OUT = 2;
        public static final int INTERPOLATE_LINEAR = 3;
        public static final int INTERPOLATE_OVERSHOOT = 5;
        public static final int INTERPOLATE_REFERENCE_ID = -2;
        public static final int INTERPOLATE_SPLINE_STRING = -1;
        static final int TRANSITION_FLAG_FIRST_DRAW = 1;
        static final int TRANSITION_FLAG_INTERCEPT_TOUCH = 4;
        static final int TRANSITION_FLAG_INTRA_AUTO = 2;
        private int mAutoTransition;
        private int mConstraintSetEnd;
        private int mConstraintSetStart;
        private int mDefaultInterpolator;
        private int mDefaultInterpolatorID;
        private String mDefaultInterpolatorString;
        private boolean mDisable;
        private int mDuration;
        private int mId;
        private boolean mIsAbstract;
        private ArrayList<KeyFrames> mKeyFramesList;
        private int mLayoutDuringTransition;
        private final MotionScene mMotionScene;
        private ArrayList<TransitionOnClick> mOnClicks;
        private int mPathMotionArc;
        private float mStagger;
        private TouchResponse mTouchResponse;
        private int mTransitionFlags;

        public static class TransitionOnClick implements View.OnClickListener {
            public static final int ANIM_TOGGLE = 17;
            public static final int ANIM_TO_END = 1;
            public static final int ANIM_TO_START = 16;
            public static final int JUMP_TO_END = 256;
            public static final int JUMP_TO_START = 4096;
            int mMode;
            int mTargetId;
            private final Transition mTransition;

            public TransitionOnClick(Context context, Transition transition, XmlPullParser parser) {
                this.mTargetId = -1;
                this.mMode = 17;
                this.mTransition = transition;
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.OnClick);
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                for (int i10 = 0; i10 < indexCount; i10++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i10);
                    if (index == R.styleable.OnClick_targetId) {
                        this.mTargetId = typedArrayObtainStyledAttributes.getResourceId(index, this.mTargetId);
                    } else if (index == R.styleable.OnClick_clickAction) {
                        this.mMode = typedArrayObtainStyledAttributes.getInt(index, this.mMode);
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }

            public void a(MotionLayout motionLayout, int i10, Transition transition) {
                boolean z6;
                View viewFindViewById;
                int i11 = this.mTargetId;
                View view = motionLayout;
                if (i11 != -1) {
                    viewFindViewById = motionLayout.findViewById(i11);
                }
                if (view == null) {
                    view = viewFindViewById;
                    Log.e(TypedValues.MotionScene.NAME, "OnClick could not find id " + this.mTargetId);
                    return;
                }
                int i12 = transition.mConstraintSetStart;
                int i13 = transition.mConstraintSetEnd;
                if (i12 == -1) {
                    view = viewFindViewById;
                    view.setOnClickListener(this);
                    return;
                }
                int i14 = this.mMode;
                boolean z10 = false;
                if ((i14 & 1) == 0 || i10 != i12) {
                    view = viewFindViewById;
                    z6 = false;
                } else {
                    z6 = true;
                }
                boolean z11 = ((i14 & 1) != 0 && i10 == i12) | z6 | ((i14 & 256) != 0 && i10 == i12) | ((i14 & 16) != 0 && i10 == i13);
                if ((i14 & 4096) != 0 && i10 == i13) {
                    z10 = true;
                }
                if (z11 || z10) {
                    view.setOnClickListener(this);
                }
            }

            boolean b(Transition current, MotionLayout tl) {
                Transition transition = this.mTransition;
                if (transition == current) {
                    return true;
                }
                int i10 = transition.mConstraintSetEnd;
                int i11 = this.mTransition.mConstraintSetStart;
                if (i11 == -1) {
                    return tl.mCurrentState != i10;
                }
                int i12 = tl.mCurrentState;
                return i12 == i11 || i12 == i10;
            }

            public void c(MotionLayout motionLayout) {
                int i10 = this.mTargetId;
                if (i10 == -1) {
                    return;
                }
                View viewFindViewById = motionLayout.findViewById(i10);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(null);
                    return;
                }
                Log.e(TypedValues.MotionScene.NAME, " (*)  could not find id " + this.mTargetId);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MotionLayout motionLayout = this.mTransition.mMotionScene.mMotionLayout;
                if (motionLayout.T()) {
                    if (this.mTransition.mConstraintSetStart == -1) {
                        int currentState = motionLayout.getCurrentState();
                        if (currentState == -1) {
                            motionLayout.g0(this.mTransition.mConstraintSetEnd);
                            return;
                        }
                        Transition transition = new Transition(this.mTransition.mMotionScene, this.mTransition);
                        transition.mConstraintSetStart = currentState;
                        transition.mConstraintSetEnd = this.mTransition.mConstraintSetEnd;
                        motionLayout.setTransition(transition);
                        motionLayout.d0();
                        return;
                    }
                    Transition transition2 = this.mTransition.mMotionScene.mCurrentTransition;
                    int i10 = this.mMode;
                    boolean z6 = false;
                    boolean z10 = ((i10 & 1) == 0 && (i10 & 256) == 0) ? false : true;
                    boolean z11 = ((i10 & 16) == 0 && (i10 & 4096) == 0) ? false : true;
                    if (z10 && z11) {
                        Transition transition3 = this.mTransition.mMotionScene.mCurrentTransition;
                        Transition transition4 = this.mTransition;
                        if (transition3 != transition4) {
                            motionLayout.setTransition(transition4);
                        }
                        if (motionLayout.getCurrentState() != motionLayout.getEndState() && motionLayout.getProgress() <= 0.5f) {
                            z11 = false;
                            z6 = z10;
                        }
                    } else {
                        z6 = z10;
                    }
                    if (b(transition2, motionLayout)) {
                        if (z6 && (this.mMode & 1) != 0) {
                            motionLayout.setTransition(this.mTransition);
                            motionLayout.d0();
                            return;
                        }
                        if (z11 && (this.mMode & 16) != 0) {
                            motionLayout.setTransition(this.mTransition);
                            motionLayout.f0();
                        } else if (z6 && (this.mMode & 256) != 0) {
                            motionLayout.setTransition(this.mTransition);
                            motionLayout.setProgress(1.0f);
                        } else {
                            if (!z11 || (this.mMode & 4096) == 0) {
                                return;
                            }
                            motionLayout.setTransition(this.mTransition);
                            motionLayout.setProgress(0.0f);
                        }
                    }
                }
            }

            public TransitionOnClick(Transition transition, int id, int action) {
                this.mTransition = transition;
                this.mTargetId = id;
                this.mMode = action;
            }
        }

        Transition(MotionScene motionScene, Transition global) {
            this.mId = -1;
            this.mIsAbstract = false;
            this.mConstraintSetEnd = -1;
            this.mConstraintSetStart = -1;
            this.mDefaultInterpolator = 0;
            this.mDefaultInterpolatorString = null;
            this.mDefaultInterpolatorID = -1;
            this.mDuration = WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
            this.mStagger = 0.0f;
            this.mKeyFramesList = new ArrayList<>();
            this.mTouchResponse = null;
            this.mOnClicks = new ArrayList<>();
            this.mAutoTransition = 0;
            this.mDisable = false;
            this.mPathMotionArc = -1;
            this.mLayoutDuringTransition = 0;
            this.mTransitionFlags = 0;
            this.mMotionScene = motionScene;
            this.mDuration = motionScene.mDefaultDuration;
            if (global != null) {
                this.mPathMotionArc = global.mPathMotionArc;
                this.mDefaultInterpolator = global.mDefaultInterpolator;
                this.mDefaultInterpolatorString = global.mDefaultInterpolatorString;
                this.mDefaultInterpolatorID = global.mDefaultInterpolatorID;
                this.mDuration = global.mDuration;
                this.mKeyFramesList = global.mKeyFramesList;
                this.mStagger = global.mStagger;
                this.mLayoutDuringTransition = global.mLayoutDuringTransition;
            }
        }

        public int A() {
            return this.mConstraintSetStart;
        }

        public TouchResponse B() {
            return this.mTouchResponse;
        }

        public boolean C() {
            return !this.mDisable;
        }

        public boolean D(int flag) {
            return (flag & this.mTransitionFlags) != 0;
        }

        public void F(boolean enable) {
            this.mDisable = !enable;
        }

        public void G(int interpolator, String interpolatorString, int interpolatorID) {
            this.mDefaultInterpolator = interpolator;
            this.mDefaultInterpolatorString = interpolatorString;
            this.mDefaultInterpolatorID = interpolatorID;
        }

        public void I(int arcMode) {
            this.mPathMotionArc = arcMode;
        }

        public int x() {
            return this.mAutoTransition;
        }

        public int y() {
            return this.mConstraintSetEnd;
        }

        public int z() {
            return this.mLayoutDuringTransition;
        }

        private void w(MotionScene motionScene, Context context, AttributeSet attrs) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.Transition);
            v(motionScene, context, typedArrayObtainStyledAttributes);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void E(int duration) {
            this.mDuration = Math.max(duration, 8);
        }

        public void t(KeyFrames keyFrames) {
            this.mKeyFramesList.add(keyFrames);
        }

        public void u(Context context, XmlPullParser parser) {
            this.mOnClicks.add(new TransitionOnClick(context, this, parser));
        }

        private void v(MotionScene motionScene, Context context, TypedArray a7) {
            int indexCount = a7.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = a7.getIndex(i10);
                if (index == R.styleable.Transition_constraintSetEnd) {
                    this.mConstraintSetEnd = a7.getResourceId(index, -1);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintSetEnd);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        constraintSet.D(context, this.mConstraintSetEnd);
                        motionScene.mConstraintSetMap.append(this.mConstraintSetEnd, constraintSet);
                    } else if ("xml".equals(resourceTypeName)) {
                        this.mConstraintSetEnd = motionScene.M(context, this.mConstraintSetEnd);
                    }
                } else if (index == R.styleable.Transition_constraintSetStart) {
                    this.mConstraintSetStart = a7.getResourceId(index, this.mConstraintSetStart);
                    String resourceTypeName2 = context.getResources().getResourceTypeName(this.mConstraintSetStart);
                    if ("layout".equals(resourceTypeName2)) {
                        ConstraintSet constraintSet2 = new ConstraintSet();
                        constraintSet2.D(context, this.mConstraintSetStart);
                        motionScene.mConstraintSetMap.append(this.mConstraintSetStart, constraintSet2);
                    } else if ("xml".equals(resourceTypeName2)) {
                        this.mConstraintSetStart = motionScene.M(context, this.mConstraintSetStart);
                    }
                } else if (index == R.styleable.Transition_motionInterpolator) {
                    int i11 = a7.peekValue(index).type;
                    if (i11 == 1) {
                        int resourceId = a7.getResourceId(index, -1);
                        this.mDefaultInterpolatorID = resourceId;
                        if (resourceId != -1) {
                            this.mDefaultInterpolator = -2;
                        }
                    } else if (i11 == 3) {
                        String string = a7.getString(index);
                        this.mDefaultInterpolatorString = string;
                        if (string != null) {
                            if (string.indexOf(c.FORWARD_SLASH_STRING) > 0) {
                                this.mDefaultInterpolatorID = a7.getResourceId(index, -1);
                                this.mDefaultInterpolator = -2;
                            } else {
                                this.mDefaultInterpolator = -1;
                            }
                        }
                    } else {
                        this.mDefaultInterpolator = a7.getInteger(index, this.mDefaultInterpolator);
                    }
                } else if (index == R.styleable.Transition_duration) {
                    int i12 = a7.getInt(index, this.mDuration);
                    this.mDuration = i12;
                    if (i12 < 8) {
                        this.mDuration = 8;
                    }
                } else if (index == R.styleable.Transition_staggered) {
                    this.mStagger = a7.getFloat(index, this.mStagger);
                } else if (index == R.styleable.Transition_autoTransition) {
                    this.mAutoTransition = a7.getInteger(index, this.mAutoTransition);
                } else if (index == R.styleable.Transition_android_id) {
                    this.mId = a7.getResourceId(index, this.mId);
                } else if (index == R.styleable.Transition_transitionDisable) {
                    this.mDisable = a7.getBoolean(index, this.mDisable);
                } else if (index == R.styleable.Transition_pathMotionArc) {
                    this.mPathMotionArc = a7.getInteger(index, -1);
                } else if (index == R.styleable.Transition_layoutDuringTransition) {
                    this.mLayoutDuringTransition = a7.getInteger(index, 0);
                } else if (index == R.styleable.Transition_transitionFlags) {
                    this.mTransitionFlags = a7.getInteger(index, 0);
                }
            }
            if (this.mConstraintSetStart == -1) {
                this.mIsAbstract = true;
            }
        }

        public void H(int touchUpMode) {
            TouchResponse touchResponseB = B();
            if (touchResponseB != null) {
                touchResponseB.y(touchUpMode);
            }
        }

        public Transition(int id, MotionScene motionScene, int constraintSetStartId, int constraintSetEndId) {
            this.mId = -1;
            this.mIsAbstract = false;
            this.mConstraintSetEnd = -1;
            this.mConstraintSetStart = -1;
            this.mDefaultInterpolator = 0;
            this.mDefaultInterpolatorString = null;
            this.mDefaultInterpolatorID = -1;
            this.mDuration = WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
            this.mStagger = 0.0f;
            this.mKeyFramesList = new ArrayList<>();
            this.mTouchResponse = null;
            this.mOnClicks = new ArrayList<>();
            this.mAutoTransition = 0;
            this.mDisable = false;
            this.mPathMotionArc = -1;
            this.mLayoutDuringTransition = 0;
            this.mTransitionFlags = 0;
            this.mId = id;
            this.mMotionScene = motionScene;
            this.mConstraintSetStart = constraintSetStartId;
            this.mConstraintSetEnd = constraintSetEndId;
            this.mDuration = motionScene.mDefaultDuration;
            this.mLayoutDuringTransition = motionScene.mLayoutDuringTransition;
        }

        Transition(MotionScene motionScene, Context context, XmlPullParser parser) {
            this.mId = -1;
            this.mIsAbstract = false;
            this.mConstraintSetEnd = -1;
            this.mConstraintSetStart = -1;
            this.mDefaultInterpolator = 0;
            this.mDefaultInterpolatorString = null;
            this.mDefaultInterpolatorID = -1;
            this.mDuration = WsMessage.LIVE_LAYER_USER_JOINED_EVENT;
            this.mStagger = 0.0f;
            this.mKeyFramesList = new ArrayList<>();
            this.mTouchResponse = null;
            this.mOnClicks = new ArrayList<>();
            this.mAutoTransition = 0;
            this.mDisable = false;
            this.mPathMotionArc = -1;
            this.mLayoutDuringTransition = 0;
            this.mTransitionFlags = 0;
            this.mDuration = motionScene.mDefaultDuration;
            this.mLayoutDuringTransition = motionScene.mLayoutDuringTransition;
            this.mMotionScene = motionScene;
            w(motionScene, context, Xml.asAttributeSet(parser));
        }
    }

    public MotionScene(MotionLayout layout) {
        this.mMotionLayout = layout;
        this.mViewTransitionController = new ViewTransitionController(layout);
    }

    private boolean J() {
        return this.mVelocityTracker != null;
    }

    void T(MotionLayout motionLayout) {
        for (int i10 = 0; i10 < this.mConstraintSetMap.size(); i10++) {
            int iKeyAt = this.mConstraintSetMap.keyAt(i10);
            if (I(iKeyAt)) {
                Log.e(TypedValues.MotionScene.NAME, "Cannot be derived from yourself");
                return;
            }
            S(iKeyAt, motionLayout);
        }
    }

    ConstraintSet l(int id) {
        return m(id, -1, -1);
    }

    public ArrayList<Transition> o() {
        return this.mTransitionList;
    }

    private boolean I(int key) {
        int i10 = this.mDeriveMap.get(key);
        int size = this.mDeriveMap.size();
        while (i10 > 0) {
            if (i10 == key) {
                return true;
            }
            int i11 = size - 1;
            if (size < 0) {
                return true;
            }
            i10 = this.mDeriveMap.get(i10);
            size = i11;
        }
        return false;
    }

    private int L(Context context, XmlPullParser parser) {
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.R(false);
        int attributeCount = parser.getAttributeCount();
        int iR = -1;
        int iR2 = -1;
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = parser.getAttributeName(i10);
            String attributeValue = parser.getAttributeValue(i10);
            if (this.DEBUG_DESKTOP) {
                System.out.println("id string = " + attributeValue);
            }
            attributeName.hashCode();
            switch (attributeName) {
                case "deriveConstraintsFrom":
                    iR2 = r(context, attributeValue);
                    break;
                case "constraintRotate":
                    try {
                        constraintSet.mRotate = Integer.parseInt(attributeValue);
                        break;
                    } catch (NumberFormatException unused) {
                        attributeValue.hashCode();
                        switch (attributeValue) {
                            case "x_left":
                                constraintSet.mRotate = 4;
                                break;
                            case "left":
                                constraintSet.mRotate = 2;
                                break;
                            case "none":
                                constraintSet.mRotate = 0;
                                break;
                            case "right":
                                constraintSet.mRotate = 1;
                                break;
                            case "x_right":
                                constraintSet.mRotate = 3;
                                break;
                        }
                    }
                    break;
                case "id":
                    iR = r(context, attributeValue);
                    this.mConstraintSetIdMap.put(a0(attributeValue), Integer.valueOf(iR));
                    constraintSet.mIdString = Debug.c(context, iR);
                    break;
            }
        }
        if (iR != -1) {
            if (this.mMotionLayout.mDebugPath != 0) {
                constraintSet.S(true);
            }
            constraintSet.E(context, parser);
            if (iR2 != -1) {
                this.mDeriveMap.put(iR, iR2);
            }
            this.mConstraintSetMap.put(iR, constraintSet);
        }
        return iR;
    }

    private void S(int key, MotionLayout motionLayout) {
        ConstraintSet constraintSet = this.mConstraintSetMap.get(key);
        constraintSet.derivedState = constraintSet.mIdString;
        int i10 = this.mDeriveMap.get(key);
        if (i10 > 0) {
            S(i10, motionLayout);
            ConstraintSet constraintSet2 = this.mConstraintSetMap.get(i10);
            if (constraintSet2 == null) {
                Log.e(TypedValues.MotionScene.NAME, "ERROR! invalid deriveConstraintsFrom: @id/" + Debug.c(this.mMotionLayout.getContext(), i10));
                return;
            }
            constraintSet.derivedState += c.FORWARD_SLASH_STRING + constraintSet2.derivedState;
            constraintSet.M(constraintSet2);
        } else {
            constraintSet.derivedState += "  layout";
            constraintSet.L(motionLayout);
        }
        constraintSet.h(constraintSet);
    }

    public static String a0(String id) {
        if (id == null) {
            return "";
        }
        int iIndexOf = id.indexOf(47);
        return iIndexOf < 0 ? id : id.substring(iIndexOf + 1);
    }

    private int r(Context context, String idString) {
        int identifier;
        if (idString.contains(c.FORWARD_SLASH_STRING)) {
            identifier = context.getResources().getIdentifier(idString.substring(idString.indexOf(47) + 1), "id", context.getPackageName());
            if (this.DEBUG_DESKTOP) {
                System.out.println("id getMap res = " + identifier);
            }
        } else {
            identifier = -1;
        }
        if (identifier != -1) {
            return identifier;
        }
        if (idString.length() > 1) {
            return Integer.parseInt(idString.substring(1));
        }
        Log.e(TypedValues.MotionScene.NAME, "error in parsing id");
        return identifier;
    }

    private int y(int stateId) {
        int iC;
        StateSet stateSet = this.mStateSet;
        return (stateSet == null || (iC = stateSet.c(stateId, -1, -1)) == -1) ? stateId : iC;
    }

    float A() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.l();
    }

    float B() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.m();
    }

    float C() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.n();
    }

    float D() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.o();
    }

    public float E() {
        Transition transition = this.mCurrentTransition;
        if (transition != null) {
            return transition.mStagger;
        }
        return 0.0f;
    }

    int F() {
        Transition transition = this.mCurrentTransition;
        if (transition == null) {
            return -1;
        }
        return transition.mConstraintSetStart;
    }

    public Transition G(int id) {
        for (Transition transition : this.mTransitionList) {
            if (transition.mId == id) {
                return transition;
            }
        }
        return null;
    }

    void P(float dx, float dy) {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return;
        }
        this.mCurrentTransition.mTouchResponse.u(dx, dy);
    }

    void Q(float dx, float dy) {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return;
        }
        this.mCurrentTransition.mTouchResponse.v(dx, dy);
    }

    void R(MotionEvent event, int currentState, MotionLayout motionLayout) {
        MotionLayout.MotionTracker motionTracker;
        MotionEvent motionEvent;
        RectF rectF = new RectF();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = this.mMotionLayout.U();
        }
        this.mVelocityTracker.b(event);
        if (currentState != -1) {
            int action = event.getAction();
            boolean z6 = false;
            if (action == 0) {
                this.mLastTouchX = event.getRawX();
                this.mLastTouchY = event.getRawY();
                this.mLastTouchDown = event;
                this.mIgnoreTouch = false;
                if (this.mCurrentTransition.mTouchResponse != null) {
                    RectF rectFF = this.mCurrentTransition.mTouchResponse.f(this.mMotionLayout, rectF);
                    if (rectFF != null && !rectFF.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY())) {
                        this.mLastTouchDown = null;
                        this.mIgnoreTouch = true;
                        return;
                    }
                    RectF rectFP = this.mCurrentTransition.mTouchResponse.p(this.mMotionLayout, rectF);
                    if (rectFP == null || rectFP.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY())) {
                        this.mMotionOutsideRegion = false;
                    } else {
                        this.mMotionOutsideRegion = true;
                    }
                    this.mCurrentTransition.mTouchResponse.w(this.mLastTouchX, this.mLastTouchY);
                    return;
                }
                return;
            }
            if (action == 2 && !this.mIgnoreTouch) {
                float rawY = event.getRawY() - this.mLastTouchY;
                float rawX = event.getRawX() - this.mLastTouchX;
                if ((rawX == com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE && rawY == com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) || (motionEvent = this.mLastTouchDown) == null) {
                    return;
                }
                Transition transitionI = i(currentState, rawX, rawY, motionEvent);
                if (transitionI != null) {
                    motionLayout.setTransition(transitionI);
                    RectF rectFP2 = this.mCurrentTransition.mTouchResponse.p(this.mMotionLayout, rectF);
                    if (rectFP2 != null && !rectFP2.contains(this.mLastTouchDown.getX(), this.mLastTouchDown.getY())) {
                        z6 = true;
                    }
                    this.mMotionOutsideRegion = z6;
                    this.mCurrentTransition.mTouchResponse.z(this.mLastTouchX, this.mLastTouchY);
                }
            }
        }
        if (this.mIgnoreTouch) {
            return;
        }
        Transition transition = this.mCurrentTransition;
        if (transition != null && transition.mTouchResponse != null && !this.mMotionOutsideRegion) {
            this.mCurrentTransition.mTouchResponse.s(event, this.mVelocityTracker, currentState, this);
        }
        this.mLastTouchX = event.getRawX();
        this.mLastTouchY = event.getRawY();
        if (event.getAction() != 1 || (motionTracker = this.mVelocityTracker) == null) {
            return;
        }
        motionTracker.a();
        this.mVelocityTracker = null;
        int i10 = motionLayout.mCurrentState;
        if (i10 != -1) {
            h(motionLayout, i10);
        }
    }

    public void U(int id, ConstraintSet set) {
        this.mConstraintSetMap.put(id, set);
    }

    public void V(int duration) {
        Transition transition = this.mCurrentTransition;
        if (transition != null) {
            transition.E(duration);
        } else {
            this.mDefaultDuration = duration;
        }
    }

    public void W(boolean rtl) {
        this.mRtl = rtl;
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return;
        }
        this.mCurrentTransition.mTouchResponse.x(this.mRtl);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0039  */
    /* JADX WARN: Code duplicated, block: B:40:0x007b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0096  */
    /* JADX WARN: Code duplicated, block: B:48:0x006d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0075 A[SYNTHETIC] */
    void X(int beginId, int endId) {
        int iC;
        int iC2;
        Transition transition;
        Iterator<Transition> it;
        Transition transition2;
        Transition transition3;
        Transition next;
        StateSet stateSet = this.mStateSet;
        if (stateSet != null) {
            iC = stateSet.c(beginId, -1, -1);
            if (iC == -1) {
                iC = beginId;
            }
            iC2 = this.mStateSet.c(endId, -1, -1);
            if (iC2 == -1) {
            }
            transition = this.mCurrentTransition;
            if (transition == null && transition.mConstraintSetEnd == endId && this.mCurrentTransition.mConstraintSetStart == beginId) {
                return;
            }
            it = this.mTransitionList.iterator();
            while (true) {
                if (it.hasNext()) {
                    transition2 = this.mDefaultTransition;
                    for (Transition transition4 : this.mAbstractTransitionList) {
                        if (transition4.mConstraintSetEnd == endId) {
                            transition2 = transition4;
                        }
                    }
                    transition3 = new Transition(this, transition2);
                    transition3.mConstraintSetStart = iC;
                    transition3.mConstraintSetEnd = iC2;
                    if (iC != -1) {
                        this.mTransitionList.add(transition3);
                    }
                    this.mCurrentTransition = transition3;
                    return;
                }
                next = it.next();
                if ((next.mConstraintSetEnd != iC2 && next.mConstraintSetStart == iC) || (next.mConstraintSetEnd == endId && next.mConstraintSetStart == beginId)) {
                    break;
                }
            }
            this.mCurrentTransition = next;
            if (next != null || next.mTouchResponse == null) {
            }
            this.mCurrentTransition.mTouchResponse.x(this.mRtl);
            return;
        }
        iC = beginId;
        iC2 = endId;
        transition = this.mCurrentTransition;
        if (transition == null) {
        }
        it = this.mTransitionList.iterator();
        while (true) {
            if (it.hasNext()) {
                transition2 = this.mDefaultTransition;
                while (r3.hasNext()) {
                    if (transition4.mConstraintSetEnd == endId) {
                        transition2 = transition4;
                    }
                }
                transition3 = new Transition(this, transition2);
                transition3.mConstraintSetStart = iC;
                transition3.mConstraintSetEnd = iC2;
                if (iC != -1) {
                    this.mTransitionList.add(transition3);
                }
                this.mCurrentTransition = transition3;
                return;
            }
            next = it.next();
            if (next.mConstraintSetEnd != iC2) {
            }
        }
        this.mCurrentTransition = next;
        if (next != null) {
        }
    }

    public void Y(Transition transition) {
        this.mCurrentTransition = transition;
        if (transition == null || transition.mTouchResponse == null) {
            return;
        }
        this.mCurrentTransition.mTouchResponse.x(this.mRtl);
    }

    void Z() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return;
        }
        this.mCurrentTransition.mTouchResponse.A();
    }

    boolean b0() {
        Iterator<Transition> it = this.mTransitionList.iterator();
        while (it.hasNext()) {
            if (it.next().mTouchResponse != null) {
                return true;
            }
        }
        Transition transition = this.mCurrentTransition;
        return (transition == null || transition.mTouchResponse == null) ? false : true;
    }

    public void c0(int id, View... view) {
        this.mViewTransitionController.i(id, view);
    }

    public void f(MotionLayout motionLayout, int currentState) {
        for (Transition transition : this.mTransitionList) {
            if (transition.mOnClicks.size() > 0) {
                Iterator it = transition.mOnClicks.iterator();
                while (it.hasNext()) {
                    ((Transition.TransitionOnClick) it.next()).c(motionLayout);
                }
            }
        }
        for (Transition transition2 : this.mAbstractTransitionList) {
            if (transition2.mOnClicks.size() > 0) {
                Iterator it2 = transition2.mOnClicks.iterator();
                while (it2.hasNext()) {
                    ((Transition.TransitionOnClick) it2.next()).c(motionLayout);
                }
            }
        }
        for (Transition transition3 : this.mTransitionList) {
            if (transition3.mOnClicks.size() > 0) {
                Iterator it3 = transition3.mOnClicks.iterator();
                while (it3.hasNext()) {
                    ((Transition.TransitionOnClick) it3.next()).a(motionLayout, currentState, transition3);
                }
            }
        }
        for (Transition transition4 : this.mAbstractTransitionList) {
            if (transition4.mOnClicks.size() > 0) {
                Iterator it4 = transition4.mOnClicks.iterator();
                while (it4.hasNext()) {
                    ((Transition.TransitionOnClick) it4.next()).a(motionLayout, currentState, transition4);
                }
            }
        }
    }

    public boolean g(int viewTransitionId, MotionController motionController) {
        return this.mViewTransitionController.d(viewTransitionId, motionController);
    }

    public Transition i(int currentState, float dx, float dy, MotionEvent lastTouchDown) {
        if (currentState == -1) {
            return this.mCurrentTransition;
        }
        List<Transition> listH = H(currentState);
        RectF rectF = new RectF();
        float f = 0.0f;
        Transition transition = null;
        for (Transition transition2 : listH) {
            if (!transition2.mDisable && transition2.mTouchResponse != null) {
                transition2.mTouchResponse.x(this.mRtl);
                RectF rectFP = transition2.mTouchResponse.p(this.mMotionLayout, rectF);
                if (rectFP == null || lastTouchDown == null || rectFP.contains(lastTouchDown.getX(), lastTouchDown.getY())) {
                    RectF rectFF = transition2.mTouchResponse.f(this.mMotionLayout, rectF);
                    if (rectFF == null || lastTouchDown == null || rectFF.contains(lastTouchDown.getX(), lastTouchDown.getY())) {
                        float fA = transition2.mTouchResponse.a(dx, dy);
                        if (transition2.mTouchResponse.mIsRotateMode && lastTouchDown != null) {
                            float x6 = lastTouchDown.getX() - transition2.mTouchResponse.mRotateCenterX;
                            float y6 = lastTouchDown.getY() - transition2.mTouchResponse.mRotateCenterY;
                            fA = ((float) (Math.atan2(dy + y6, dx + x6) - Math.atan2(x6, y6))) * 10.0f;
                        }
                        float f6 = fA * (transition2.mConstraintSetEnd == currentState ? -1.0f : 1.1f);
                        if (f6 > f) {
                            transition = transition2;
                            f = f6;
                        }
                    }
                }
            }
        }
        return transition;
    }

    public int j() {
        Transition transition = this.mCurrentTransition;
        if (transition != null) {
            return transition.mPathMotionArc;
        }
        return -1;
    }

    int k() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0;
        }
        return this.mCurrentTransition.mTouchResponse.d();
    }

    ConstraintSet m(int id, int width, int height) {
        int iC;
        if (this.DEBUG_DESKTOP) {
            PrintStream printStream = System.out;
            printStream.println("id " + id);
            printStream.println("size " + this.mConstraintSetMap.size());
        }
        StateSet stateSet = this.mStateSet;
        if (stateSet != null && (iC = stateSet.c(id, width, height)) != -1) {
            id = iC;
        }
        if (this.mConstraintSetMap.get(id) != null) {
            return this.mConstraintSetMap.get(id);
        }
        Log.e(TypedValues.MotionScene.NAME, "Warning could not find ConstraintSet id/" + Debug.c(this.mMotionLayout.getContext(), id) + " In MotionScene");
        SparseArray<ConstraintSet> sparseArray = this.mConstraintSetMap;
        return sparseArray.get(sparseArray.keyAt(0));
    }

    public int[] n() {
        int size = this.mConstraintSetMap.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = this.mConstraintSetMap.keyAt(i10);
        }
        return iArr;
    }

    public int p() {
        Transition transition = this.mCurrentTransition;
        return transition != null ? transition.mDuration : this.mDefaultDuration;
    }

    int q() {
        Transition transition = this.mCurrentTransition;
        if (transition == null) {
            return -1;
        }
        return transition.mConstraintSetEnd;
    }

    public Interpolator s() {
        int i10 = this.mCurrentTransition.mDefaultInterpolator;
        if (i10 == -2) {
            return AnimationUtils.loadInterpolator(this.mMotionLayout.getContext(), this.mCurrentTransition.mDefaultInterpolatorID);
        }
        if (i10 == -1) {
            final Easing easingC = Easing.c(this.mCurrentTransition.mDefaultInterpolatorString);
            return new Interpolator(this) { // from class: androidx.constraintlayout.motion.widget.MotionScene.1
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

    public void t(MotionController motionController) {
        Transition transition = this.mCurrentTransition;
        if (transition != null) {
            Iterator it = transition.mKeyFramesList.iterator();
            while (it.hasNext()) {
                ((KeyFrames) it.next()).b(motionController);
            }
        } else {
            Transition transition2 = this.mDefaultTransition;
            if (transition2 != null) {
                Iterator it2 = transition2.mKeyFramesList.iterator();
                while (it2.hasNext()) {
                    ((KeyFrames) it2.next()).b(motionController);
                }
            }
        }
    }

    float u() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.g();
    }

    float v() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.h();
    }

    boolean w() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return false;
        }
        return this.mCurrentTransition.mTouchResponse.i();
    }

    float x(float dx, float dy) {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0.0f;
        }
        return this.mCurrentTransition.mTouchResponse.j(dx, dy);
    }

    int z() {
        Transition transition = this.mCurrentTransition;
        if (transition == null || transition.mTouchResponse == null) {
            return 0;
        }
        return this.mCurrentTransition.mTouchResponse.k();
    }

    private void K(Context context, int resourceId) {
        XmlResourceParser xml = context.getResources().getXml(resourceId);
        try {
            int eventType = xml.getEventType();
            Transition transition = null;
            while (true) {
                if (eventType != 1) {
                    if (eventType != 0) {
                        if (eventType == 2) {
                            String name = xml.getName();
                            if (this.DEBUG_DESKTOP) {
                                System.out.println("parsing = " + name);
                            }
                            switch (name) {
                                case "MotionScene":
                                    O(context, xml);
                                    break;
                                case "Transition":
                                    ArrayList<Transition> arrayList = this.mTransitionList;
                                    transition = new Transition(this, context, xml);
                                    arrayList.add(transition);
                                    if (this.mCurrentTransition == null && !transition.mIsAbstract) {
                                        this.mCurrentTransition = transition;
                                        if (transition.mTouchResponse != null) {
                                            this.mCurrentTransition.mTouchResponse.x(this.mRtl);
                                        }
                                    }
                                    if (!transition.mIsAbstract) {
                                        break;
                                    } else {
                                        if (transition.mConstraintSetEnd == -1) {
                                            this.mDefaultTransition = transition;
                                        } else {
                                            this.mAbstractTransitionList.add(transition);
                                        }
                                        this.mTransitionList.remove(transition);
                                        break;
                                    }
                                    break;
                                case "OnSwipe":
                                    if (transition == null) {
                                        Log.v(TypedValues.MotionScene.NAME, " OnSwipe (" + context.getResources().getResourceEntryName(resourceId) + ".xml:" + xml.getLineNumber() + ")");
                                    }
                                    if (transition == null) {
                                        break;
                                    } else {
                                        transition.mTouchResponse = new TouchResponse(context, this.mMotionLayout, xml);
                                        break;
                                    }
                                    break;
                                case "OnClick":
                                    if (transition == null) {
                                        break;
                                    } else {
                                        transition.u(context, xml);
                                        break;
                                    }
                                    break;
                                case "StateSet":
                                    this.mStateSet = new StateSet(context, xml);
                                    break;
                                case "ConstraintSet":
                                    L(context, xml);
                                    break;
                                case "include":
                                case "Include":
                                    N(context, xml);
                                    break;
                                case "KeyFrameSet":
                                    KeyFrames keyFrames = new KeyFrames(context, xml);
                                    if (transition == null) {
                                        break;
                                    } else {
                                        transition.mKeyFramesList.add(keyFrames);
                                        break;
                                    }
                                    break;
                                case "ViewTransition":
                                    this.mViewTransitionController.a(new ViewTransition(context, xml));
                                    break;
                            }
                        }
                    } else {
                        xml.getName();
                    }
                    eventType = xml.next();
                } else {
                    return;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int M(Context context, int resourceId) {
        XmlResourceParser xml = context.getResources().getXml(resourceId);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                String name = xml.getName();
                if (2 == eventType && CONSTRAINTSET_TAG.equals(name)) {
                    return L(context, xml);
                }
            }
            return -1;
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    private void N(Context context, XmlPullParser mainParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(mainParser), R.styleable.include);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R.styleable.include_constraintSet) {
                M(context, typedArrayObtainStyledAttributes.getResourceId(index, -1));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void O(Context context, XmlPullParser parser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(parser), R.styleable.MotionScene);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R.styleable.MotionScene_defaultDuration) {
                int i11 = typedArrayObtainStyledAttributes.getInt(index, this.mDefaultDuration);
                this.mDefaultDuration = i11;
                if (i11 < 8) {
                    this.mDefaultDuration = 8;
                }
            } else if (index == R.styleable.MotionScene_layoutDuringTransition) {
                this.mLayoutDuringTransition = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public List<Transition> H(int stateId) {
        int iY = y(stateId);
        ArrayList arrayList = new ArrayList();
        for (Transition transition : this.mTransitionList) {
            if (transition.mConstraintSetStart == iY || transition.mConstraintSetEnd == iY) {
                arrayList.add(transition);
            }
        }
        return arrayList;
    }

    boolean h(MotionLayout motionLayout, int currentState) {
        Transition transition;
        if (J() || this.mDisableAutoTransition) {
            return false;
        }
        for (Transition transition2 : this.mTransitionList) {
            if (transition2.mAutoTransition != 0 && ((transition = this.mCurrentTransition) != transition2 || !transition.D(2))) {
                if (currentState == transition2.mConstraintSetStart && (transition2.mAutoTransition == 4 || transition2.mAutoTransition == 2)) {
                    MotionLayout.TransitionState transitionState = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState);
                    motionLayout.setTransition(transition2);
                    if (transition2.mAutoTransition == 4) {
                        motionLayout.d0();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(1.0f);
                        motionLayout.H(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState);
                        motionLayout.V();
                    }
                    return true;
                }
                if (currentState == transition2.mConstraintSetEnd && (transition2.mAutoTransition == 3 || transition2.mAutoTransition == 1)) {
                    MotionLayout.TransitionState transitionState2 = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState2);
                    motionLayout.setTransition(transition2);
                    if (transition2.mAutoTransition == 3) {
                        motionLayout.f0();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(0.0f);
                        motionLayout.H(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState2);
                        motionLayout.V();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    MotionScene(Context context, MotionLayout layout, int resourceID) {
        this.mMotionLayout = layout;
        this.mViewTransitionController = new ViewTransitionController(layout);
        K(context, resourceID);
        SparseArray<ConstraintSet> sparseArray = this.mConstraintSetMap;
        int i10 = R.id.motion_base;
        sparseArray.put(i10, new ConstraintSet());
        this.mConstraintSetIdMap.put("motion_base", Integer.valueOf(i10));
    }
}
