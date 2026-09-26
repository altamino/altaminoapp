package androidx.constraintlayout.motion.widget;

/* JADX INFO: loaded from: classes10.dex */
public class OnSwipe {
    public static final int COMPLETE_MODE_CONTINUOUS_VELOCITY = 0;
    public static final int COMPLETE_MODE_SPRING = 1;
    public static final int DRAG_ANTICLOCKWISE = 7;
    public static final int DRAG_CLOCKWISE = 6;
    public static final int DRAG_DOWN = 1;
    public static final int DRAG_END = 5;
    public static final int DRAG_LEFT = 2;
    public static final int DRAG_RIGHT = 3;
    public static final int DRAG_START = 4;
    public static final int DRAG_UP = 0;
    public static final int FLAG_DISABLE_POST_SCROLL = 1;
    public static final int FLAG_DISABLE_SCROLL = 2;
    public static final int ON_UP_AUTOCOMPLETE = 0;
    public static final int ON_UP_AUTOCOMPLETE_TO_END = 2;
    public static final int ON_UP_AUTOCOMPLETE_TO_START = 1;
    public static final int ON_UP_DECELERATE = 4;
    public static final int ON_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int ON_UP_NEVER_TO_END = 7;
    public static final int ON_UP_NEVER_TO_START = 6;
    public static final int ON_UP_STOP = 3;
    public static final int SIDE_BOTTOM = 3;
    public static final int SIDE_END = 6;
    public static final int SIDE_LEFT = 1;
    public static final int SIDE_MIDDLE = 4;
    public static final int SIDE_RIGHT = 2;
    public static final int SIDE_START = 5;
    public static final int SIDE_TOP = 0;
    public static final int SPRING_BOUNDARY_BOUNCEBOTH = 3;
    public static final int SPRING_BOUNDARY_BOUNCEEND = 2;
    public static final int SPRING_BOUNDARY_BOUNCESTART = 1;
    public static final int SPRING_BOUNDARY_OVERSHOOT = 0;
    private int mDragDirection = 0;
    private int mTouchAnchorSide = 0;
    private int mTouchAnchorId = -1;
    private int mTouchRegionId = -1;
    private int mLimitBoundsTo = -1;
    private int mOnTouchUp = 0;
    private int mRotationCenterId = -1;
    private float mMaxVelocity = 4.0f;
    private float mMaxAcceleration = 1.2f;
    private boolean mMoveWhenScrollAtTop = true;
    private float mDragScale = 1.0f;
    private int mFlags = 0;
    private float mDragThreshold = 10.0f;
    private float mSpringDamping = Float.NaN;
    private float mSpringMass = 1.0f;
    private float mSpringStiffness = Float.NaN;
    private float mSpringStopThreshold = Float.NaN;
    private int mSpringBoundary = 0;
    private int mAutoCompleteMode = 0;

    public int a() {
        return this.mAutoCompleteMode;
    }

    public int b() {
        return this.mDragDirection;
    }

    public float c() {
        return this.mDragScale;
    }

    public float d() {
        return this.mDragThreshold;
    }

    public int e() {
        return this.mLimitBoundsTo;
    }

    public float f() {
        return this.mMaxAcceleration;
    }

    public float g() {
        return this.mMaxVelocity;
    }

    public boolean h() {
        return this.mMoveWhenScrollAtTop;
    }

    public int i() {
        return this.mFlags;
    }

    public int j() {
        return this.mOnTouchUp;
    }

    public int k() {
        return this.mRotationCenterId;
    }

    public int l() {
        return this.mSpringBoundary;
    }

    public float m() {
        return this.mSpringDamping;
    }

    public float n() {
        return this.mSpringMass;
    }

    public float o() {
        return this.mSpringStiffness;
    }

    public float p() {
        return this.mSpringStopThreshold;
    }

    public int q() {
        return this.mTouchAnchorId;
    }

    public int r() {
        return this.mTouchAnchorSide;
    }

    public int s() {
        return this.mTouchRegionId;
    }
}
