package com.narvii.nested;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.narvii.lib.R;
import com.narvii.nested.behavior.HeaderBehavior;
import com.narvii.nested.behavior.HeaderScrollingViewBehavior;
import com.narvii.nested.utils.AnimationUtils;
import com.narvii.nested.utils.ViewUtilsLollipop;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class NVAppBarLayout extends LinearLayout {
    private static final int INVALID_SCROLL_RANGE = -1;
    static final int PENDING_ACTION_ANIMATE_ENABLED = 4;
    static final int PENDING_ACTION_COLLAPSED = 2;
    static final int PENDING_ACTION_EXPANDED = 1;
    static final int PENDING_ACTION_FORCE = 8;
    static final int PENDING_ACTION_NONE = 0;
    EventDispatcher<CollapseStatusChangeListener> collapseEventDispatcher;
    private boolean mCollapsed;
    private boolean mCollapsible;
    private int mDownPreScrollRange;
    private int mDownScrollRange;
    private boolean mHaveChildWithInterpolator;
    private WindowInsetsCompat mLastInsets;
    private List<OnOffsetChangedListener> mListeners;
    private int mPendingAction;
    private int[] mTmpStatesArray;
    private int mTotalScrollRange;

    public static class Behavior extends HeaderBehavior<NVAppBarLayout> {
        private static final int INVALID_POSITION = -1;
        private static final int MAX_OFFSET_ANIMATION_DURATION = 600;
        private WeakReference<View> mLastNestedScrollingChildRef;
        private ValueAnimator mOffsetAnimator;
        private int mOffsetDelta;
        private int mOffsetToChildIndexOnLayout;
        private boolean mOffsetToChildIndexOnLayoutIsMinHeight;
        private float mOffsetToChildIndexOnLayoutPerc;
        private DragCallback mOnDragCallback;

        public static abstract class DragCallback {
            public abstract boolean canDrag(@NonNull NVAppBarLayout nVAppBarLayout);
        }

        public Behavior() {
            this.mOffsetToChildIndexOnLayout = -1;
        }

        private static boolean checkFlag(int i10, int i11) {
            return (i10 & i11) == i11;
        }

        private void stopNestedScrollIfNeeded(int i10, NVAppBarLayout nVAppBarLayout, View view, int i11) {
            if (i11 == 1) {
                int topAndBottomOffset = getTopAndBottomOffset();
                if ((i10 >= 0 || topAndBottomOffset != 0) && (i10 <= 0 || topAndBottomOffset != (-nVAppBarLayout.getTotalScrollRange()))) {
                    return;
                }
                ViewCompat.f1(view, 1);
            }
        }

        public void setDragCallback(@Nullable DragCallback dragCallback) {
            this.mOnDragCallback = dragCallback;
        }

        protected static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.narvii.nested.NVAppBarLayout.Behavior.SavedState.1
                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int i10) {
                    return new SavedState[i10];
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel, null);
                }
            };
            boolean firstVisibleChildAtMinimumHeight;
            int firstVisibleChildIndex;
            float firstVisibleChildPercentageShown;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                this.firstVisibleChildAtMinimumHeight = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i10) {
                super.writeToParcel(parcel, i10);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                parcel.writeByte(this.firstVisibleChildAtMinimumHeight ? (byte) 1 : (byte) 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mOffsetToChildIndexOnLayout = -1;
        }

        @Override // com.narvii.nested.behavior.HeaderBehavior
        public boolean canDragView(NVAppBarLayout nVAppBarLayout) {
            DragCallback dragCallback = this.mOnDragCallback;
            if (dragCallback != null) {
                return dragCallback.canDrag(nVAppBarLayout);
            }
            WeakReference<View> weakReference = this.mLastNestedScrollingChildRef;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        @Override // com.narvii.nested.behavior.HeaderBehavior
        public int getMaxDragOffset(NVAppBarLayout nVAppBarLayout) {
            return -nVAppBarLayout.getDownNestedScrollRange();
        }

        @Override // com.narvii.nested.behavior.HeaderBehavior
        public int getScrollRangeForDragFling(NVAppBarLayout nVAppBarLayout) {
            return nVAppBarLayout.getTotalScrollRange();
        }

        @VisibleForTesting
        boolean isOffsetAnimatorRunning() {
            ValueAnimator valueAnimator = this.mOffsetAnimator;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        @Override // com.narvii.nested.behavior.HeaderBehavior
        public void onFlingFinished(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout) {
            snapToChildIfNeeded(coordinatorLayout, nVAppBarLayout);
        }

        @Override // com.narvii.nested.behavior.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10) {
            boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, nVAppBarLayout, i10);
            int pendingAction = nVAppBarLayout.getPendingAction();
            int i11 = this.mOffsetToChildIndexOnLayout;
            if (i11 >= 0 && (pendingAction & 8) == 0) {
                View childAt = nVAppBarLayout.getChildAt(i11);
                setHeaderTopBottomOffset(coordinatorLayout, nVAppBarLayout, (-childAt.getBottom()) + (this.mOffsetToChildIndexOnLayoutIsMinHeight ? ViewCompat.E(childAt) + nVAppBarLayout.getTopInset() : Math.round(childAt.getHeight() * this.mOffsetToChildIndexOnLayoutPerc)));
            } else if (pendingAction != 0) {
                boolean z6 = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i12 = -nVAppBarLayout.getUpNestedPreScrollRange();
                    if (z6) {
                        animateOffsetTo(coordinatorLayout, nVAppBarLayout, i12, 0.0f);
                    } else {
                        setHeaderTopBottomOffset(coordinatorLayout, nVAppBarLayout, i12);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z6) {
                        animateOffsetTo(coordinatorLayout, nVAppBarLayout, 0, 0.0f);
                    } else {
                        setHeaderTopBottomOffset(coordinatorLayout, nVAppBarLayout, 0);
                    }
                }
            }
            nVAppBarLayout.resetPendingAction();
            this.mOffsetToChildIndexOnLayout = -1;
            setTopAndBottomOffset(MathUtils.b(getTopAndBottomOffset(), -nVAppBarLayout.getTotalScrollRange(), 0));
            updateAppBarLayoutDrawableState(coordinatorLayout, nVAppBarLayout, getTopAndBottomOffset(), 0, true);
            nVAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
            return zOnLayoutChild;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10, int i11, int i12, int i13) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) nVAppBarLayout.getLayoutParams())).height != -2) {
                return super.onMeasureChild(coordinatorLayout, nVAppBarLayout, i10, i11, i12, i13);
            }
            coordinatorLayout.onMeasureChild(nVAppBarLayout, i10, i11, View.MeasureSpec.makeMeasureSpec(0, 0), i13);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, View view, int i10, int i11, int[] iArr, int i12) {
            int i13;
            int downNestedPreScrollRange;
            if (i11 != 0) {
                if (i11 < 0) {
                    i13 = -nVAppBarLayout.getTotalScrollRange();
                    downNestedPreScrollRange = nVAppBarLayout.getDownNestedPreScrollRange() + i13;
                } else {
                    i13 = -nVAppBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                int i14 = i13;
                int i15 = downNestedPreScrollRange;
                if (i14 != i15) {
                    iArr[1] = scroll(coordinatorLayout, nVAppBarLayout, i11, i14, i15);
                }
            }
            stopNestedScrollIfNeeded(i11, nVAppBarLayout, view, i12);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, View view, int i10, int i11, int i12, int i13, int i14) {
            if (i13 < 0) {
                scroll(coordinatorLayout, nVAppBarLayout, i13, -nVAppBarLayout.getDownNestedScrollRange(), 0);
            }
            stopNestedScrollIfNeeded(i13, nVAppBarLayout, view, i14);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, Parcelable parcelable) {
            if (!(parcelable instanceof SavedState)) {
                super.onRestoreInstanceState(coordinatorLayout, nVAppBarLayout, parcelable);
                this.mOffsetToChildIndexOnLayout = -1;
                return;
            }
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(coordinatorLayout, nVAppBarLayout, savedState.getSuperState());
            this.mOffsetToChildIndexOnLayout = savedState.firstVisibleChildIndex;
            this.mOffsetToChildIndexOnLayoutPerc = savedState.firstVisibleChildPercentageShown;
            this.mOffsetToChildIndexOnLayoutIsMinHeight = savedState.firstVisibleChildAtMinimumHeight;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout) {
            Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, nVAppBarLayout);
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = nVAppBarLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = nVAppBarLayout.getChildAt(i10);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
                    savedState.firstVisibleChildIndex = i10;
                    savedState.firstVisibleChildAtMinimumHeight = bottom == ViewCompat.E(childAt) + nVAppBarLayout.getTopInset();
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return parcelableOnSaveInstanceState;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, View view, View view2, int i10, int i11) {
            ValueAnimator valueAnimator;
            boolean z6 = (i10 & 2) != 0 && nVAppBarLayout.hasScrollableChildren() && coordinatorLayout.getHeight() - view.getHeight() <= nVAppBarLayout.getHeight();
            if (z6 && (valueAnimator = this.mOffsetAnimator) != null) {
                valueAnimator.cancel();
            }
            this.mLastNestedScrollingChildRef = null;
            return z6;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, View view, int i10) {
            if (i10 == 0) {
                snapToChildIfNeeded(coordinatorLayout, nVAppBarLayout);
            }
            this.mLastNestedScrollingChildRef = new WeakReference<>(view);
        }

        @Override // com.narvii.nested.behavior.HeaderBehavior
        public int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10, int i11, int i12) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int i13 = 0;
            if (i11 == 0 || topBottomOffsetForScrollingSibling < i11 || topBottomOffsetForScrollingSibling > i12) {
                this.mOffsetDelta = 0;
            } else {
                int iB = MathUtils.b(i10, i11, i12);
                if (topBottomOffsetForScrollingSibling != iB) {
                    int iInterpolateOffset = nVAppBarLayout.hasChildWithInterpolator() ? interpolateOffset(nVAppBarLayout, iB) : iB;
                    boolean topAndBottomOffset = setTopAndBottomOffset(iInterpolateOffset);
                    i13 = topBottomOffsetForScrollingSibling - iB;
                    this.mOffsetDelta = iB - iInterpolateOffset;
                    if (!topAndBottomOffset && nVAppBarLayout.hasChildWithInterpolator()) {
                        coordinatorLayout.dispatchDependentViewsChanged(nVAppBarLayout);
                    }
                    nVAppBarLayout.dispatchOffsetUpdates(getTopAndBottomOffset());
                    updateAppBarLayoutDrawableState(coordinatorLayout, nVAppBarLayout, iB, iB < topBottomOffsetForScrollingSibling ? -1 : 1, false);
                }
            }
            return i13;
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
                this.mOffsetAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.nested.NVAppBarLayout.Behavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator4) {
                        Behavior.this.setHeaderTopBottomOffset(coordinatorLayout, nVAppBarLayout, ((Integer) valueAnimator4.getAnimatedValue()).intValue());
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
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
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
                if (behaviorF instanceof ScrollingViewBehavior) {
                    if (((ScrollingViewBehavior) behaviorF).getOverlayTop() == 0) {
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
                int scrollFlags = ((LayoutParams) childAt.getLayoutParams()).getScrollFlags();
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
                    animateOffsetTo(coordinatorLayout, nVAppBarLayout, MathUtils.b(i10, -nVAppBarLayout.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private void updateAppBarLayoutDrawableState(CoordinatorLayout coordinatorLayout, NVAppBarLayout nVAppBarLayout, int i10, int i11, boolean z6) {
            View appBarChildOnOffset = getAppBarChildOnOffset(nVAppBarLayout, i10);
            if (appBarChildOnOffset != null) {
                int scrollFlags = ((LayoutParams) appBarChildOnOffset.getLayoutParams()).getScrollFlags();
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

        @Override // com.narvii.nested.behavior.HeaderBehavior
        public int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.mOffsetDelta;
        }
    }

    public interface CollapseStatusChangeListener {
        void onCollapseStatusChanged(boolean z6);
    }

    public interface OnOffsetChangedListener {
        void onOffsetChanged(NVAppBarLayout nVAppBarLayout, int i10);
    }

    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        @Override // com.narvii.nested.behavior.HeaderScrollingViewBehavior
        public /* bridge */ /* synthetic */ View findFirstDependency(List list) {
            return findFirstDependency((List<View>) list);
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            setOverlayTop(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // com.narvii.nested.behavior.HeaderScrollingViewBehavior
        public NVAppBarLayout findFirstDependency(List<View> list) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = list.get(i10);
                if (view instanceof NVAppBarLayout) {
                    return (NVAppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.narvii.nested.behavior.HeaderScrollingViewBehavior
        public float getOverlapRatioForOffset(View view) {
            int i10;
            if (view instanceof NVAppBarLayout) {
                NVAppBarLayout nVAppBarLayout = (NVAppBarLayout) view;
                int totalScrollRange = nVAppBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = nVAppBarLayout.getDownNestedPreScrollRange();
                int appBarLayoutOffset = getAppBarLayoutOffset(nVAppBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + appBarLayoutOffset > downNestedPreScrollRange) && (i10 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (appBarLayoutOffset / i10) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.narvii.nested.behavior.HeaderScrollingViewBehavior
        public int getScrollRange(View view) {
            return view instanceof NVAppBarLayout ? ((NVAppBarLayout) view).getTotalScrollRange() : super.getScrollRange(view);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof NVAppBarLayout;
        }

        private static int getAppBarLayoutOffset(NVAppBarLayout nVAppBarLayout) {
            CoordinatorLayout.Behavior behaviorF = ((CoordinatorLayout.LayoutParams) nVAppBarLayout.getLayoutParams()).f();
            if (behaviorF instanceof Behavior) {
                return ((Behavior) behaviorF).getTopBottomOffsetForScrollingSibling();
            }
            return 0;
        }

        private void offsetChildAsNeeded(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.Behavior behaviorF = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).f();
            if (behaviorF instanceof Behavior) {
                ViewCompat.e0(view, (((view2.getBottom() - view.getTop()) + ((Behavior) behaviorF).mOffsetDelta) + getVerticalLayoutGap()) - getOverlapPixelsForOffset(view2));
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            offsetChildAsNeeded(coordinatorLayout, view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z6) {
            NVAppBarLayout nVAppBarLayoutFindFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
            if (nVAppBarLayoutFindFirstDependency != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.mTempRect1;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    nVAppBarLayoutFindFirstDependency.setExpanded(false, !z6);
                    return true;
                }
            }
            return false;
        }
    }

    public NVAppBarLayout(Context context) {
        this(context, null);
    }

    private void invalidateScrollRanges() {
        this.mTotalScrollRange = -1;
        this.mDownPreScrollRange = -1;
        this.mDownScrollRange = -1;
    }

    int getPendingAction() {
        return this.mPendingAction;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public boolean hasChildWithInterpolator() {
        return this.mHaveChildWithInterpolator;
    }

    void resetPendingAction() {
        this.mPendingAction = 0;
    }

    public void setExpanded(boolean z6) {
        setExpanded(z6, ViewCompat.X(this));
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i10) {
        if (i10 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i10);
    }

    public NVAppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTotalScrollRange = -1;
        this.mDownPreScrollRange = -1;
        this.mDownScrollRange = -1;
        this.mPendingAction = 0;
        this.collapseEventDispatcher = new EventDispatcher<>();
        setOrientation(1);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVAppBarLayout);
        ViewCompat.y0(this, typedArrayObtainStyledAttributes.getDrawable(R.styleable.NVAppBarLayout_android_background));
        int i10 = R.styleable.NVAppBarLayout_expanded;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            setExpanded(typedArrayObtainStyledAttributes.getBoolean(i10, true), false, false);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            int i11 = R.styleable.NVAppBarLayout_android_keyboardNavigationCluster;
            if (typedArrayObtainStyledAttributes.hasValue(i11)) {
                setKeyboardNavigationCluster(typedArrayObtainStyledAttributes.getBoolean(i11, false));
            }
            int i12 = R.styleable.NVAppBarLayout_android_touchscreenBlocksFocus;
            if (typedArrayObtainStyledAttributes.hasValue(i12)) {
                setTouchscreenBlocksFocus(typedArrayObtainStyledAttributes.getBoolean(i12, false));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        ViewCompat.L0(this, new OnApplyWindowInsetsListener() { // from class: com.narvii.nested.h
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f2542a.lambda$new$0(view, windowInsetsCompat);
            }
        });
    }

    private boolean setCollapsibleState(boolean z6) {
        if (this.mCollapsible == z6) {
            return false;
        }
        this.mCollapsible = z6;
        refreshDrawableState();
        return true;
    }

    public void addCollapseListener(CollapseStatusChangeListener collapseStatusChangeListener) {
        this.collapseEventDispatcher.addListener(collapseStatusChangeListener);
    }

    public void addOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList();
        }
        if (onOffsetChangedListener == null || this.mListeners.contains(onOffsetChangedListener)) {
            return;
        }
        this.mListeners.add(onOffsetChangedListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void dispatchOffsetUpdates(int i10) {
        List<OnOffsetChangedListener> list = this.mListeners;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                OnOffsetChangedListener onOffsetChangedListener = this.mListeners.get(i11);
                if (onOffsetChangedListener != null) {
                    onOffsetChangedListener.onOffsetChanged(this, i10);
                }
            }
        }
    }

    int getDownNestedPreScrollRange() {
        int i10 = this.mDownPreScrollRange;
        if (i10 != -1) {
            return i10;
        }
        int iE = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i11 = layoutParams.mScrollFlags;
            if ((i11 & 5) != 5) {
                if (iE > 0) {
                    break;
                }
            } else {
                int i12 = iE + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                iE = (i11 & 8) != 0 ? i12 + ViewCompat.E(childAt) : i12 + (measuredHeight - ((i11 & 2) != 0 ? ViewCompat.E(childAt) : getTopInset()));
            }
        }
        int iMax = Math.max(0, iE);
        this.mDownPreScrollRange = iMax;
        return iMax;
    }

    public int getDownNestedScrollRange() {
        int i10 = this.mDownScrollRange;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int iE = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            int i12 = layoutParams.mScrollFlags;
            if ((i12 & 1) == 0) {
                break;
            }
            iE += measuredHeight;
            if ((i12 & 2) != 0) {
                iE -= ViewCompat.E(childAt) + getTopInset();
                break;
            }
        }
        int iMax = Math.max(0, iE);
        this.mDownScrollRange = iMax;
        return iMax;
    }

    public final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.mLastInsets;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.m();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i10 = this.mTotalScrollRange;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int iE = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i12 = layoutParams.mScrollFlags;
            if ((i12 & 1) == 0) {
                break;
            }
            iE += measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            if ((i12 & 2) != 0) {
                iE -= ViewCompat.E(childAt);
                break;
            }
        }
        int iMax = Math.max(0, iE - getTopInset());
        this.mTotalScrollRange = iMax;
        return iMax;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        if (this.mTmpStatesArray == null) {
            this.mTmpStatesArray = new int[2];
        }
        int[] iArr = this.mTmpStatesArray;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + iArr.length);
        boolean z6 = this.mCollapsible;
        int i11 = R.attr.state_collapsible;
        if (!z6) {
            i11 = -i11;
        }
        iArr[0] = i11;
        iArr[1] = (z6 && this.mCollapsed) ? R.attr.state_collapsed : -R.attr.state_collapsed;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    public void removeCollapseListener(CollapseStatusChangeListener collapseStatusChangeListener) {
        this.collapseEventDispatcher.removeListener(collapseStatusChangeListener);
    }

    public void removeOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        List<OnOffsetChangedListener> list = this.mListeners;
        if (list == null || onOffsetChangedListener == null) {
            return;
        }
        list.remove(onOffsetChangedListener);
    }

    public boolean setCollapsedState(final boolean z6) {
        if (this.mCollapsed == z6) {
            return false;
        }
        this.mCollapsed = z6;
        refreshDrawableState();
        this.collapseEventDispatcher.dispatch(new Callback() { // from class: com.narvii.nested.g
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ((NVAppBarLayout.CollapseStatusChangeListener) obj).onCollapseStatusChanged(z6);
            }
        });
        return true;
    }

    public void setExpanded(boolean z6, boolean z10) {
        setExpanded(z6, z10, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsetsCompat lambda$new$0(View view, WindowInsetsCompat windowInsetsCompat) {
        return onWindowInsetChanged(windowInsetsCompat);
    }

    private void setExpanded(boolean z6, boolean z10, boolean z11) {
        this.mPendingAction = (z6 ? 1 : 2) | (z10 ? 4 : 0) | (z11 ? 8 : 0);
        requestLayout();
    }

    private void updateCollapsible() {
        int childCount = getChildCount();
        boolean z6 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((LayoutParams) getChildAt(i10).getLayoutParams()).isCollapsible()) {
                z6 = true;
                break;
            }
        }
        setCollapsibleState(z6);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int iE = ViewCompat.E(this);
        if (iE == 0) {
            int childCount = getChildCount();
            if (childCount >= 1) {
                iE = ViewCompat.E(getChildAt(childCount - 1));
            } else {
                iE = 0;
            }
            if (iE == 0) {
                return getHeight() / 3;
            }
        }
        return (iE * 2) + topInset;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    boolean hasScrollableChildren() {
        if (getTotalScrollRange() != 0) {
            return true;
        }
        return false;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        invalidateScrollRanges();
        this.mHaveChildWithInterpolator = false;
        int childCount = getChildCount();
        for (int i14 = 0; i14 < childCount; i14++) {
            if (((LayoutParams) getChildAt(i14).getLayoutParams()).getScrollInterpolator() != null) {
                this.mHaveChildWithInterpolator = true;
                break;
            }
        }
        updateCollapsible();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        invalidateScrollRanges();
    }

    WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2;
        if (ViewCompat.A(this)) {
            windowInsetsCompat2 = windowInsetsCompat;
        } else {
            windowInsetsCompat2 = null;
        }
        if (!ObjectsCompat.a(this.mLastInsets, windowInsetsCompat2)) {
            this.mLastInsets = windowInsetsCompat2;
            invalidateScrollRanges();
        }
        return windowInsetsCompat;
    }

    @Deprecated
    public void setTargetElevation(float f) {
        ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator(this, f);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        public static final int COLLAPSIBLE_FLAGS = 10;
        public static final int FLAG_QUICK_RETURN = 5;
        public static final int FLAG_SNAP = 17;
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_SCROLL = 1;
        public static final int SCROLL_FLAG_SNAP = 16;
        int mScrollFlags;
        Interpolator mScrollInterpolator;

        @Retention(RetentionPolicy.SOURCE)
        public @interface ScrollFlags {
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mScrollFlags = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVAppBarLayout);
            this.mScrollFlags = typedArrayObtainStyledAttributes.getInt(R.styleable.NVAppBarLayout_layout_nvscrollFlags, 1);
            int i10 = R.styleable.NVAppBarLayout_layout_scrollInterpolator;
            if (typedArrayObtainStyledAttributes.hasValue(i10)) {
                this.mScrollInterpolator = android.view.animation.AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(i10, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public int getScrollFlags() {
            return this.mScrollFlags;
        }

        public Interpolator getScrollInterpolator() {
            return this.mScrollInterpolator;
        }

        boolean isCollapsible() {
            int i10 = this.mScrollFlags;
            return (i10 & 1) == 1 && (i10 & 10) != 0;
        }

        public void setScrollFlags(int i10) {
            this.mScrollFlags = i10;
        }

        public void setScrollInterpolator(Interpolator interpolator) {
            this.mScrollInterpolator = interpolator;
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.mScrollFlags = 1;
        }

        public LayoutParams(int i10, int i11, float f) {
            super(i10, i11, f);
            this.mScrollFlags = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mScrollFlags = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mScrollFlags = 1;
        }

        @RequiresApi
        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.mScrollFlags = 1;
        }

        @RequiresApi
        public LayoutParams(LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.mScrollFlags = 1;
            this.mScrollFlags = layoutParams.mScrollFlags;
            this.mScrollInterpolator = layoutParams.mScrollInterpolator;
        }
    }
}
