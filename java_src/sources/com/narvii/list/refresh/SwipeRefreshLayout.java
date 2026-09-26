package com.narvii.list.refresh;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import com.google.firebase.remoteconfig.a;
import com.narvii.widget.NVListView;
import com.narvii.widget.NVScrollView;

/* JADX INFO: loaded from: classes7.dex */
public class SwipeRefreshLayout extends ViewGroup implements NestedScrollingParent, NestedScrollingChild {
    private static final int ALPHA_ANIMATION_DURATION = 300;
    private static final int ANIMATE_TO_START_DURATION = 200;
    private static final int ANIMATE_TO_TRIGGER_DURATION = 200;
    private static final int CIRCLE_BG_LIGHT = -328966;
    private static final int CIRCLE_DIAMETER = 40;
    private static final int CIRCLE_DIAMETER_LARGE = 56;
    private static final float DECELERATE_INTERPOLATION_FACTOR = 2.0f;
    public static final int DEFAULT = 1;
    private static final int DEFAULT_CIRCLE_TARGET = 64;
    private static final float DRAG_RATE = 0.5f;
    private static final int INVALID_POINTER = -1;
    public static final int LARGE = 0;
    private static final int[] LAYOUT_ATTRS = {R.attr.enabled};
    private static final String LOG_TAG = "SwipeRefreshLayout";
    private static final int MAX_ALPHA = 255;
    private static final float MAX_PROGRESS_ANGLE = 0.8f;
    private static final int SCALE_DOWN_DURATION = 150;
    private static final int STARTING_PROGRESS_ALPHA = 76;
    private int mActivePointerId;
    private Animation mAlphaMaxAnimation;
    private Animation mAlphaStartAnimation;
    private final Animation mAnimateToCorrectPosition;
    private final Animation mAnimateToStartPosition;
    private int mCircleHeight;
    private CircleImageView mCircleView;
    private int mCircleViewIndex;
    private int mCircleWidth;
    private int mCurrentTargetOffsetTop;
    private final DecelerateInterpolator mDecelerateInterpolator;
    protected int mFrom;
    private float mInitialDownY;
    private float mInitialMotionY;
    public boolean mIsBeingDragged;
    private OnRefreshListener mListener;
    private int mMediumAnimationDuration;
    private boolean mNestedScrollInProgress;
    private final NestedScrollingChildHelper mNestedScrollingChildHelper;
    private final NestedScrollingParentHelper mNestedScrollingParentHelper;
    private boolean mNotify;
    private boolean mOriginalOffsetCalculated;
    protected int mOriginalOffsetTop;
    private final int[] mParentOffsetInWindow;
    private final int[] mParentScrollConsumed;
    private MaterialProgressDrawable mProgress;
    private Animation.AnimationListener mRefreshListener;
    private boolean mRefreshing;
    private boolean mReturningToStart;
    private boolean mReversed;
    private boolean mScale;
    private Animation mScaleAnimation;
    private Animation mScaleDownAnimation;
    private Animation mScaleDownToStartAnimation;
    private float mSpinnerFinalOffset;
    private float mStartingScale;
    private View mTarget;
    private float mTotalDragDistance;
    private float mTotalUnconsumed;
    private int mTouchSlop;
    private boolean mUsingCustomStart;
    private boolean shouldDispatchNestedScrollingEvents;

    public interface OnRefreshListener {
        void onRefresh();
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }

    private boolean isAlphaUsedForScale() {
        return false;
    }

    public void configSpinnerBeforeMove() {
        this.mIsBeingDragged = true;
        this.mProgress.setAlpha(76);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        int i12 = this.mCircleViewIndex;
        if (i12 < 0) {
            return i11;
        }
        if (i11 == i10 - 1) {
            return i12;
        }
        return i11 >= i12 ? i11 + 1 : i11;
    }

