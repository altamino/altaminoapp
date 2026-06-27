package com.narvii.nested.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Build;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.nested.utils.AnimationUtils;
import java.util.List;

/* loaded from: classes3.dex */
public class SpringBehavior extends NVAppBarLayout.Behavior {
    private static final int MAX_OFFSET_ANIMATION_DURATION = 600;
    private static final String TAG = "SpringBehav";
    private ValueAnimator mFlingAnimator;
    private ValueAnimator mOffsetAnimator;
    private int mOffsetDelta;
    protected int mOffsetSpring;
    protected int mPreHeadHeight;
    private SpringOffsetCallback mSpringOffsetCallback;
    private ValueAnimator mSpringRecoverAnimator;

    public interface SpringOffsetCallback {
        void springCallback(int i);
    }

    private static boolean checkFlag(int i, int i2) {
        return (i & i2) == i2;
    }

    private int clamp(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public SpringBehavior() {
    }

    public SpringBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, View view, View view2, int i, int i2) {
        ValueAnimator valueAnimator;
        boolean zOnStartNestedScroll = super.onStartNestedScroll(coordinatorLayout, nVAppBarLayout, view, view2, i, i2);
        if (zOnStartNestedScroll && (valueAnimator = this.mSpringRecoverAnimator) != null && valueAnimator.isRunning()) {
            this.mSpringRecoverAnimator.cancel();
        }
        resetFlingAnimator();
        return zOnStartNestedScroll;
    }

