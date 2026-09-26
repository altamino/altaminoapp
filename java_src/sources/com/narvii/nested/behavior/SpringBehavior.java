package com.narvii.nested.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.nested.utils.AnimationUtils;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
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
        void springCallback(int i10);
    }

    public SpringBehavior() {
    }

    private static boolean checkFlag(int i10, int i11) {
        return (i10 & i11) == i11;
    }

    private int clamp(int i10, int i11, int i12) {
        if (i10 < i11) {
            return i11;
        }
        return i10 > i12 ? i12 : i10;
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

    public SpringBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void animateFlingSpring(final CoordinatorLayout coordinatorLayout, final NVAppBarLayout nVAppBarLayout, int i10) {
        ValueAnimator valueAnimator = this.mFlingAnimator;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.mFlingAnimator = valueAnimator2;
            valueAnimator2.setDuration(200L);
            this.mFlingAnimator.setInterpolator(new DecelerateInterpolator());
            this.mFlingAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.nested.behavior.SpringBehavior.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    SpringBehavior.this.updateSpringHeaderHeight(coordinatorLayout, nVAppBarLayout, ((Integer) valueAnimator3.getAnimatedValue()).intValue());
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
        this.mFlingAnimator.setIntValues(this.mOffsetSpring, Math.min((this.mPreHeadHeight * 3) / 2, i10));
        this.mFlingAnimator.start();
    }

    private void animateRecoverBySpring(final CoordinatorLayout coordinatorLayout, final NVAppBarLayout nVAppBarLayout) {
        ValueAnimator valueAnimator = this.mSpringRecoverAnimator;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.mSpringRecoverAnimator = valueAnimator2;
            valueAnimator2.setDuration(200L);
            this.mSpringRecoverAnimator.setInterpolator(new DecelerateInterpolator());
            this.mSpringRecoverAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.nested.behavior.SpringBehavior.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    SpringBehavior.this.updateSpringHeaderHeight(coordinatorLayout, nVAppBarLayout, ((Integer) valueAnimator3.getAnimatedValue()).intValue());
                }
            });
        } else if (valueAnimator.isRunning()) {
            this.mSpringRecoverAnimator.cancel();
        }
        this.mSpringRecoverAnimator.setIntValues(this.mOffsetSpring, 0);
        this.mSpringRecoverAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkShouldSpringRecover(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout) {
        if (this.mOffsetSpring > 0) {
            animateRecoverBySpring(coordinatorLayout, nVAppBarLayout);
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSpringHeaderHeight(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10) {
        if (this.mPreHeadHeight == 0 || nVAppBarLayout.getHeight() < this.mPreHeadHeight || i10 < 0) {
            return;
        }
        this.mOffsetSpring = i10;
        SpringOffsetCallback springOffsetCallback = this.mSpringOffsetCallback;
        if (springOffsetCallback != null) {
            springOffsetCallback.springCallback(i10);
        }
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) nVAppBarLayout.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).height = this.mPreHeadHeight + i10;
        nVAppBarLayout.setLayoutParams(layoutParams);
        coordinatorLayout.dispatchDependentViewsChanged(nVAppBarLayout);
    }

    private void updateSpringOffsetByscroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10) {
        ValueAnimator valueAnimator = this.mSpringRecoverAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mSpringRecoverAnimator.cancel();
        }
        updateSpringHeaderHeight(coordinatorLayout, nVAppBarLayout, i10);
    }

    @VisibleForTesting
    boolean isOffsetAnimatorRunning() {
        ValueAnimator valueAnimator = this.mOffsetAnimator;
        return valueAnimator != null && valueAnimator.isRunning();
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, com.narvii.nested.behavior.HeaderBehavior
    public void onFlingFinished(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout) {
        snapToChildIfNeeded(coordinatorLayout, nVAppBarLayout);
        animateRecoverBySpring(coordinatorLayout, nVAppBarLayout);
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10, int i11, int i12, int i13) {
        boolean zOnMeasureChild = super.onMeasureChild(coordinatorLayout, nVAppBarLayout, i10, i11, i12, i13);
        if (this.mPreHeadHeight == 0 && nVAppBarLayout.getHeight() != 0) {
            this.mPreHeadHeight = getHeaderExpandedHeight(nVAppBarLayout);
        }
        return zOnMeasureChild;
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, View view, int i10, int i11, int i12, int i13, int i14) {
        if (i13 < 0) {
            setHeaderTopBottomOffset(coordinatorLayout, nVAppBarLayout, getTopBottomOffsetForScrollingSibling() - i13, -nVAppBarLayout.getDownNestedScrollRange(), 0, i14);
        }
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, View view, View view2, int i10, int i11) {
        ValueAnimator valueAnimator;
        boolean zOnStartNestedScroll = super.onStartNestedScroll(coordinatorLayout, nVAppBarLayout, view, view2, i10, i11);
        if (zOnStartNestedScroll && (valueAnimator = this.mSpringRecoverAnimator) != null && valueAnimator.isRunning()) {
            this.mSpringRecoverAnimator.cancel();
        }
        resetFlingAnimator();
        return zOnStartNestedScroll;
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, View view, int i10) {
        super.onStopNestedScroll(coordinatorLayout, nVAppBarLayout, view, i10);
        if (i10 == 1) {
            resetFlingAnimator();
        }
        checkShouldSpringRecover(coordinatorLayout, nVAppBarLayout);
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, com.narvii.nested.behavior.HeaderBehavior
    public int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10, int i11, int i12) {
        return setHeaderTopBottomOffset(coordinatorLayout, nVAppBarLayout, i10, i11, i12, -1);
    }

    private void animateOffsetTo(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10, float f) {
        int height;
        int iAbs = Math.abs(getTopBottomOffsetForScrollingSibling() - i10);
        float fAbs = Math.abs(f);
        if (fAbs > 0.0f) {
            height = Math.round((iAbs / fAbs) * 1000.0f) * 3;
        } else {
            height = (int) (((iAbs / nVAppBarLayout.getHeight()) + 1.0f) * 150.0f);
        }
        animateOffsetWithDuration(coordinatorLayout, nVAppBarLayout, i10, height);
    }

    private void animateOffsetWithDuration(final CoordinatorLayout coordinatorLayout, final NVAppBarLayout nVAppBarLayout, int i10, int i11) {
        int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
        if (topBottomOffsetForScrollingSibling == i10) {
            ValueAnimator valueAnimator = this.mOffsetAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.mOffsetAnimator.cancel();
                return;
            }
            return;
        }
        ValueAnimator valueAnimator2 = this.mOffsetAnimator;
        if (valueAnimator2 == null) {
            ValueAnimator valueAnimator3 = new ValueAnimator();
            this.mOffsetAnimator = valueAnimator3;
            valueAnimator3.setInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
            this.mOffsetAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.nested.behavior.SpringBehavior.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator4) {
                    SpringBehavior.this.setHeaderTopBottomOffset(coordinatorLayout, nVAppBarLayout, ((Integer) valueAnimator4.getAnimatedValue()).intValue());
                }
            });
        } else {
            valueAnimator2.cancel();
        }
        this.mOffsetAnimator.setDuration(Math.min(i11, 600));
        this.mOffsetAnimator.setIntValues(topBottomOffsetForScrollingSibling, i10);
        this.mOffsetAnimator.start();
    }

    private static View getAppBarChildOnOffset(NVAppBarLayout nVAppBarLayout, int i10) {
        int iAbs = Math.abs(i10);
        int childCount = nVAppBarLayout.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = nVAppBarLayout.getChildAt(i11);
            if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private int getChildIndexOnOffset(NVAppBarLayout nVAppBarLayout, int i10) {
        int childCount = nVAppBarLayout.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = nVAppBarLayout.getChildAt(i11);
            int i12 = -i10;
            if (childAt.getTop() <= i12 && childAt.getBottom() >= i12) {
                return i11;
            }
        }
        return -1;
    }

    private int interpolateOffset(NVAppBarLayout nVAppBarLayout, int i10) {
        int iAbs = Math.abs(i10);
        int childCount = nVAppBarLayout.getChildCount();
        int topInset = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = nVAppBarLayout.getChildAt(i11);
            NVAppBarLayout.LayoutParams layoutParams = (NVAppBarLayout.LayoutParams) childAt.getLayoutParams();
            Interpolator scrollInterpolator = layoutParams.getScrollInterpolator();
            if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                if (scrollInterpolator == null) {
                    break;
                }
                int scrollFlags = layoutParams.getScrollFlags();
                if ((scrollFlags & 1) != 0) {
                    topInset = childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    if ((scrollFlags & 2) != 0) {
                        topInset -= ViewCompat.E(childAt);
                    }
                }
                if (ViewCompat.A(childAt)) {
                    topInset -= nVAppBarLayout.getTopInset();
                }
                if (topInset <= 0) {
                    break;
                }
                float f = topInset;
                return Integer.signum(i10) * (childAt.getTop() + Math.round(f * scrollInterpolator.getInterpolation((iAbs - childAt.getTop()) / f)));
            }
        }
        return i10;
    }

    private boolean shouldJumpElevationState(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout) {
        List<View> dependents = coordinatorLayout.getDependents(nVAppBarLayout);
        int size = dependents.size();
        for (int i10 = 0; i10 < size; i10++) {
            CoordinatorLayout.Behavior behaviorF = ((CoordinatorLayout.LayoutParams) dependents.get(i10).getLayoutParams()).f();
            if (behaviorF instanceof NVAppBarLayout.ScrollingViewBehavior) {
                if (((NVAppBarLayout.ScrollingViewBehavior) behaviorF).getOverlayTop() == 0) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    private void snapToChildIfNeeded(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout) {
        int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
        int childIndexOnOffset = getChildIndexOnOffset(nVAppBarLayout, topBottomOffsetForScrollingSibling);
        if (childIndexOnOffset >= 0) {
            View childAt = nVAppBarLayout.getChildAt(childIndexOnOffset);
            int scrollFlags = ((NVAppBarLayout.LayoutParams) childAt.getLayoutParams()).getScrollFlags();
            if ((scrollFlags & 17) == 17) {
                int i10 = -childAt.getTop();
                int iE = -childAt.getBottom();
                if (childIndexOnOffset == nVAppBarLayout.getChildCount() - 1) {
                    iE += nVAppBarLayout.getTopInset();
                }
                if (checkFlag(scrollFlags, 2)) {
                    iE += ViewCompat.E(childAt);
                } else if (checkFlag(scrollFlags, 5)) {
                    int iE2 = ViewCompat.E(childAt) + iE;
                    if (topBottomOffsetForScrollingSibling < iE2) {
                        i10 = iE2;
                    } else {
                        iE = iE2;
                    }
                }
                if (topBottomOffsetForScrollingSibling < (iE + i10) / 2) {
                    i10 = iE;
                }
                animateOffsetTo(coordinatorLayout, nVAppBarLayout, clamp(i10, -nVAppBarLayout.getTotalScrollRange(), 0), 0.0f);
            }
        }
    }

    private void updateAppBarLayoutDrawableState(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10, int i11, boolean z6) {
        View appBarChildOnOffset = getAppBarChildOnOffset(nVAppBarLayout, i10);
        if (appBarChildOnOffset != null) {
            int scrollFlags = ((NVAppBarLayout.LayoutParams) appBarChildOnOffset.getLayoutParams()).getScrollFlags();
            boolean z10 = false;
            if ((scrollFlags & 1) != 0) {
                int iE = ViewCompat.E(appBarChildOnOffset);
                if (i11 <= 0 || (scrollFlags & 12) == 0 ? !((scrollFlags & 2) == 0 || (-i10) < (appBarChildOnOffset.getBottom() - iE) - nVAppBarLayout.getTopInset()) : (-i10) >= (appBarChildOnOffset.getBottom() - iE) - nVAppBarLayout.getTopInset()) {
                    z10 = true;
                }
            }
            boolean collapsedState = nVAppBarLayout.setCollapsedState(z10);
            if (z6 || (collapsedState && shouldJumpElevationState(coordinatorLayout, nVAppBarLayout))) {
                nVAppBarLayout.jumpDrawablesToCurrentState();
            }
        }
    }

    private int updateSpringByScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10, int i11) {
        if (nVAppBarLayout.getHeight() >= this.mPreHeadHeight && i10 == 1) {
            if (this.mFlingAnimator == null) {
                animateFlingSpring(coordinatorLayout, nVAppBarLayout, i11);
            }
            return i11;
        }
        updateSpringOffsetByscroll(coordinatorLayout, nVAppBarLayout, this.mOffsetSpring + (i11 / 3));
        return getTopBottomOffsetForScrollingSibling() - i11;
    }

    protected int getHeaderExpandedHeight(NVAppBarLayout nVAppBarLayout) {
        int childCount = nVAppBarLayout.getChildCount();
        int measuredHeight = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = nVAppBarLayout.getChildAt(i10);
            NVAppBarLayout.LayoutParams layoutParams = (NVAppBarLayout.LayoutParams) childAt.getLayoutParams();
            measuredHeight += childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
        }
        return Math.max(0, measuredHeight);
    }

    @Override // com.narvii.nested.NVAppBarLayout.Behavior, com.narvii.nested.behavior.HeaderBehavior
    public int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset() + this.mOffsetDelta;
    }

    int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10, int i11, int i12, int i13) {
        int i14;
        int topBottomOffsetForScrollingSibling;
        int topBottomOffsetForScrollingSibling2 = getTopBottomOffsetForScrollingSibling();
        int i15 = this.mOffsetSpring;
        if (i15 == 0 || i10 >= 0) {
            i14 = i10;
            topBottomOffsetForScrollingSibling = 0;
        } else {
            int i16 = i15 + i10;
            if (i16 < 0) {
                i14 = i16;
                i16 = 0;
            } else {
                i14 = i10;
            }
            updateSpringOffsetByscroll(coordinatorLayout, nVAppBarLayout, i16);
            topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling() - i10;
            if (i16 >= 0) {
                return topBottomOffsetForScrollingSibling;
            }
        }
        if (this.mOffsetSpring > 0 && nVAppBarLayout.getHeight() >= this.mPreHeadHeight && i14 > 0) {
            return updateSpringByScroll(coordinatorLayout, nVAppBarLayout, i13, i10);
        }
        if (i11 == 0 || topBottomOffsetForScrollingSibling2 < i11 || topBottomOffsetForScrollingSibling2 > i12) {
            this.mOffsetDelta = 0;
            return topBottomOffsetForScrollingSibling;
        }
        int iClamp = clamp(i14, i11, i12);
        if (topBottomOffsetForScrollingSibling2 == iClamp) {
            return topBottomOffsetForScrollingSibling2 != i11 ? updateSpringByScroll(coordinatorLayout, nVAppBarLayout, i13, i10) : topBottomOffsetForScrollingSibling;
        }
        int iInterpolateOffset = nVAppBarLayout.hasChildWithInterpolator() ? interpolateOffset(nVAppBarLayout, iClamp) : iClamp;
        boolean topAndBottomOffset = setTopAndBottomOffset(iInterpolateOffset);
        int i17 = topBottomOffsetForScrollingSibling2 - iClamp;
        this.mOffsetDelta = iClamp - iInterpolateOffset;
        if (!topAndBottomOffset && nVAppBarLayout.hasChildWithInterpolator()) {
            coordinatorLayout.dispatchDependentViewsChanged(nVAppBarLayout);
        }
        nVAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
        updateAppBarLayoutDrawableState(coordinatorLayout, nVAppBarLayout, iClamp, iClamp < topBottomOffsetForScrollingSibling2 ? -1 : 1, false);
        return i17;
    }
}
