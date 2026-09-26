package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes10.dex */
public class KeyTrigger extends Key {
    public static final String CROSS = "CROSS";
    public static final int KEY_TYPE = 5;
    static final String NAME = "KeyTrigger";
    public static final String NEGATIVE_CROSS = "negativeCross";
    public static final String POSITIVE_CROSS = "positiveCross";
    public static final String POST_LAYOUT = "postLayout";
    private static final String TAG = "KeyTrigger";
    public static final String TRIGGER_COLLISION_ID = "triggerCollisionId";
    public static final String TRIGGER_COLLISION_VIEW = "triggerCollisionView";
    public static final String TRIGGER_ID = "triggerID";
    public static final String TRIGGER_RECEIVER = "triggerReceiver";
    public static final String TRIGGER_SLACK = "triggerSlack";
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";
    RectF mCollisionRect;
    private boolean mFireCrossReset;
    private float mFireLastPos;
    private boolean mFireNegativeReset;
    private boolean mFirePositiveReset;
    private float mFireThreshold;
    HashMap<String, Method> mMethodHashMap;
    private String mNegativeCross;
    private String mPositiveCross;
    private boolean mPostLayout;
    RectF mTargetRect;
    private int mTriggerCollisionId;
    private View mTriggerCollisionView;
    private int mTriggerID;
    private int mTriggerReceiver;
    float mTriggerSlack;
    int mViewTransitionOnCross;
    int mViewTransitionOnNegativeCross;
    int mViewTransitionOnPositiveCross;
    private int mCurveFit = -1;
    private String mCross = null;

