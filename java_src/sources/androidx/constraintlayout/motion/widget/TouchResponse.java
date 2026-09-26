package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.R;
import androidx.core.widget.NestedScrollView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes10.dex */
class TouchResponse {
    public static final int COMPLETE_MODE_CONTINUOUS_VELOCITY = 0;
    public static final int COMPLETE_MODE_SPRING = 1;
    private static final boolean DEBUG = false;
    private static final float EPSILON = 1.0E-7f;
    static final int FLAG_DISABLE_POST_SCROLL = 1;
    static final int FLAG_DISABLE_SCROLL = 2;
    static final int FLAG_SUPPORT_SCROLL_UP = 4;
    private static final int SEC_TO_MILLISECONDS = 1000;
    private static final int SIDE_BOTTOM = 3;
    private static final int SIDE_END = 6;
    private static final int SIDE_LEFT = 1;
    private static final int SIDE_MIDDLE = 4;
    private static final int SIDE_RIGHT = 2;
    private static final int SIDE_START = 5;
    private static final int SIDE_TOP = 0;
    private static final String TAG = "TouchResponse";
    private static final int TOUCH_DOWN = 1;
    private static final int TOUCH_END = 5;
    private static final int TOUCH_LEFT = 2;
    private static final int TOUCH_RIGHT = 3;
    private static final int TOUCH_START = 4;
    private static final int TOUCH_UP = 0;
    private float[] mAnchorDpDt;
    private int mAutoCompleteMode;
    private float mDragScale;
    private boolean mDragStarted;
    private float mDragThreshold;
    private int mFlags;
    boolean mIsRotateMode;
    private float mLastTouchX;
    private float mLastTouchY;
    private int mLimitBoundsTo;
    private float mMaxAcceleration;
    private float mMaxVelocity;
    private final MotionLayout mMotionLayout;
    private boolean mMoveWhenScrollAtTop;
    private int mOnTouchUp;
    float mRotateCenterX;
    float mRotateCenterY;
    private int mRotationCenterId;
    private int mSpringBoundary;
    private float mSpringDamping;
    private float mSpringMass;
    private float mSpringStiffness;
    private float mSpringStopThreshold;
    private int[] mTempLoc;
    private int mTouchAnchorId;
    private int mTouchAnchorSide;
    private float mTouchAnchorX;
    private float mTouchAnchorY;
    private float mTouchDirectionX;
    private float mTouchDirectionY;
    private int mTouchRegionId;
    private int mTouchSide;
    private static final float[][] TOUCH_SIDES = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};
    private static final float[][] TOUCH_DIRECTION = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};

    TouchResponse(Context context, MotionLayout layout, XmlPullParser parser) {
        this.mTouchAnchorSide = 0;
        this.mTouchSide = 0;
        this.mOnTouchUp = 0;
        this.mTouchAnchorId = -1;
        this.mTouchRegionId = -1;
        this.mLimitBoundsTo = -1;
        this.mTouchAnchorY = 0.5f;
        this.mTouchAnchorX = 0.5f;
        this.mRotateCenterX = 0.5f;
        this.mRotateCenterY = 0.5f;
        this.mRotationCenterId = -1;
        this.mIsRotateMode = false;
        this.mTouchDirectionX = 0.0f;
        this.mTouchDirectionY = 1.0f;
        this.mDragStarted = false;
        this.mAnchorDpDt = new float[2];
        this.mTempLoc = new int[2];
        this.mMaxVelocity = 4.0f;
        this.mMaxAcceleration = 1.2f;
        this.mMoveWhenScrollAtTop = true;
        this.mDragScale = 1.0f;
        this.mFlags = 0;
        this.mDragThreshold = 10.0f;
        this.mSpringDamping = 10.0f;
        this.mSpringMass = 1.0f;
        this.mSpringStiffness = Float.NaN;
        this.mSpringStopThreshold = Float.NaN;
        this.mSpringBoundary = 0;
        this.mAutoCompleteMode = 0;
        this.mMotionLayout = layout;
        c(context, Xml.asAttributeSet(parser));
    }

    float a(float dx, float dy) {
        return (dx * this.mTouchDirectionX) + (dy * this.mTouchDirectionY);
    }

    public int d() {
        return this.mAutoCompleteMode;
    }

    public int e() {
        return this.mFlags;
    }

    float g() {
        return this.mMaxAcceleration;
    }

    public float h() {
        return this.mMaxVelocity;
    }

    boolean i() {
        return this.mMoveWhenScrollAtTop;
    }

    public int k() {
        return this.mSpringBoundary;
    }

    public float l() {
        return this.mSpringDamping;
    }

    public float m() {
        return this.mSpringMass;
    }

    public float n() {
        return this.mSpringStiffness;
    }

    public float o() {
        return this.mSpringStopThreshold;
    }

    int q() {
        return this.mTouchRegionId;
    }

    boolean r() {
        return this.mDragStarted;
    }

    void v(float dx, float dy) {
        this.mDragStarted = false;
        float progress = this.mMotionLayout.getProgress();
        this.mMotionLayout.M(this.mTouchAnchorId, progress, this.mTouchAnchorX, this.mTouchAnchorY, this.mAnchorDpDt);
        float f = this.mTouchDirectionX;
        float[] fArr = this.mAnchorDpDt;
        float f6 = f != 0.0f ? (dx * f) / fArr[0] : (dy * this.mTouchDirectionY) / fArr[1];
        if (!Float.isNaN(f6)) {
            progress += f6 / 3.0f;
        }
        if (progress != 0.0f) {
            boolean z6 = progress != 1.0f;
            int i10 = this.mOnTouchUp;
            if ((i10 != 3) && z6) {
                this.mMotionLayout.c0(i10, ((double) progress) >= 0.5d ? 1.0f : 0.0f, f6);
            }
        }
    }

    void w(float lastTouchX, float lastTouchY) {
        this.mLastTouchX = lastTouchX;
        this.mLastTouchY = lastTouchY;
    }

    public void x(boolean rtl) {
        if (rtl) {
            float[][] fArr = TOUCH_DIRECTION;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = TOUCH_SIDES;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = TOUCH_DIRECTION;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = TOUCH_SIDES;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[] fArr5 = TOUCH_SIDES[this.mTouchAnchorSide];
        this.mTouchAnchorX = fArr5[0];
        this.mTouchAnchorY = fArr5[1];
        int i10 = this.mTouchSide;
        float[][] fArr6 = TOUCH_DIRECTION;
        if (i10 >= fArr6.length) {
            return;
        }
        float[] fArr7 = fArr6[i10];
        this.mTouchDirectionX = fArr7[0];
        this.mTouchDirectionY = fArr7[1];
    }

    public void y(int touchUpMode) {
        this.mOnTouchUp = touchUpMode;
    }

    void z(float lastTouchX, float lastTouchY) {
        this.mLastTouchX = lastTouchX;
        this.mLastTouchY = lastTouchY;
        this.mDragStarted = false;
    }

    private void c(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.OnSwipe);
        b(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    void A() {
        View viewFindViewById;
        int i10 = this.mTouchAnchorId;
        if (i10 != -1) {
            viewFindViewById = this.mMotionLayout.findViewById(i10);
            if (viewFindViewById == null) {
                Log.e(TAG, "cannot find TouchAnchorId @id/" + Debug.c(this.mMotionLayout.getContext(), this.mTouchAnchorId));
            }
        } else {
            viewFindViewById = null;
        }
        if (viewFindViewById instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) viewFindViewById;
            nestedScrollView.setOnTouchListener(new View.OnTouchListener(this) { // from class: androidx.constraintlayout.motion.widget.TouchResponse.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return false;
                }
            });
            nestedScrollView.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener(this) { // from class: androidx.constraintlayout.motion.widget.TouchResponse.2
                @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
                public void a(NestedScrollView v5, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
                }
            });
        }
    }

    RectF f(ViewGroup layout, RectF rect) {
        View viewFindViewById;
        int i10 = this.mLimitBoundsTo;
        if (i10 == -1 || (viewFindViewById = layout.findViewById(i10)) == null) {
            return null;
        }
        rect.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rect;
    }

    float j(float dx, float dy) {
        this.mMotionLayout.M(this.mTouchAnchorId, this.mMotionLayout.getProgress(), this.mTouchAnchorX, this.mTouchAnchorY, this.mAnchorDpDt);
        float f = this.mTouchDirectionX;
        if (f != 0.0f) {
            float[] fArr = this.mAnchorDpDt;
            if (fArr[0] == 0.0f) {
                fArr[0] = 1.0E-7f;
            }
            return (dx * f) / fArr[0];
        }
        float[] fArr2 = this.mAnchorDpDt;
        if (fArr2[1] == 0.0f) {
            fArr2[1] = 1.0E-7f;
        }
        return (dy * this.mTouchDirectionY) / fArr2[1];
    }

    RectF p(ViewGroup layout, RectF rect) {
        View viewFindViewById;
        int i10 = this.mTouchRegionId;
        if (i10 == -1 || (viewFindViewById = layout.findViewById(i10)) == null) {
            return null;
        }
        rect.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rect;
    }

    void s(MotionEvent event, MotionLayout.MotionTracker velocityTracker, int currentState, MotionScene motionScene) {
        int i10;
        if (this.mIsRotateMode) {
            t(event, velocityTracker, currentState, motionScene);
            return;
        }
        velocityTracker.b(event);
        int action = event.getAction();
        if (action == 0) {
            this.mLastTouchX = event.getRawX();
            this.mLastTouchY = event.getRawY();
            this.mDragStarted = false;
            return;
        }
        if (action == 1) {
            this.mDragStarted = false;
            velocityTracker.d(1000);
            float fE = velocityTracker.e();
            float fC = velocityTracker.c();
            float progress = this.mMotionLayout.getProgress();
            int i11 = this.mTouchAnchorId;
            if (i11 != -1) {
                this.mMotionLayout.M(i11, progress, this.mTouchAnchorX, this.mTouchAnchorY, this.mAnchorDpDt);
            } else {
                float fMin = Math.min(this.mMotionLayout.getWidth(), this.mMotionLayout.getHeight());
                float[] fArr = this.mAnchorDpDt;
                fArr[1] = this.mTouchDirectionY * fMin;
                fArr[0] = fMin * this.mTouchDirectionX;
            }
            float f = this.mTouchDirectionX;
            float[] fArr2 = this.mAnchorDpDt;
            float fAbs = f != 0.0f ? fE / fArr2[0] : fC / fArr2[1];
            float f6 = !Float.isNaN(fAbs) ? (fAbs / 3.0f) + progress : progress;
            if (f6 == 0.0f || f6 == 1.0f || (i10 = this.mOnTouchUp) == 3) {
                if (0.0f >= f6 || 1.0f <= f6) {
                    this.mMotionLayout.setState(MotionLayout.TransitionState.FINISHED);
                    return;
                }
                return;
            }
            float f7 = ((double) f6) < 0.5d ? 0.0f : 1.0f;
            if (i10 == 6) {
                if (progress + fAbs < 0.0f) {
                    fAbs = Math.abs(fAbs);
                }
                f7 = 1.0f;
            }
            if (this.mOnTouchUp == 7) {
                if (progress + fAbs > 1.0f) {
                    fAbs = -Math.abs(fAbs);
                }
                f7 = 0.0f;
            }
            this.mMotionLayout.c0(this.mOnTouchUp, f7, fAbs);
            if (0.0f >= progress || 1.0f <= progress) {
                this.mMotionLayout.setState(MotionLayout.TransitionState.FINISHED);
                return;
            }
            return;
        }
        if (action != 2) {
            return;
        }
        float rawY = event.getRawY() - this.mLastTouchY;
        float rawX = event.getRawX() - this.mLastTouchX;
        if (Math.abs((this.mTouchDirectionX * rawX) + (this.mTouchDirectionY * rawY)) > this.mDragThreshold || this.mDragStarted) {
            float progress2 = this.mMotionLayout.getProgress();
            if (!this.mDragStarted) {
                this.mDragStarted = true;
                this.mMotionLayout.setProgress(progress2);
            }
            int i12 = this.mTouchAnchorId;
            if (i12 != -1) {
                this.mMotionLayout.M(i12, progress2, this.mTouchAnchorX, this.mTouchAnchorY, this.mAnchorDpDt);
            } else {
                float fMin2 = Math.min(this.mMotionLayout.getWidth(), this.mMotionLayout.getHeight());
                float[] fArr3 = this.mAnchorDpDt;
                fArr3[1] = this.mTouchDirectionY * fMin2;
                fArr3[0] = fMin2 * this.mTouchDirectionX;
            }
            float f10 = this.mTouchDirectionX;
            float[] fArr4 = this.mAnchorDpDt;
            if (Math.abs(((f10 * fArr4[0]) + (this.mTouchDirectionY * fArr4[1])) * this.mDragScale) < 0.01d) {
                float[] fArr5 = this.mAnchorDpDt;
                fArr5[0] = 0.01f;
                fArr5[1] = 0.01f;
            }
            float fMax = Math.max(Math.min(progress2 + (this.mTouchDirectionX != 0.0f ? rawX / this.mAnchorDpDt[0] : rawY / this.mAnchorDpDt[1]), 1.0f), 0.0f);
            if (this.mOnTouchUp == 6) {
                fMax = Math.max(fMax, 0.01f);
            }
            if (this.mOnTouchUp == 7) {
                fMax = Math.min(fMax, 0.99f);
            }
            float progress3 = this.mMotionLayout.getProgress();
            if (fMax != progress3) {
                if (progress3 == 0.0f || progress3 == 1.0f) {
                    this.mMotionLayout.G(progress3 == 0.0f);
                }
                this.mMotionLayout.setProgress(fMax);
                velocityTracker.d(1000);
                this.mMotionLayout.mLastVelocity = this.mTouchDirectionX != 0.0f ? velocityTracker.e() / this.mAnchorDpDt[0] : velocityTracker.c() / this.mAnchorDpDt[1];
            } else {
                this.mMotionLayout.mLastVelocity = 0.0f;
            }
            this.mLastTouchX = event.getRawX();
            this.mLastTouchY = event.getRawY();
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0270  */
    /* JADX WARN: Code duplicated, block: B:58:0x0294  */
    /* JADX WARN: Code duplicated, block: B:61:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:63:0x02be  */
    void t(MotionEvent event, MotionLayout.MotionTracker velocityTracker, int currentState, MotionScene motionScene) {
        float left;
        float f;
        int top;
        int bottom;
        int i10;
        float degrees;
        float f6;
        int i11;
        velocityTracker.b(event);
        int action = event.getAction();
        if (action == 0) {
            this.mLastTouchX = event.getRawX();
            this.mLastTouchY = event.getRawY();
            this.mDragStarted = false;
            return;
        }
        if (action != 1) {
            if (action != 2) {
                return;
            }
            event.getRawY();
            event.getRawX();
            float width = this.mMotionLayout.getWidth() / 2.0f;
            float height = this.mMotionLayout.getHeight() / 2.0f;
            int i12 = this.mRotationCenterId;
            if (i12 != -1) {
                View viewFindViewById = this.mMotionLayout.findViewById(i12);
                this.mMotionLayout.getLocationOnScreen(this.mTempLoc);
                float left2 = this.mTempLoc[0] + ((viewFindViewById.getLeft() + viewFindViewById.getRight()) / 2.0f);
                height = ((viewFindViewById.getTop() + viewFindViewById.getBottom()) / 2.0f) + this.mTempLoc[1];
                width = left2;
            } else {
                int i13 = this.mTouchAnchorId;
                if (i13 != -1) {
                    View viewFindViewById2 = this.mMotionLayout.findViewById(this.mMotionLayout.O(i13).h());
                    if (viewFindViewById2 == null) {
                        Log.e(TAG, "could not find view to animate to");
                    } else {
                        this.mMotionLayout.getLocationOnScreen(this.mTempLoc);
                        width = this.mTempLoc[0] + ((viewFindViewById2.getLeft() + viewFindViewById2.getRight()) / 2.0f);
                        height = this.mTempLoc[1] + ((viewFindViewById2.getTop() + viewFindViewById2.getBottom()) / 2.0f);
                    }
                }
            }
            float rawX = event.getRawX() - width;
            float rawY = event.getRawY() - height;
            double dAtan2 = Math.atan2(event.getRawY() - height, event.getRawX() - width);
            float fAtan2 = (float) (((dAtan2 - Math.atan2(this.mLastTouchY - height, this.mLastTouchX - width)) * 180.0d) / 3.141592653589793d);
            if (fAtan2 > 330.0f) {
                fAtan2 -= 360.0f;
            } else if (fAtan2 < -330.0f) {
                fAtan2 += 360.0f;
            }
            if (Math.abs(fAtan2) > 0.01d || this.mDragStarted) {
                float progress = this.mMotionLayout.getProgress();
                if (!this.mDragStarted) {
                    this.mDragStarted = true;
                    this.mMotionLayout.setProgress(progress);
                }
                int i14 = this.mTouchAnchorId;
                if (i14 != -1) {
                    this.mMotionLayout.M(i14, progress, this.mTouchAnchorX, this.mTouchAnchorY, this.mAnchorDpDt);
                    float[] fArr = this.mAnchorDpDt;
                    fArr[1] = (float) Math.toDegrees(fArr[1]);
                } else {
                    this.mAnchorDpDt[1] = 360.0f;
                }
                float fMax = Math.max(Math.min(progress + ((fAtan2 * this.mDragScale) / this.mAnchorDpDt[1]), 1.0f), 0.0f);
                float progress2 = this.mMotionLayout.getProgress();
                if (fMax != progress2) {
                    if (progress2 == 0.0f || progress2 == 1.0f) {
                        this.mMotionLayout.G(progress2 == 0.0f);
                    }
                    this.mMotionLayout.setProgress(fMax);
                    velocityTracker.d(1000);
                    float fE = velocityTracker.e();
                    double dC = velocityTracker.c();
                    double d = fE;
                    this.mMotionLayout.mLastVelocity = (float) Math.toDegrees((float) ((Math.hypot(dC, d) * Math.sin(Math.atan2(dC, d) - dAtan2)) / Math.hypot(rawX, rawY)));
                } else {
                    this.mMotionLayout.mLastVelocity = 0.0f;
                }
                this.mLastTouchX = event.getRawX();
                this.mLastTouchY = event.getRawY();
                return;
            }
            return;
        }
        this.mDragStarted = false;
        velocityTracker.d(16);
        float fE2 = velocityTracker.e();
        float fC = velocityTracker.c();
        float progress3 = this.mMotionLayout.getProgress();
        float width2 = this.mMotionLayout.getWidth() / 2.0f;
        float height2 = this.mMotionLayout.getHeight() / 2.0f;
        int i15 = this.mRotationCenterId;
        if (i15 == -1) {
            int i16 = this.mTouchAnchorId;
            if (i16 != -1) {
                View viewFindViewById3 = this.mMotionLayout.findViewById(this.mMotionLayout.O(i16).h());
                this.mMotionLayout.getLocationOnScreen(this.mTempLoc);
                left = this.mTempLoc[0] + ((viewFindViewById3.getLeft() + viewFindViewById3.getRight()) / 2.0f);
                f = this.mTempLoc[1];
                top = viewFindViewById3.getTop();
                bottom = viewFindViewById3.getBottom();
            }
            float rawX2 = event.getRawX() - width2;
            float rawY2 = event.getRawY() - height2;
            double degrees2 = Math.toDegrees(Math.atan2(rawY2, rawX2));
            i10 = this.mTouchAnchorId;
            if (i10 != -1) {
                this.mMotionLayout.M(i10, progress3, this.mTouchAnchorX, this.mTouchAnchorY, this.mAnchorDpDt);
                float[] fArr2 = this.mAnchorDpDt;
                fArr2[1] = (float) Math.toDegrees(fArr2[1]);
            } else {
                this.mAnchorDpDt[1] = 360.0f;
            }
            degrees = ((float) (Math.toDegrees(Math.atan2(fC + rawY2, fE2 + rawX2)) - degrees2)) * 62.5f;
            if (Float.isNaN(degrees)) {
                f6 = progress3;
            } else {
                f6 = (((degrees * 3.0f) * this.mDragScale) / this.mAnchorDpDt[1]) + progress3;
            }
            if (f6 != 0.0f || f6 == 1.0f || (i11 = this.mOnTouchUp) == 3) {
                if (0.0f < f6 || 1.0f <= f6) {
                    this.mMotionLayout.setState(MotionLayout.TransitionState.FINISHED);
                }
                return;
            }
            float fAbs = (degrees * this.mDragScale) / this.mAnchorDpDt[1];
            float f7 = ((double) f6) < 0.5d ? 0.0f : 1.0f;
            if (i11 == 6) {
                if (progress3 + fAbs < 0.0f) {
                    fAbs = Math.abs(fAbs);
                }
                f7 = 1.0f;
            }
            if (this.mOnTouchUp == 7) {
                if (progress3 + fAbs > 1.0f) {
                    fAbs = -Math.abs(fAbs);
                }
                f7 = 0.0f;
            }
            this.mMotionLayout.c0(this.mOnTouchUp, f7, fAbs * 3.0f);
            if (0.0f >= progress3 || 1.0f <= progress3) {
                this.mMotionLayout.setState(MotionLayout.TransitionState.FINISHED);
                return;
            }
            return;
        }
        View viewFindViewById4 = this.mMotionLayout.findViewById(i15);
        this.mMotionLayout.getLocationOnScreen(this.mTempLoc);
        left = this.mTempLoc[0] + ((viewFindViewById4.getLeft() + viewFindViewById4.getRight()) / 2.0f);
        f = this.mTempLoc[1];
        top = viewFindViewById4.getTop();
        bottom = viewFindViewById4.getBottom();
        height2 = f + ((top + bottom) / 2.0f);
        width2 = left;
        float rawX3 = event.getRawX() - width2;
        float rawY3 = event.getRawY() - height2;
        double degrees3 = Math.toDegrees(Math.atan2(rawY3, rawX3));
        i10 = this.mTouchAnchorId;
        if (i10 != -1) {
            this.mMotionLayout.M(i10, progress3, this.mTouchAnchorX, this.mTouchAnchorY, this.mAnchorDpDt);
            float[] fArr3 = this.mAnchorDpDt;
            fArr3[1] = (float) Math.toDegrees(fArr3[1]);
        } else {
            this.mAnchorDpDt[1] = 360.0f;
        }
        degrees = ((float) (Math.toDegrees(Math.atan2(fC + rawY3, fE2 + rawX3)) - degrees3)) * 62.5f;
        if (Float.isNaN(degrees)) {
            f6 = (((degrees * 3.0f) * this.mDragScale) / this.mAnchorDpDt[1]) + progress3;
        } else {
            f6 = progress3;
        }
        if (f6 != 0.0f) {
        }
        if (0.0f < f6) {
        }
        this.mMotionLayout.setState(MotionLayout.TransitionState.FINISHED);
    }

    public String toString() {
        if (Float.isNaN(this.mTouchDirectionX)) {
            return Key.ROTATION;
        }
        return this.mTouchDirectionX + " , " + this.mTouchDirectionY;
    }

    void u(float dx, float dy) {
        float progress = this.mMotionLayout.getProgress();
        if (!this.mDragStarted) {
            this.mDragStarted = true;
            this.mMotionLayout.setProgress(progress);
        }
        this.mMotionLayout.M(this.mTouchAnchorId, progress, this.mTouchAnchorX, this.mTouchAnchorY, this.mAnchorDpDt);
        float f = this.mTouchDirectionX;
        float[] fArr = this.mAnchorDpDt;
        if (Math.abs((f * fArr[0]) + (this.mTouchDirectionY * fArr[1])) < 0.01d) {
            float[] fArr2 = this.mAnchorDpDt;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f6 = this.mTouchDirectionX;
        float fMax = Math.max(Math.min(progress + (f6 != 0.0f ? (dx * f6) / this.mAnchorDpDt[0] : (dy * this.mTouchDirectionY) / this.mAnchorDpDt[1]), 1.0f), 0.0f);
        if (fMax != this.mMotionLayout.getProgress()) {
            this.mMotionLayout.setProgress(fMax);
        }
    }

    public TouchResponse(MotionLayout layout, OnSwipe onSwipe) {
        this.mTouchAnchorSide = 0;
        this.mTouchSide = 0;
        this.mOnTouchUp = 0;
        this.mTouchAnchorId = -1;
        this.mTouchRegionId = -1;
        this.mLimitBoundsTo = -1;
        this.mTouchAnchorY = 0.5f;
        this.mTouchAnchorX = 0.5f;
        this.mRotateCenterX = 0.5f;
        this.mRotateCenterY = 0.5f;
        this.mRotationCenterId = -1;
        this.mIsRotateMode = false;
        this.mTouchDirectionX = 0.0f;
        this.mTouchDirectionY = 1.0f;
        this.mDragStarted = false;
        this.mAnchorDpDt = new float[2];
        this.mTempLoc = new int[2];
        this.mMaxVelocity = 4.0f;
        this.mMaxAcceleration = 1.2f;
        this.mMoveWhenScrollAtTop = true;
        this.mDragScale = 1.0f;
        this.mFlags = 0;
        this.mDragThreshold = 10.0f;
        this.mSpringDamping = 10.0f;
        this.mSpringMass = 1.0f;
        this.mSpringStiffness = Float.NaN;
        this.mSpringStopThreshold = Float.NaN;
        this.mSpringBoundary = 0;
        this.mAutoCompleteMode = 0;
        this.mMotionLayout = layout;
        this.mTouchAnchorId = onSwipe.q();
        int iR = onSwipe.r();
        this.mTouchAnchorSide = iR;
        if (iR != -1) {
            float[] fArr = TOUCH_SIDES[iR];
            this.mTouchAnchorX = fArr[0];
            this.mTouchAnchorY = fArr[1];
        }
        int iB = onSwipe.b();
        this.mTouchSide = iB;
        float[][] fArr2 = TOUCH_DIRECTION;
        if (iB < fArr2.length) {
            float[] fArr3 = fArr2[iB];
            this.mTouchDirectionX = fArr3[0];
            this.mTouchDirectionY = fArr3[1];
        } else {
            this.mTouchDirectionY = Float.NaN;
            this.mTouchDirectionX = Float.NaN;
            this.mIsRotateMode = true;
        }
        this.mMaxVelocity = onSwipe.g();
        this.mMaxAcceleration = onSwipe.f();
        this.mMoveWhenScrollAtTop = onSwipe.h();
        this.mDragScale = onSwipe.c();
        this.mDragThreshold = onSwipe.d();
        this.mTouchRegionId = onSwipe.s();
        this.mOnTouchUp = onSwipe.j();
        this.mFlags = onSwipe.i();
        this.mLimitBoundsTo = onSwipe.e();
        this.mRotationCenterId = onSwipe.k();
        this.mSpringBoundary = onSwipe.l();
        this.mSpringDamping = onSwipe.m();
        this.mSpringMass = onSwipe.n();
        this.mSpringStiffness = onSwipe.o();
        this.mSpringStopThreshold = onSwipe.p();
        this.mAutoCompleteMode = onSwipe.a();
    }

    private void b(TypedArray a7) {
        int indexCount = a7.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = a7.getIndex(i10);
            if (index == R.styleable.OnSwipe_touchAnchorId) {
                this.mTouchAnchorId = a7.getResourceId(index, this.mTouchAnchorId);
            } else if (index == R.styleable.OnSwipe_touchAnchorSide) {
                int i11 = a7.getInt(index, this.mTouchAnchorSide);
                this.mTouchAnchorSide = i11;
                float[] fArr = TOUCH_SIDES[i11];
                this.mTouchAnchorX = fArr[0];
                this.mTouchAnchorY = fArr[1];
            } else if (index == R.styleable.OnSwipe_dragDirection) {
                int i12 = a7.getInt(index, this.mTouchSide);
                this.mTouchSide = i12;
                float[][] fArr2 = TOUCH_DIRECTION;
                if (i12 < fArr2.length) {
                    float[] fArr3 = fArr2[i12];
                    this.mTouchDirectionX = fArr3[0];
                    this.mTouchDirectionY = fArr3[1];
                } else {
                    this.mTouchDirectionY = Float.NaN;
                    this.mTouchDirectionX = Float.NaN;
                    this.mIsRotateMode = true;
                }
            } else if (index == R.styleable.OnSwipe_maxVelocity) {
                this.mMaxVelocity = a7.getFloat(index, this.mMaxVelocity);
            } else if (index == R.styleable.OnSwipe_maxAcceleration) {
                this.mMaxAcceleration = a7.getFloat(index, this.mMaxAcceleration);
            } else if (index == R.styleable.OnSwipe_moveWhenScrollAtTop) {
                this.mMoveWhenScrollAtTop = a7.getBoolean(index, this.mMoveWhenScrollAtTop);
            } else if (index == R.styleable.OnSwipe_dragScale) {
                this.mDragScale = a7.getFloat(index, this.mDragScale);
            } else if (index == R.styleable.OnSwipe_dragThreshold) {
                this.mDragThreshold = a7.getFloat(index, this.mDragThreshold);
            } else if (index == R.styleable.OnSwipe_touchRegionId) {
                this.mTouchRegionId = a7.getResourceId(index, this.mTouchRegionId);
            } else if (index == R.styleable.OnSwipe_onTouchUp) {
                this.mOnTouchUp = a7.getInt(index, this.mOnTouchUp);
            } else if (index == R.styleable.OnSwipe_nestedScrollFlags) {
                this.mFlags = a7.getInteger(index, 0);
            } else if (index == R.styleable.OnSwipe_limitBoundsTo) {
                this.mLimitBoundsTo = a7.getResourceId(index, 0);
            } else if (index == R.styleable.OnSwipe_rotationCenterId) {
                this.mRotationCenterId = a7.getResourceId(index, this.mRotationCenterId);
            } else if (index == R.styleable.OnSwipe_springDamping) {
                this.mSpringDamping = a7.getFloat(index, this.mSpringDamping);
            } else if (index == R.styleable.OnSwipe_springMass) {
                this.mSpringMass = a7.getFloat(index, this.mSpringMass);
            } else if (index == R.styleable.OnSwipe_springStiffness) {
                this.mSpringStiffness = a7.getFloat(index, this.mSpringStiffness);
            } else if (index == R.styleable.OnSwipe_springStopThreshold) {
                this.mSpringStopThreshold = a7.getFloat(index, this.mSpringStopThreshold);
            } else if (index == R.styleable.OnSwipe_springBoundary) {
                this.mSpringBoundary = a7.getInt(index, this.mSpringBoundary);
            } else if (index == R.styleable.OnSwipe_autoCompleteMode) {
                this.mAutoCompleteMode = a7.getInt(index, this.mAutoCompleteMode);
            }
        }
    }
}