    private void resetFlingAnimator() {
        ValueAnimator valueAnimator = this.mFlingAnimator;
        if (valueAnimator != null) {
            if (valueAnimator.isRunning()) {
                this.mFlingAnimator.cancel();
            }
            this.mFlingAnimator = null;
        }
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, android.support.design.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, View view, int i, int i2, int i3, int i4, int i5) {
        if (i4 < 0) {
            setHeaderTopBottomOffset(coordinatorLayout, nVAppBarLayout, getTopBottomOffsetForScrollingSibling() - i4, -nVAppBarLayout.getDownNestedScrollRange(), 0, i5);
        }
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, android.support.design.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, View view, int i) {
        super.onStopNestedScroll(coordinatorLayout, nVAppBarLayout, view, i);
        if (i == 1) {
            resetFlingAnimator();
        }
        checkShouldSpringRecover(coordinatorLayout, nVAppBarLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkShouldSpringRecover(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout) {
        if (this.mOffsetSpring > 0) {
            animateRecoverBySpring(coordinatorLayout, nVAppBarLayout);
        }
    }

    private void animateFlingSpring(final CoordinatorLayout coordinatorLayout, final NVAppBarLayout nVAppBarLayout, int i) {
        ValueAnimator valueAnimator = this.mFlingAnimator;
        if (valueAnimator == null) {
            this.mFlingAnimator = new ValueAnimator();
            this.mFlingAnimator.setDuration(200L);
            this.mFlingAnimator.setInterpolator(new DecelerateInterpolator());
            this.mFlingAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.nested.behavior.SpringBehavior.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    SpringBehavior.this.updateSpringHeaderHeight(coordinatorLayout, nVAppBarLayout, ((Integer) valueAnimator2.getAnimatedValue()).intValue());
                }
            });
            this.mFlingAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.nested.behavior.SpringBehavior.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    SpringBehavior.this.checkShouldSpringRecover(coordinatorLayout, nVAppBarLayout);
                }
            });
        } else if (valueAnimator.isRunning()) {
            this.mFlingAnimator.cancel();
        }
        this.mFlingAnimator.setIntValues(this.mOffsetSpring, Math.min((this.mPreHeadHeight * 3) / 2, i));
        this.mFlingAnimator.start();
    }

    private void animateRecoverBySpring(final CoordinatorLayout coordinatorLayout, final NVAppBarLayout nVAppBarLayout) {
        ValueAnimator valueAnimator = this.mSpringRecoverAnimator;
        if (valueAnimator == null) {
            this.mSpringRecoverAnimator = new ValueAnimator();
            this.mSpringRecoverAnimator.setDuration(200L);
            this.mSpringRecoverAnimator.setInterpolator(new DecelerateInterpolator());
            this.mSpringRecoverAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.nested.behavior.SpringBehavior.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    SpringBehavior.this.updateSpringHeaderHeight(coordinatorLayout, nVAppBarLayout, ((Integer) valueAnimator2.getAnimatedValue()).intValue());
                }
            });
        } else if (valueAnimator.isRunning()) {
            this.mSpringRecoverAnimator.cancel();
        }
        this.mSpringRecoverAnimator.setIntValues(this.mOffsetSpring, 0);
        this.mSpringRecoverAnimator.start();
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i, int i2, int i3, int i4) {
        boolean zOnMeasureChild = super.onMeasureChild(coordinatorLayout, nVAppBarLayout, i, i2, i3, i4);
        if (this.mPreHeadHeight == 0 && nVAppBarLayout.getHeight() != 0) {
            this.mPreHeadHeight = getHeaderExpandedHeight(nVAppBarLayout);
        }
        return zOnMeasureChild;
    }

    protected int getHeaderExpandedHeight(NVAppBarLayout nVAppBarLayout) {
        int childCount = nVAppBarLayout.getChildCount();
        int measuredHeight = 0;
        for (int i = 0; i < childCount; i++) {
            View childAt = nVAppBarLayout.getChildAt(i);
            NVAppBarLayout.LayoutParams layoutParams = (NVAppBarLayout.LayoutParams) childAt.getLayoutParams();
            measuredHeight += childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
        }
        return Math.max(0, measuredHeight);
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, com.narvii.nested.behavior.HeaderBehavior
    public void onFlingFinished(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout) {
        snapToChildIfNeeded(coordinatorLayout, nVAppBarLayout);
        animateRecoverBySpring(coordinatorLayout, nVAppBarLayout);
    }

    private void snapToChildIfNeeded(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout) {
        int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
        int childIndexOnOffset = getChildIndexOnOffset(nVAppBarLayout, topBottomOffsetForScrollingSibling);
        if (childIndexOnOffset >= 0) {
            View childAt = nVAppBarLayout.getChildAt(childIndexOnOffset);
            int scrollFlags = ((NVAppBarLayout.LayoutParams) childAt.getLayoutParams()).getScrollFlags();
            if ((scrollFlags & 17) == 17) {
                int i = -childAt.getTop();
                int minimumHeight = -childAt.getBottom();
                if (childIndexOnOffset == nVAppBarLayout.getChildCount() - 1) {
                    minimumHeight += nVAppBarLayout.getTopInset();
                }
                if (checkFlag(scrollFlags, 2)) {
                    minimumHeight += ViewCompat.getMinimumHeight(childAt);
                } else if (checkFlag(scrollFlags, 5)) {
                    int minimumHeight2 = ViewCompat.getMinimumHeight(childAt) + minimumHeight;
                    if (topBottomOffsetForScrollingSibling < minimumHeight2) {
                        i = minimumHeight2;
                    } else {
                        minimumHeight = minimumHeight2;
                    }
                }
                if (topBottomOffsetForScrollingSibling < (minimumHeight + i) / 2) {
                    i = minimumHeight;
                }
                animateOffsetTo(coordinatorLayout, nVAppBarLayout, clamp(i, -nVAppBarLayout.getTotalScrollRange(), 0), 0.0f);
            }
        }
    }

    private void animateOffsetTo(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i, float f) {
        int height;
        int iAbs = Math.abs(getTopBottomOffsetForScrollingSibling() - i);
        float fAbs = Math.abs(f);
        if (fAbs > 0.0f) {
            height = Math.round((iAbs / fAbs) * 1000.0f) * 3;
        } else {
            height = (int) (((iAbs / nVAppBarLayout.getHeight()) + 1.0f) * 150.0f);
        }
        animateOffsetWithDuration(coordinatorLayout, nVAppBarLayout, i, height);
    }

    private void animateOffsetWithDuration(final CoordinatorLayout coordinatorLayout, final NVAppBarLayout nVAppBarLayout, int i, int i2) {
        int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
        if (topBottomOffsetForScrollingSibling == i) {
            ValueAnimator valueAnimator = this.mOffsetAnimator;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                return;
            }
            this.mOffsetAnimator.cancel();
            return;
        }
        ValueAnimator valueAnimator2 = this.mOffsetAnimator;
        if (valueAnimator2 == null) {
            this.mOffsetAnimator = new ValueAnimator();
            this.mOffsetAnimator.setInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
            this.mOffsetAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.nested.behavior.SpringBehavior.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    SpringBehavior.this.setHeaderTopBottomOffset(coordinatorLayout, nVAppBarLayout, ((Integer) valueAnimator3.getAnimatedValue()).intValue());
                }
            });
        } else {
            valueAnimator2.cancel();
        }
        this.mOffsetAnimator.setDuration(Math.min(i2, 600));
        this.mOffsetAnimator.setIntValues(topBottomOffsetForScrollingSibling, i);
        this.mOffsetAnimator.start();
    }

    private int getChildIndexOnOffset(NVAppBarLayout nVAppBarLayout, int i) {
        int childCount = nVAppBarLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = nVAppBarLayout.getChildAt(i2);
            int i3 = -i;
            if (childAt.getTop() <= i3 && childAt.getBottom() >= i3) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, com.narvii.nested.behavior.HeaderBehavior
    public int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i, int i2, int i3) {
        return setHeaderTopBottomOffset(coordinatorLayout, nVAppBarLayout, i, i2, i3, -1);
    }

    int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i, int i2, int i3, int i4) {
        int i5;
        int topBottomOffsetForScrollingSibling;
        int topBottomOffsetForScrollingSibling2 = getTopBottomOffsetForScrollingSibling();
        int i6 = this.mOffsetSpring;
        if (i6 == 0 || i >= 0) {
            i5 = i;
            topBottomOffsetForScrollingSibling = 0;
        } else {
            int i7 = i6 + i;
            if (i7 < 0) {
                i5 = i7;
                i7 = 0;
            } else {
                i5 = i;
            }
            updateSpringOffsetByscroll(coordinatorLayout, nVAppBarLayout, i7);
            topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling() - i;
            if (i7 >= 0) {
                return topBottomOffsetForScrollingSibling;
            }
        }
        if (this.mOffsetSpring > 0 && nVAppBarLayout.getHeight() >= this.mPreHeadHeight && i5 > 0) {
            return updateSpringByScroll(coordinatorLayout, nVAppBarLayout, i4, i);
        }
        if (i2 != 0 && topBottomOffsetForScrollingSibling2 >= i2 && topBottomOffsetForScrollingSibling2 <= i3) {
            int iClamp = clamp(i5, i2, i3);
            if (topBottomOffsetForScrollingSibling2 == iClamp) {
                return topBottomOffsetForScrollingSibling2 != i2 ? updateSpringByScroll(coordinatorLayout, nVAppBarLayout, i4, i) : topBottomOffsetForScrollingSibling;
            }
            int iInterpolateOffset = nVAppBarLayout.hasChildWithInterpolator() ? interpolateOffset(nVAppBarLayout, iClamp) : iClamp;
            boolean topAndBottomOffset = setTopAndBottomOffset(iInterpolateOffset);
            int i8 = topBottomOffsetForScrollingSibling2 - iClamp;
            this.mOffsetDelta = iClamp - iInterpolateOffset;
            if (!topAndBottomOffset && nVAppBarLayout.hasChildWithInterpolator()) {
                coordinatorLayout.dispatchDependentViewsChanged(nVAppBarLayout);
            }
            nVAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
            updateAppBarLayoutDrawableState(coordinatorLayout, nVAppBarLayout, iClamp, iClamp < topBottomOffsetForScrollingSibling2 ? -1 : 1, false);
            return i8;
        }
        this.mOffsetDelta = 0;
        return topBottomOffsetForScrollingSibling;
    }

    private int updateSpringByScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i, int i2) {
        if (nVAppBarLayout.getHeight() >= this.mPreHeadHeight && i == 1) {
            if (this.mFlingAnimator == null) {
                animateFlingSpring(coordinatorLayout, nVAppBarLayout, i2);
            }
            return i2;
        }
        updateSpringOffsetByscroll(coordinatorLayout, nVAppBarLayout, this.mOffsetSpring + (i2 / 3));
        return getTopBottomOffsetForScrollingSibling() - i2;
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, com.narvii.nested.behavior.HeaderBehavior
    public int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset() + this.mOffsetDelta;
    }

    private int interpolateOffset(NVAppBarLayout nVAppBarLayout, int i) {
        int iAbs = Math.abs(i);
        int childCount = nVAppBarLayout.getChildCount();
        int topInset = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = nVAppBarLayout.getChildAt(i2);
            NVAppBarLayout.LayoutParams layoutParams = (NVAppBarLayout.LayoutParams) childAt.getLayoutParams();
            Interpolator scrollInterpolator = layoutParams.getScrollInterpolator();
            if (iAbs < childAt.getTop() || iAbs > childAt.getBottom()) {
                i2++;
            } else if (scrollInterpolator != null) {
                int scrollFlags = layoutParams.getScrollFlags();
                if ((scrollFlags & 1) != 0) {
                    topInset = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    if ((scrollFlags & 2) != 0) {
                        topInset -= ViewCompat.getMinimumHeight(childAt);
                    }
                }
                if (ViewCompat.getFitsSystemWindows(childAt)) {
                    topInset -= nVAppBarLayout.getTopInset();
                }
                if (topInset > 0) {
                    float f = topInset;
                    return Integer.signum(i) * (childAt.getTop() + Math.round(f * scrollInterpolator.getInterpolation((iAbs - childAt.getTop()) / f)));
                }
            }
        }
        return i;
    }

    private boolean shouldJumpElevationState(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout) {
        List<View> dependents = coordinatorLayout.getDependents(nVAppBarLayout);
        int size = dependents.size();
        for (int i = 0; i < size; i++) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i).getLayoutParams()).getBehavior();
            if (behavior instanceof NVAppBarLayout.ScrollingViewBehavior) {
                return ((NVAppBarLayout.ScrollingViewBehavior) behavior).getOverlayTop() != 0;
            }
        }
        return false;
    }

    private static View getAppBarChildOnOffset(NVAppBarLayout nVAppBarLayout, int i) {
        int iAbs = Math.abs(i);
        int childCount = nVAppBarLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = nVAppBarLayout.getChildAt(i2);
            if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private void updateSpringOffsetByscroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i) {
        ValueAnimator valueAnimator = this.mSpringRecoverAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mSpringRecoverAnimator.cancel();
        }
        updateSpringHeaderHeight(coordinatorLayout, nVAppBarLayout, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpringHeaderHeight(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i) {
        if (this.mPreHeadHeight == 0 || nVAppBarLayout.getHeight() < this.mPreHeadHeight || i < 0) {
            return;
        }
        this.mOffsetSpring = i;
        SpringOffsetCallback springOffsetCallback = this.mSpringOffsetCallback;
        if (springOffsetCallback != null) {
            springOffsetCallback.springCallback(this.mOffsetSpring);
        }
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) nVAppBarLayout.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).height = this.mPreHeadHeight + i;
        nVAppBarLayout.setLayoutParams(layoutParams);
        coordinatorLayout.dispatchDependentViewsChanged(nVAppBarLayout);
    }

    public int getOffsetSpring() {
        return this.mOffsetSpring;
    }

    public SpringOffsetCallback getSpringOffsetCallback() {
        return this.mSpringOffsetCallback;
    }

    public void setSpringOffsetCallback(SpringOffsetCallback springOffsetCallback) {
        this.mSpringOffsetCallback = springOffsetCallback;
    }

    boolean isOffsetAnimatorRunning() {
        ValueAnimator valueAnimator = this.mOffsetAnimator;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    private void updateAppBarLayoutDrawableState(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i, int i2, boolean z) {
        View appBarChildOnOffset = getAppBarChildOnOffset(nVAppBarLayout, i);
        if (appBarChildOnOffset != null) {
            int scrollFlags = ((NVAppBarLayout.LayoutParams) appBarChildOnOffset.getLayoutParams()).getScrollFlags();
            boolean z2 = false;
            if ((scrollFlags & 1) != 0) {
                int minimumHeight = ViewCompat.getMinimumHeight(appBarChildOnOffset);
                if (i2 <= 0 || (scrollFlags & 12) == 0 ? !((scrollFlags & 2) == 0 || (-i) < (appBarChildOnOffset.getBottom() - minimumHeight) - nVAppBarLayout.getTopInset()) : (-i) >= (appBarChildOnOffset.getBottom() - minimumHeight) - nVAppBarLayout.getTopInset()) {
                    z2 = true;
                }
            }
            boolean collapsedState = nVAppBarLayout.setCollapsedState(z2);
            if (Build.VERSION.SDK_INT >= 11) {
                if (z || (collapsedState && shouldJumpElevationState(coordinatorLayout, nVAppBarLayout))) {
                    nVAppBarLayout.jumpDrawablesToCurrentState();
                }
            }
        }
    }
}