    private static class Loader {
        private static final int COLLISION = 9;
        private static final int CROSS = 4;
        private static final int FRAME_POS = 8;
        private static final int NEGATIVE_CROSS = 1;
        private static final int POSITIVE_CROSS = 2;
        private static final int POST_LAYOUT = 10;
        private static final int TARGET_ID = 7;
        private static final int TRIGGER_ID = 6;
        private static final int TRIGGER_RECEIVER = 11;
        private static final int TRIGGER_SLACK = 5;
        private static final int VT_CROSS = 12;
        private static final int VT_NEGATIVE_CROSS = 13;
        private static final int VT_POSITIVE_CROSS = 14;
        private static SparseIntArray mAttrMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mAttrMap = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            mAttrMap.append(R.styleable.KeyTrigger_onCross, 4);
            mAttrMap.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            mAttrMap.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            mAttrMap.append(R.styleable.KeyTrigger_motionTarget, 7);
            mAttrMap.append(R.styleable.KeyTrigger_triggerId, 6);
            mAttrMap.append(R.styleable.KeyTrigger_triggerSlack, 5);
            mAttrMap.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            mAttrMap.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            mAttrMap.append(R.styleable.KeyTrigger_triggerReceiver, 11);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            mAttrMap.append(R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        private Loader() {
        }

        public static void a(KeyTrigger c7, TypedArray a7, Context context) {
            int indexCount = a7.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = a7.getIndex(i10);
                switch (mAttrMap.get(index)) {
                    case 1:
                        c7.mNegativeCross = a7.getString(index);
                        break;
                    case 2:
                        c7.mPositiveCross = a7.getString(index);
                        break;
                    case 3:
                    default:
                        Log.e(TypedValues.TriggerType.NAME, "unused attribute 0x" + Integer.toHexString(index) + "   " + mAttrMap.get(index));
                        break;
                    case 4:
                        c7.mCross = a7.getString(index);
                        break;
                    case 5:
                        c7.mTriggerSlack = a7.getFloat(index, c7.mTriggerSlack);
                        break;
                    case 6:
                        c7.mTriggerID = a7.getResourceId(index, c7.mTriggerID);
                        break;
                    case 7:
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
                    case 8:
                        int integer = a7.getInteger(index, c7.mFramePosition);
                        c7.mFramePosition = integer;
                        c7.mFireThreshold = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        c7.mTriggerCollisionId = a7.getResourceId(index, c7.mTriggerCollisionId);
                        break;
                    case 10:
                        c7.mPostLayout = a7.getBoolean(index, c7.mPostLayout);
                        break;
                    case 11:
                        c7.mTriggerReceiver = a7.getResourceId(index, c7.mTriggerReceiver);
                        break;
                    case 12:
                        c7.mViewTransitionOnCross = a7.getResourceId(index, c7.mViewTransitionOnCross);
                        break;
                    case 13:
                        c7.mViewTransitionOnNegativeCross = a7.getResourceId(index, c7.mViewTransitionOnNegativeCross);
                        break;
                    case 14:
                        c7.mViewTransitionOnPositiveCross = a7.getResourceId(index, c7.mViewTransitionOnPositiveCross);
                        break;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void a(HashMap<String, ViewSpline> splines) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void d(HashSet<String> attributes) {
    }

    private void z(String str, View call) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            A(str, call);
            return;
        }
        if (this.mMethodHashMap.containsKey(str)) {
            method = this.mMethodHashMap.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = call.getClass().getMethod(str, new Class[0]);
                this.mMethodHashMap.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.mMethodHashMap.put(str, null);
                Log.e(TypedValues.TriggerType.NAME, "Could not find method \"" + str + "\"on class " + call.getClass().getSimpleName() + " " + Debug.d(call));
                return;
            }
        }
        try {
            method.invoke(call, new Object[0]);
        } catch (Exception unused2) {
            Log.e(TypedValues.TriggerType.NAME, "Exception in call \"" + this.mCross + "\"on class " + call.getClass().getSimpleName() + " " + Debug.d(call));
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* JADX INFO: renamed from: b */
    public Key clone() {
        return new KeyTrigger().c(this);
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void e(Context context, AttributeSet attrs) {
        Loader.a(this, context.obtainStyledAttributes(attrs, R.styleable.KeyTrigger), context);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008c  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:58:0x00dc  */
    public void y(float pos, View child) {
        boolean z6;
        boolean z10;
        boolean z11;
        float f;
        float f6;
        boolean z12;
        boolean z13;
        float f7;
        float f10;
        boolean z14;
        if (this.mTriggerCollisionId != Key.UNSET) {
            if (this.mTriggerCollisionView == null) {
                this.mTriggerCollisionView = ((ViewGroup) child.getParent()).findViewById(this.mTriggerCollisionId);
            }
            B(this.mCollisionRect, this.mTriggerCollisionView, this.mPostLayout);
            B(this.mTargetRect, child, this.mPostLayout);
            if (this.mCollisionRect.intersect(this.mTargetRect)) {
                if (this.mFireCrossReset) {
                    this.mFireCrossReset = false;
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (this.mFirePositiveReset) {
                    this.mFirePositiveReset = false;
                    z14 = true;
                } else {
                    z14 = false;
                }
                this.mFireNegativeReset = true;
                z13 = z14;
                z11 = false;
            } else {
                if (this.mFireCrossReset) {
                    z6 = false;
                } else {
                    this.mFireCrossReset = true;
                    z6 = true;
                }
                if (this.mFireNegativeReset) {
                    this.mFireNegativeReset = false;
                    z11 = true;
                } else {
                    z11 = false;
                }
                this.mFirePositiveReset = true;
                z13 = false;
            }
        } else {
            if (this.mFireCrossReset) {
                float f11 = this.mFireThreshold;
                if ((pos - f11) * (this.mFireLastPos - f11) < 0.0f) {
                    this.mFireCrossReset = false;
                    z6 = true;
                }
                if (this.mFireNegativeReset) {
                    f7 = this.mFireThreshold;
                    f10 = pos - f7;
                    if ((this.mFireLastPos - f7) * f10 >= 0.0f && f10 < 0.0f) {
                        this.mFireNegativeReset = false;
                        z10 = true;
                    }
                    if (this.mFirePositiveReset) {
                        f = this.mFireThreshold;
                        f6 = pos - f;
                        if ((this.mFireLastPos - f) * f6 < 0.0f || f6 <= 0.0f) {
                            z12 = false;
                        } else {
                            this.mFirePositiveReset = false;
                            z12 = true;
                        }
                        boolean z15 = z10;
                        z13 = z12;
                        z11 = z15;
                    } else {
                        if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                            this.mFirePositiveReset = true;
                        }
                        z11 = z10;
                        z13 = false;
                    }
                } else if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                    this.mFireNegativeReset = true;
                }
                z10 = false;
                if (this.mFirePositiveReset) {
                    f = this.mFireThreshold;
                    f6 = pos - f;
                    if ((this.mFireLastPos - f) * f6 < 0.0f) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    boolean z16 = z10;
                    z13 = z12;
                    z11 = z16;
                } else {
                    if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                        this.mFirePositiveReset = true;
                    }
                    z11 = z10;
                    z13 = false;
                }
            } else if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                this.mFireCrossReset = true;
            }
            z6 = false;
            if (this.mFireNegativeReset) {
                f7 = this.mFireThreshold;
                f10 = pos - f7;
                if ((this.mFireLastPos - f7) * f10 >= 0.0f) {
                }
                if (this.mFirePositiveReset) {
                    f = this.mFireThreshold;
                    f6 = pos - f;
                    if ((this.mFireLastPos - f) * f6 < 0.0f) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    boolean z17 = z10;
                    z13 = z12;
                    z11 = z17;
                } else {
                    if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                        this.mFirePositiveReset = true;
                    }
                    z11 = z10;
                    z13 = false;
                }
            } else if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                this.mFireNegativeReset = true;
            }
            z10 = false;
            if (this.mFirePositiveReset) {
                f = this.mFireThreshold;
                f6 = pos - f;
                if ((this.mFireLastPos - f) * f6 < 0.0f) {
                    z12 = false;
                } else {
                    z12 = false;
                }
                boolean z18 = z10;
                z13 = z12;
                z11 = z18;
            } else {
                if (Math.abs(pos - this.mFireThreshold) > this.mTriggerSlack) {
                    this.mFirePositiveReset = true;
                }
                z11 = z10;
                z13 = false;
            }
        }
        this.mFireLastPos = pos;
        if (z11 || z6 || z13) {
            ((MotionLayout) child.getParent()).L(this.mTriggerID, z13, pos);
        }
        View viewFindViewById = this.mTriggerReceiver == Key.UNSET ? child : ((MotionLayout) child.getParent()).findViewById(this.mTriggerReceiver);
        if (z11) {
            String str = this.mNegativeCross;
            if (str != null) {
                z(str, viewFindViewById);
            }
            if (this.mViewTransitionOnNegativeCross != Key.UNSET) {
                ((MotionLayout) child.getParent()).m0(this.mViewTransitionOnNegativeCross, viewFindViewById);
            }
        }
        if (z13) {
            String str2 = this.mPositiveCross;
            if (str2 != null) {
                z(str2, viewFindViewById);
            }
            if (this.mViewTransitionOnPositiveCross != Key.UNSET) {
                ((MotionLayout) child.getParent()).m0(this.mViewTransitionOnPositiveCross, viewFindViewById);
            }
        }
        if (z6) {
            String str3 = this.mCross;
            if (str3 != null) {
                z(str3, viewFindViewById);
            }
            if (this.mViewTransitionOnCross != Key.UNSET) {
                ((MotionLayout) child.getParent()).m0(this.mViewTransitionOnCross, viewFindViewById);
            }
        }
    }