    public boolean isRefreshing() {
        return this.mRefreshing;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        if (i11 > 0) {
            float f = this.mTotalUnconsumed;
            if (f > 0.0f) {
                float f6 = i11;
                if (f6 > f) {
                    iArr[1] = i11 - ((int) f);
                    this.mTotalUnconsumed = 0.0f;
                } else {
                    this.mTotalUnconsumed = f - f6;
                    iArr[1] = i11;
                }
                moveSpinner(this.mTotalUnconsumed);
            }
        }
        if (this.mUsingCustomStart && i11 > 0 && this.mTotalUnconsumed == 0.0f && Math.abs(i11 - iArr[1]) > 0) {
            this.mCircleView.setVisibility(8);
        }
        int[] iArr2 = this.mParentScrollConsumed;
        if (dispatchNestedPreScroll(i10 - iArr[0], i11 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    public void setDistanceToTriggerSync(int i10) {
        this.mTotalDragDistance = i10;
    }

    public void setIsNestedScrollingChild(boolean z6) {
        this.shouldDispatchNestedScrollingEvents = z6;
    }

    public void setOnRefreshListener(OnRefreshListener onRefreshListener) {
        this.mListener = onRefreshListener;
    }

    public void setProgressViewEndTarget(boolean z6, int i10) {
        this.mSpinnerFinalOffset = i10;
        this.mScale = z6;
        this.mCircleView.invalidate();
    }

    public void setRefreshing(boolean z6) {
        if (!z6 || this.mRefreshing == z6) {
            setRefreshing(z6, false);
            return;
        }
        this.mRefreshing = z6;
        setTargetOffsetTopAndBottom(((int) (!this.mUsingCustomStart ? this.mSpinnerFinalOffset + this.mOriginalOffsetTop : this.mSpinnerFinalOffset)) - this.mCurrentTargetOffsetTop, true);
        this.mNotify = false;
        startScaleUpAnimation(this.mRefreshListener);
    }

    public void setTarget(NVListView nVListView) {
        nVListView.swipeRefreshLayout = this;
        this.mTarget = nVListView;
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRefreshing = false;
        this.mTotalDragDistance = -1.0f;
        this.mParentScrollConsumed = new int[2];
        this.mParentOffsetInWindow = new int[2];
        this.mOriginalOffsetCalculated = false;
        this.mActivePointerId = -1;
        this.mCircleViewIndex = -1;
        this.shouldDispatchNestedScrollingEvents = true;
        this.mRefreshListener = new Animation.AnimationListener() { // from class: com.narvii.list.refresh.SwipeRefreshLayout.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (!SwipeRefreshLayout.this.mRefreshing) {
                    SwipeRefreshLayout.this.reset();
                    return;
                }
                SwipeRefreshLayout.this.mProgress.setAlpha(255);
                SwipeRefreshLayout.this.mProgress.start();
                if (SwipeRefreshLayout.this.mNotify && SwipeRefreshLayout.this.mListener != null) {
                    SwipeRefreshLayout.this.mListener.onRefresh();
                }
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                swipeRefreshLayout.mCurrentTargetOffsetTop = swipeRefreshLayout.mCircleView.getTop();
            }
        };
        this.mAnimateToCorrectPosition = new Animation() { // from class: com.narvii.list.refresh.SwipeRefreshLayout.6
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                int iAbs = (int) (!SwipeRefreshLayout.this.mUsingCustomStart ? SwipeRefreshLayout.this.mSpinnerFinalOffset - Math.abs(SwipeRefreshLayout.this.mOriginalOffsetTop) : SwipeRefreshLayout.this.mSpinnerFinalOffset);
                SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
                int i10 = swipeRefreshLayout.mFrom;
                SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((i10 + ((int) ((iAbs - i10) * f))) - swipeRefreshLayout.mCircleView.getTop(), false);
                SwipeRefreshLayout.this.mProgress.setArrowScale(1.0f - f);
            }
        };
        this.mAnimateToStartPosition = new Animation() { // from class: com.narvii.list.refresh.SwipeRefreshLayout.7
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.moveToStart(f);
            }
        };
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mMediumAnimationDuration = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.mDecelerateInterpolator = new DecelerateInterpolator(2.0f);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, LAYOUT_ATTRS);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(0, true));
        typedArrayObtainStyledAttributes.recycle();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f = displayMetrics.density;
        this.mCircleWidth = (int) (f * 40.0f);
        this.mCircleHeight = (int) (f * 40.0f);
        createProgressView();
        setChildrenDrawingOrderEnabled(true);
        float f6 = displayMetrics.density * 64.0f;
        this.mSpinnerFinalOffset = f6;
        this.mTotalDragDistance = f6;
        this.mNestedScrollingParentHelper = new NestedScrollingParentHelper(this);
        this.mNestedScrollingChildHelper = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
    }

    private void animateOffsetToCorrectPosition(int i10, Animation.AnimationListener animationListener) {
        this.mFrom = i10;
        this.mAnimateToCorrectPosition.reset();
        this.mAnimateToCorrectPosition.setDuration(200L);
        this.mAnimateToCorrectPosition.setInterpolator(this.mDecelerateInterpolator);
        if (animationListener != null) {
            this.mCircleView.setAnimationListener(animationListener);
        }
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.mAnimateToCorrectPosition);
    }

    private void animateOffsetToStartPosition(int i10, Animation.AnimationListener animationListener) {
        if (this.mScale) {
            startScaleDownReturnToStartAnimation(i10, animationListener);
            return;
        }
        this.mFrom = i10;
        this.mAnimateToStartPosition.reset();
        this.mAnimateToStartPosition.setDuration(200L);
        this.mAnimateToStartPosition.setInterpolator(this.mDecelerateInterpolator);
        if (animationListener != null) {
            this.mCircleView.setAnimationListener(animationListener);
        }
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.mAnimateToStartPosition);
    }

    private void createProgressView() {
        this.mCircleView = new CircleImageView(getContext(), CIRCLE_BG_LIGHT, 20.0f);
        MaterialProgressDrawable materialProgressDrawable = new MaterialProgressDrawable(getContext(), this);
        this.mProgress = materialProgressDrawable;
        materialProgressDrawable.setBackgroundColor(CIRCLE_BG_LIGHT);
        this.mCircleView.setImageDrawable(this.mProgress);
        this.mCircleView.setVisibility(8);
        addView(this.mCircleView);
    }

    private void ensureTarget() {
        if (this.mTarget == null) {
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                if (!childAt.equals(this.mCircleView)) {
                    this.mTarget = childAt;
                    return;
                }
            }
        }
    }

    private boolean isAnimationRunning(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveToStart(float f) {
        int i10 = this.mFrom;
        setTargetOffsetTopAndBottom((i10 + ((int) ((this.mOriginalOffsetTop - i10) * f))) - this.mCircleView.getTop(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reset() {
        this.mCircleView.clearAnimation();
        this.mProgress.stop();
        this.mCircleView.setVisibility(8);
        setColorViewAlpha(255);
        if (this.mScale) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.mOriginalOffsetTop - this.mCurrentTargetOffsetTop, true);
        }
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
    }

    private void setColorViewAlpha(int i10) {
        this.mCircleView.getBackground().setAlpha(i10);
        this.mProgress.setAlpha(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTargetOffsetTopAndBottom(int i10, boolean z6) {
        this.mCircleView.bringToFront();
        this.mCircleView.offsetTopAndBottom(i10);
        this.mCurrentTargetOffsetTop = this.mCircleView.getTop();
    }

    private Animation startAlphaAnimation(final int i10, final int i11) {
        if (this.mScale && isAlphaUsedForScale()) {
            return null;
        }
        Animation animation = new Animation() { // from class: com.narvii.list.refresh.SwipeRefreshLayout.4
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                MaterialProgressDrawable materialProgressDrawable = SwipeRefreshLayout.this.mProgress;
                int i12 = i10;
                materialProgressDrawable.setAlpha((int) (i12 + ((i11 - i12) * f)));
            }
        };
        animation.setDuration(300L);
        this.mCircleView.setAnimationListener(null);
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(animation);
        return animation;
    }

    private void startProgressAlphaMaxAnimation() {
        this.mAlphaMaxAnimation = startAlphaAnimation(this.mProgress.getAlpha(), 255);
    }

    private void startProgressAlphaStartAnimation() {
        this.mAlphaStartAnimation = startAlphaAnimation(this.mProgress.getAlpha(), 76);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScaleDownAnimation(Animation.AnimationListener animationListener) {
        Animation animation = new Animation() { // from class: com.narvii.list.refresh.SwipeRefreshLayout.3
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(1.0f - f);
            }
        };
        this.mScaleDownAnimation = animation;
        animation.setDuration(150L);
        this.mCircleView.setAnimationListener(animationListener);
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.mScaleDownAnimation);
    }

    private void startScaleDownReturnToStartAnimation(int i10, Animation.AnimationListener animationListener) {
        this.mFrom = i10;
        if (isAlphaUsedForScale()) {
            this.mStartingScale = this.mProgress.getAlpha();
        } else {
            this.mStartingScale = ViewCompat.L(this.mCircleView);
        }
        Animation animation = new Animation() { // from class: com.narvii.list.refresh.SwipeRefreshLayout.8
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(SwipeRefreshLayout.this.mStartingScale + ((-SwipeRefreshLayout.this.mStartingScale) * f));
                SwipeRefreshLayout.this.moveToStart(f);
            }
        };
        this.mScaleDownToStartAnimation = animation;
        animation.setDuration(150L);
        if (animationListener != null) {
            this.mCircleView.setAnimationListener(animationListener);
        }
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.mScaleDownToStartAnimation);
    }

    private void startScaleUpAnimation(Animation.AnimationListener animationListener) {
        this.mCircleView.setVisibility(0);
        this.mProgress.setAlpha(255);
        Animation animation = new Animation() { // from class: com.narvii.list.refresh.SwipeRefreshLayout.2
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                SwipeRefreshLayout.this.setAnimationProgress(f);
            }
        };
        this.mScaleAnimation = animation;
        animation.setDuration(this.mMediumAnimationDuration);
        if (animationListener != null) {
            this.mCircleView.setAnimationListener(animationListener);
        }
        this.mCircleView.clearAnimation();
        this.mCircleView.startAnimation(this.mScaleAnimation);
    }

    public boolean canChildScrollUp() {
        AbsListView absListView;
        int childCount;
        if (!this.mReversed) {
            return ViewCompat.g(this.mTarget, -1);
        }
        View view = this.mTarget;
        if (!(view instanceof AbsListView) || (childCount = (absListView = (AbsListView) view).getChildCount()) <= 0) {
            return false;
        }
        int i10 = childCount - 1;
        return absListView.getLastVisiblePosition() < i10 || absListView.getChildAt(i10).getBottom() > absListView.getHeight() - absListView.getPaddingBottom();
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f6, boolean z6) {
        return this.shouldDispatchNestedScrollingEvents && this.mNestedScrollingChildHelper.a(f, f6, z6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f6) {
        return this.shouldDispatchNestedScrollingEvents && this.mNestedScrollingChildHelper.b(f, f6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.shouldDispatchNestedScrollingEvents && this.mNestedScrollingChildHelper.c(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.shouldDispatchNestedScrollingEvents && this.mNestedScrollingChildHelper.f(i10, i11, i12, i13, iArr);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        int iSave;
        if (this.mReversed && view == this.mCircleView) {
            iSave = canvas.save();
            canvas.translate(0.0f, getHeight());
            canvas.scale(1.0f, -1.0f);
        } else {
            iSave = -1;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j6);
        if (iSave != -1) {
            canvas.restoreToCount(iSave);
        }
        return zDrawChild;
    }

    public void finishSpinner(float f) {
        if (f > this.mTotalDragDistance) {
            setRefreshing(true, true);
            return;
        }
        this.mRefreshing = false;
        this.mProgress.setStartEndTrim(0.0f, 0.0f);
        animateOffsetToStartPosition(this.mCurrentTargetOffsetTop, !this.mScale ? new Animation.AnimationListener() { // from class: com.narvii.list.refresh.SwipeRefreshLayout.5
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (SwipeRefreshLayout.this.mScale) {
                    return;
                }
                SwipeRefreshLayout.this.startScaleDownAnimation(null);
            }
        } : null);
        this.mProgress.showArrow(false);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.mNestedScrollingParentHelper.a();
    }

    public int getProgressCircleDiameter() {
        CircleImageView circleImageView = this.mCircleView;
        if (circleImageView != null) {
            return circleImageView.getMeasuredHeight();
        }
        return 0;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.mNestedScrollingChildHelper.k();
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.mNestedScrollingChildHelper.m();
    }

    public void moveSpinner(float f) {
        this.mProgress.showArrow(true);
        float fMin = Math.min(1.0f, Math.abs(f / this.mTotalDragDistance));
        float fMax = (((float) Math.max(((double) fMin) - 0.4d, a.DEFAULT_VALUE_FOR_DOUBLE)) * 5.0f) / 3.0f;
        float fAbs = Math.abs(f) - this.mTotalDragDistance;
        float f6 = this.mUsingCustomStart ? this.mSpinnerFinalOffset - this.mOriginalOffsetTop : this.mSpinnerFinalOffset;
        double dMax = Math.max(0.0f, Math.min(fAbs, f6 * 2.0f) / f6) / 4.0f;
        float fPow = ((float) (dMax - Math.pow(dMax, 2.0d))) * 2.0f;
        int i10 = this.mOriginalOffsetTop + ((int) ((f6 * fMin) + (f6 * fPow * 2.0f)));
        if (this.mCircleView.getVisibility() != 0) {
            this.mCircleView.setVisibility(0);
        }
        if (!this.mScale) {
            ViewCompat.R0(this.mCircleView, 1.0f);
            ViewCompat.S0(this.mCircleView, 1.0f);
        }
        if (this.mScale) {
            setAnimationProgress(Math.min(1.0f, f / this.mTotalDragDistance));
        }
        if (f < this.mTotalDragDistance) {
            if (this.mProgress.getAlpha() > 76 && !isAnimationRunning(this.mAlphaStartAnimation)) {
                startProgressAlphaStartAnimation();
            }
        } else if (this.mProgress.getAlpha() < 255 && !isAnimationRunning(this.mAlphaMaxAnimation)) {
            startProgressAlphaMaxAnimation();
        }
        this.mProgress.setStartEndTrim(0.0f, Math.min(0.8f, fMax * 0.8f));
        this.mProgress.setArrowScale(Math.min(1.0f, fMax));
        this.mProgress.setProgressRotation((((fMax * 0.4f) - 0.25f) + (fPow * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom(i10 - this.mCurrentTargetOffsetTop, true);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        dispatchNestedScroll(i10, i11, i12, i13, this.mParentOffsetInWindow);
        int i14 = i13 + this.mParentOffsetInWindow[1];
        if (i14 >= 0 || canChildScrollUp()) {
            return;
        }
        float fAbs = this.mTotalUnconsumed + Math.abs(i14);
        this.mTotalUnconsumed = fAbs;
        moveSpinner(fAbs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        this.mNestedScrollingParentHelper.b(view, view2, i10);
        startNestedScroll(i10 & 2);
        this.mTotalUnconsumed = 0.0f;
        this.mNestedScrollInProgress = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        this.mNestedScrollingParentHelper.d(view);
        this.mNestedScrollInProgress = false;
        float f = this.mTotalUnconsumed;
        if (f > 0.0f) {
            finishSpinner(f);
            this.mTotalUnconsumed = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z6) {
        this.mNestedScrollingChildHelper.n(z6);
    }

    public void setProgressBackgroundColorSchemeColor(@ColorInt int i10) {
        this.mCircleView.setBackgroundColor(i10);
        this.mProgress.setBackgroundColor(i10);
    }

    public void setProgressViewOffset(boolean z6, int i10, int i11) {
        this.mScale = z6;
        this.mCircleView.setVisibility(8);
        this.mCurrentTargetOffsetTop = i10;
        this.mOriginalOffsetTop = i10;
        this.mSpinnerFinalOffset = i11;
        this.mUsingCustomStart = true;
        this.mCircleView.invalidate();
    }

    public void setReversed(boolean z6) {
        this.mReversed = z6;
        invalidate();
    }

    public void setSize(int i10) {
        if (i10 == 0 || i10 == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i10 == 0) {
                int i11 = (int) (displayMetrics.density * 56.0f);
                this.mCircleWidth = i11;
                this.mCircleHeight = i11;
            } else {
                int i12 = (int) (displayMetrics.density * 40.0f);
                this.mCircleWidth = i12;
                this.mCircleHeight = i12;
            }
            this.mCircleView.setImageDrawable(null);
            this.mProgress.updateSizes(i10);
            this.mCircleView.setImageDrawable(this.mProgress);
        }
    }

    public void setTarget(NVScrollView nVScrollView) {
        nVScrollView.swipeRefreshLayout = this;
        this.mTarget = nVScrollView;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return this.mNestedScrollingChildHelper.p(i10);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        this.mNestedScrollingChildHelper.r();
    }

    private float getMotionEventY(MotionEvent motionEvent, int i10) {
        int iA = MotionEventCompat.a(motionEvent, i10);
        if (iA < 0) {
            return -1.0f;
        }
        return MotionEventCompat.g(motionEvent, iA);
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int i10;
        int iB = MotionEventCompat.b(motionEvent);
        if (MotionEventCompat.e(motionEvent, iB) == this.mActivePointerId) {
            if (iB == 0) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            this.mActivePointerId = MotionEventCompat.e(motionEvent, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAnimationProgress(float f) {
        if (isAlphaUsedForScale()) {
            setColorViewAlpha((int) (f * 255.0f));
        } else {
            ViewCompat.R0(this.mCircleView, f);
            ViewCompat.S0(this.mCircleView, f);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        reset();
    }

    /* JADX WARN: Code duplicated, block: B:64:0x00ae  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ensureTarget();
        if ((this.mTarget instanceof NVListView) && motionEvent.getAction() == 0) {
            NVListView nVListView = (NVListView) this.mTarget;
            if (nVListView.swipeRefreshLayout == null && nVListView.getOverscrollStretchView() != null) {
                nVListView.swipeRefreshLayout = this;
            }
        }
        View view = this.mTarget;
        if ((view instanceof NVListView) && ((NVListView) view).swipeRefreshLayout == this) {
            return false;
        }
        if ((view instanceof NVScrollView) && ((NVScrollView) view).swipeRefreshLayout == this) {
            return false;
        }
        int iC = MotionEventCompat.c(motionEvent);
        if (this.mReturningToStart && iC == 0) {
            this.mReturningToStart = false;
        }
        if (!isEnabled() || this.mReturningToStart || canChildScrollUp() || this.mRefreshing || this.mNestedScrollInProgress) {
            return false;
        }
        if (iC != 0) {
            int i10 = -1;
            if (iC != 1) {
                if (iC != 2) {
                    if (iC != 3) {
                        if (iC == 6) {
                            onSecondaryPointerUp(motionEvent);
                        }
                    } else {
                        this.mIsBeingDragged = false;
                        this.mActivePointerId = -1;
                    }
                } else {
                    int i11 = this.mActivePointerId;
                    if (i11 == -1) {
                        Log.e(LOG_TAG, "Got ACTION_MOVE event but don't have an active pointer id.");
                        return false;
                    }
                    float motionEventY = getMotionEventY(motionEvent, i11);
                    if (motionEventY == -1.0f) {
                        return false;
                    }
                    float f = this.mInitialDownY;
                    float f6 = motionEventY - f;
                    if (!this.mReversed) {
                        i10 = 1;
                    }
                    float f7 = i10 * f6;
                    int i12 = this.mTouchSlop;
                    if (f7 > i12 && !this.mIsBeingDragged) {
                        this.mInitialMotionY = f + i12;
                        this.mIsBeingDragged = true;
                        this.mProgress.setAlpha(76);
                    }
                }
            } else {
                this.mIsBeingDragged = false;
                this.mActivePointerId = -1;
            }
        } else {
            setTargetOffsetTopAndBottom(this.mOriginalOffsetTop - this.mCircleView.getTop(), true);
            int iE = MotionEventCompat.e(motionEvent, 0);
            this.mActivePointerId = iE;
            this.mIsBeingDragged = false;
            float motionEventY2 = getMotionEventY(motionEvent, iE);
            if (motionEventY2 == -1.0f) {
                return false;
            }
            this.mInitialDownY = motionEventY2;
        }
        return this.mIsBeingDragged;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.mTarget == null) {
            ensureTarget();
        }
        View view = this.mTarget;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.mCircleView.getMeasuredWidth();
        int measuredHeight2 = this.mCircleView.getMeasuredHeight();
        int i14 = measuredWidth / 2;
        int i15 = measuredWidth2 / 2;
        int i16 = this.mCurrentTargetOffsetTop;
        this.mCircleView.layout(i14 - i15, i16, i14 + i15, measuredHeight2 + i16);
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.mTarget == null) {
            ensureTarget();
        }
        View view = this.mTarget;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.mCircleView.measure(View.MeasureSpec.makeMeasureSpec(this.mCircleWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(this.mCircleHeight, 1073741824));
        if (!this.mUsingCustomStart && !this.mOriginalOffsetCalculated) {
            this.mOriginalOffsetCalculated = true;
            int i12 = -this.mCircleView.getMeasuredHeight();
            this.mOriginalOffsetTop = i12;
            this.mCurrentTargetOffsetTop = i12;
        }
        this.mCircleViewIndex = -1;
        for (int i13 = 0; i13 < getChildCount(); i13++) {
            if (getChildAt(i13) == this.mCircleView) {
                this.mCircleViewIndex = i13;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f6, boolean z6) {
        return dispatchNestedFling(f, f6, z6);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f6) {
        return dispatchNestedPreFling(f, f6);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        if (isEnabled() && !this.mReturningToStart && !this.mRefreshing && (i10 & 2) != 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int iC = MotionEventCompat.c(motionEvent);
        if (this.mReturningToStart && iC == 0) {
            this.mReturningToStart = false;
        }
        if (!isEnabled() || this.mReturningToStart || canChildScrollUp() || this.mNestedScrollInProgress) {
            return false;
        }
        int i10 = 1;
        if (iC != 0) {
            int i11 = -1;
            if (iC != 1) {
                if (iC != 2) {
                    if (iC == 3) {
                        return false;
                    }
                    if (iC != 5) {
                        if (iC == 6) {
                            onSecondaryPointerUp(motionEvent);
                        }
                    } else {
                        int iB = MotionEventCompat.b(motionEvent);
                        if (iB < 0) {
                            Log.e(LOG_TAG, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                            return false;
                        }
                        this.mActivePointerId = MotionEventCompat.e(motionEvent, iB);
                    }
                } else {
                    int iA = MotionEventCompat.a(motionEvent, this.mActivePointerId);
                    if (iA < 0) {
                        Log.e(LOG_TAG, "Got ACTION_MOVE event but have an invalid active pointer id.");
                        return false;
                    }
                    float fG = (MotionEventCompat.g(motionEvent, iA) - this.mInitialMotionY) * 0.5f;
                    if (!this.mReversed) {
                        i11 = 1;
                    }
                    float f = fG * i11;
                    if (this.mIsBeingDragged) {
                        if (f <= 0.0f) {
                            return false;
                        }
                        moveSpinner(f);
                    }
                }
            } else {
                int iA2 = MotionEventCompat.a(motionEvent, this.mActivePointerId);
                if (iA2 < 0) {
                    Log.e(LOG_TAG, "Got ACTION_UP event but don't have an active pointer id.");
                    return false;
                }
                float fG2 = (MotionEventCompat.g(motionEvent, iA2) - this.mInitialMotionY) * 0.5f;
                if (this.mReversed) {
                    i10 = -1;
                }
                this.mIsBeingDragged = false;
                finishSpinner(fG2 * i10);
                this.mActivePointerId = -1;
                return false;
            }
        } else {
            this.mActivePointerId = MotionEventCompat.e(motionEvent, 0);
            this.mIsBeingDragged = false;
        }
        return true;
    }

    @Deprecated
    public void setColorScheme(@ColorInt int... iArr) {
        setColorSchemeResources(iArr);
    }

    @ColorInt
    public void setColorSchemeColors(int... iArr) {
        ensureTarget();
        this.mProgress.setColorSchemeColors(iArr);
    }

    public void setColorSchemeResources(@ColorRes int... iArr) {
        Resources resources = getResources();
        int[] iArr2 = new int[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr2[i10] = resources.getColor(iArr[i10]);
        }
        setColorSchemeColors(iArr2);
    }

    @Deprecated
    public void setProgressBackgroundColor(int i10) {
        setProgressBackgroundColorSchemeResource(i10);
    }

    public void setProgressBackgroundColorSchemeResource(@ColorRes int i10) {
        setProgressBackgroundColorSchemeColor(getResources().getColor(i10));
    }

    private void setRefreshing(boolean z6, boolean z10) {
        if (this.mRefreshing != z6) {
            this.mNotify = z10;
            ensureTarget();
            this.mRefreshing = z6;
            if (z6) {
                animateOffsetToCorrectPosition(this.mCurrentTargetOffsetTop, this.mRefreshListener);
            } else {
                startScaleDownAnimation(this.mRefreshListener);
            }
        }
    }
}