    public KeyTrigger() {
        int i10 = Key.UNSET;
        this.mTriggerReceiver = i10;
        this.mNegativeCross = null;
        this.mPositiveCross = null;
        this.mTriggerID = i10;
        this.mTriggerCollisionId = i10;
        this.mTriggerCollisionView = null;
        this.mTriggerSlack = 0.1f;
        this.mFireCrossReset = true;
        this.mFireNegativeReset = true;
        this.mFirePositiveReset = true;
        this.mFireThreshold = Float.NaN;
        this.mPostLayout = false;
        this.mViewTransitionOnNegativeCross = i10;
        this.mViewTransitionOnPositiveCross = i10;
        this.mViewTransitionOnCross = i10;
        this.mCollisionRect = new RectF();
        this.mTargetRect = new RectF();
        this.mMethodHashMap = new HashMap<>();
        this.mType = 5;
        this.mCustomConstraints = new HashMap<>();
    }

    private void A(String str, View view) {
        boolean z6;
        if (str.length() == 1) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (!z6) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.mCustomConstraints.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z6 || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.mCustomConstraints.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.a(view);
                }
            }
        }
    }

    private void B(RectF rect, View child, boolean postLayout) {
        rect.top = child.getTop();
        rect.bottom = child.getBottom();
        rect.left = child.getLeft();
        rect.right = child.getRight();
        if (postLayout) {
            child.getMatrix().mapRect(rect);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key c(Key src) {
        super.c(src);
        KeyTrigger keyTrigger = (KeyTrigger) src;
        this.mCurveFit = keyTrigger.mCurveFit;
        this.mCross = keyTrigger.mCross;
        this.mTriggerReceiver = keyTrigger.mTriggerReceiver;
        this.mNegativeCross = keyTrigger.mNegativeCross;
        this.mPositiveCross = keyTrigger.mPositiveCross;
        this.mTriggerID = keyTrigger.mTriggerID;
        this.mTriggerCollisionId = keyTrigger.mTriggerCollisionId;
        this.mTriggerCollisionView = keyTrigger.mTriggerCollisionView;
        this.mTriggerSlack = keyTrigger.mTriggerSlack;
        this.mFireCrossReset = keyTrigger.mFireCrossReset;
        this.mFireNegativeReset = keyTrigger.mFireNegativeReset;
        this.mFirePositiveReset = keyTrigger.mFirePositiveReset;
        this.mFireThreshold = keyTrigger.mFireThreshold;
        this.mFireLastPos = keyTrigger.mFireLastPos;
        this.mPostLayout = keyTrigger.mPostLayout;
        this.mCollisionRect = keyTrigger.mCollisionRect;
        this.mTargetRect = keyTrigger.mTargetRect;
        this.mMethodHashMap = keyTrigger.mMethodHashMap;
        return this;
    }
}
