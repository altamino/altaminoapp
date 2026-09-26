package com.narvii.widget.headercollapse;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.annotation.IdRes;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HeaderCollapsibleLayout extends LinearLayout implements NestedScrollingParent, NestedScrollingChild, ViewTreeObserver.OnGlobalLayoutListener {
    public static final int COLLAPSED = 2;
    public static final int COLLAPSING = 1;
    public static final int EXPANDED = 4;
    public static final int EXPANDING = 3;
    private Animator headerHeightAnimator;
    private boolean isFirstLayout;
    private int lastHeaderHeight;
    private float lastVelocityY;
    private int mAbsorbHeaderThreshold;
    private boolean mAutoDrawerModeEnabled;
    private ViewGroup mBottomView;
    private Animator mBounceBackForOvershooting;
    private NestedScrollingChildHelper mChildHelper;
    private Context mContext;
    protected int mCurHeaderStatus;
    private boolean mDefaultExpand;
    private List<OnHeaderStatusChangedListener> mHeaderStatusChangedListeners;
    protected boolean mIsBeingDragged;
    protected boolean mIsEnabled;
    protected boolean mIsScrollingDown;
    private int mOrgHeaderHeight;
    private int mOrgHeaderHeightBackup;
    private int mOvershootDistance;
    private NestedScrollingParentHelper mParentHelper;
    private int mStickyFooterHeight;
    private int mStickyFooterLayoutId;
    private boolean mSupportFlingAction;
    private ViewGroup mTopView;
    private OnViewFinishInflateListener mViewFinishInflateListener;
    protected boolean needAutoExpand;
    private Runnable pendingHeaderInvalidateAction;
    private boolean skipLayout;
    private int unconsumedDy;
    private HashMap<View, Boolean> viewVisibleMap;

    @Retention(RetentionPolicy.SOURCE)
    public @interface HeaderStatus {
    }

    public interface OnViewFinishInflateListener {
        void onViewFinishInflate();
    }

    public HeaderCollapsibleLayout(Context context) {
        super(context);
        this.mOrgHeaderHeight = -1;
        this.mOrgHeaderHeightBackup = -1;
        this.mStickyFooterLayoutId = -1;
        this.mStickyFooterHeight = 0;
        this.mAutoDrawerModeEnabled = true;
        this.mDefaultExpand = true;
        this.mIsEnabled = true;
        this.isFirstLayout = true;
        this.needAutoExpand = true;
        this.lastVelocityY = -0.1f;
        init(context, null);
    }

    private void initBottomView(int i10, ViewGroup viewGroup) {
        if (i10 == -1) {
            return;
        }
        this.mBottomView = (ViewGroup) LayoutInflater.from(this.mContext).inflate(i10, viewGroup, false);
    }

    private void initTopView(int i10, ViewGroup viewGroup) {
        if (i10 == -1) {
            return;
        }
        this.mTopView = (ViewGroup) LayoutInflater.from(this.mContext).inflate(i10, viewGroup, false);
    }

    private boolean isReachedEdge(int i10) {
        if (i10 > 0) {
            return i10 > this.mTopView.getHeight() - this.mStickyFooterHeight;
        }
        return Math.abs(i10) > (this.mOrgHeaderHeight + this.mOvershootDistance) - this.mTopView.getHeight();
    }

    private boolean shouldConsumeNestedScroll(int i10) {
        if (i10 > 0) {
            return this.mTopView.getHeight() > this.mStickyFooterHeight;
        }
        return this.mTopView.getHeight() < this.mOrgHeaderHeight + this.mOvershootDistance;
    }

    private Animator smoothChangeHeaderHeightTo(int i10, Animator.AnimatorListener animatorListener) {
        return smoothChangeHeaderHeightTo(i10, 300L, animatorListener);
    }

    public void disableCollapsing() {
        int i10 = this.mOrgHeaderHeight;
        if (i10 != 0) {
            this.mOrgHeaderHeightBackup = i10;
            this.mOrgHeaderHeight = 0;
        }
        this.mIsEnabled = false;
    }

    public void enableCollapsing() {
        this.mOrgHeaderHeight = this.mOrgHeaderHeightBackup;
        this.mIsEnabled = true;
    }

    public ViewGroup getBottomView() {
        return this.mBottomView;
    }

    public int getCurrentHeaderStatus() {
        return this.mCurHeaderStatus;
    }

    public View getTopView() {
        return this.mTopView;
    }

    public void invalidateHeader(View view, boolean z6) {
        if (this.viewVisibleMap == null) {
            this.viewVisibleMap = new HashMap<>(1);
        }
        this.viewVisibleMap.clear();
        this.viewVisibleMap.put(view, Boolean.valueOf(z6));
        invalidateHeader(this.viewVisibleMap, false);
    }

    @Override // android.view.View
    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    protected void onFirstLayout() {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f6, boolean z6) {
        return !z6;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return (i10 & 2) != 0;
    }

    public void removeOnViewFinishInflateListener() {
        this.mViewFinishInflateListener = null;
    }

    public void reset() {
        onHeaderStatusChanged(2);
    }

    public void setOnViewFinishInflateListener(OnViewFinishInflateListener onViewFinishInflateListener) {
        this.mViewFinishInflateListener = onViewFinishInflateListener;
    }

    private void changeHeaderHeightTo(int i10) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mTopView.getLayoutParams();
        layoutParams.height = i10;
        this.mTopView.setLayoutParams(layoutParams);
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.mContext = context;
        setOrientation(1);
        initStyleable(context, attributeSet);
        this.mCurHeaderStatus = this.mDefaultExpand ? 4 : 2;
        this.mParentHelper = new NestedScrollingParentHelper(this);
        this.mChildHelper = new NestedScrollingChildHelper(this);
        this.mAbsorbHeaderThreshold = ViewConfiguration.get(context).getScaledTouchSlop();
        setNestedScrollingEnabled(true);
    }

    private void initStyleable(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.HeaderCollapsibleLayout, 0, 0);
        int i10 = R.styleable.HeaderCollapsibleLayout_topPanelLayoutId;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            initTopView(typedArrayObtainStyledAttributes.getResourceId(i10, -1), this);
        }
        int i11 = R.styleable.HeaderCollapsibleLayout_bottomPanelLayoutId;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            initBottomView(typedArrayObtainStyledAttributes.getResourceId(i11, -1), this);
        }
        int i12 = R.styleable.HeaderCollapsibleLayout_stickyFooterLayoutId;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            this.mStickyFooterLayoutId = typedArrayObtainStyledAttributes.getResourceId(i12, -1);
        }
        this.mSupportFlingAction = typedArrayObtainStyledAttributes.getBoolean(R.styleable.HeaderCollapsibleLayout_supportFlingAction, true);
        int i13 = R.styleable.HeaderCollapsibleLayout_autoDrawerModeEnabled;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            this.mAutoDrawerModeEnabled = typedArrayObtainStyledAttributes.getBoolean(i13, true);
        }
        int i14 = R.styleable.HeaderCollapsibleLayout_defaultExpand;
        if (typedArrayObtainStyledAttributes.hasValue(i14)) {
            this.mDefaultExpand = typedArrayObtainStyledAttributes.getBoolean(i14, true);
        }
        int i15 = R.styleable.HeaderCollapsibleLayout_overshootDistance;
        if (typedArrayObtainStyledAttributes.hasValue(i15)) {
            this.mOvershootDistance = typedArrayObtainStyledAttributes.getInteger(i15, 0);
        }
        ViewGroup viewGroup = this.mTopView;
        if (viewGroup != null) {
            addView(viewGroup);
        }
        ViewGroup viewGroup2 = this.mBottomView;
        if (viewGroup2 != null) {
            addView(viewGroup2);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void innerInvalidateHeader() {
        Animator animator = this.headerHeightAnimator;
        if (animator != null) {
            animator.cancel();
        }
        this.mOrgHeaderHeight = -1;
        ViewGroup viewGroup = this.mTopView;
        if (viewGroup != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewGroup.getLayoutParams();
            layoutParams.height = -2;
            this.mTopView.setLayoutParams(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void innerSmoothExpand() {
        smoothChangeHeaderHeightTo(this.mOrgHeaderHeight, new Animator.AnimatorListener() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.5
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HeaderCollapsibleLayout.this.onHeaderStatusChanged(4);
                if (HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners != null) {
                    Iterator it = HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners.iterator();
                    while (it.hasNext()) {
                        ((OnHeaderStatusChangedListener) it.next()).onHeaderExpanded();
                    }
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                HeaderCollapsibleLayout.this.onHeaderStatusChanged(3);
                if (HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners != null) {
                    Iterator it = HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners.iterator();
                    while (it.hasNext()) {
                        ((OnHeaderStatusChangedListener) it.next()).onHeaderStartExpanding();
                    }
                }
            }
        });
        this.lastVelocityY = -0.1f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runPendingHeaderInvalidate() {
        Runnable runnable = this.pendingHeaderInvalidateAction;
        if (runnable != null) {
            Utils.post(runnable);
        }
    }

    private Animator smoothChangeHeaderHeightTo(int i10, long j6, Animator.AnimatorListener animatorListener) {
        if (i10 < 0) {
            return null;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.mTopView.getLayoutParams());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.mTopView.getLayoutParams());
        layoutParams2.height = i10;
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new TypeEvaluator<LinearLayout.LayoutParams>() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.6
            @Override // android.animation.TypeEvaluator
            public LinearLayout.LayoutParams evaluate(float f, LinearLayout.LayoutParams layoutParams3, LinearLayout.LayoutParams layoutParams4) {
                LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) HeaderCollapsibleLayout.this.mTopView.getLayoutParams();
                HeaderCollapsibleLayout headerCollapsibleLayout = HeaderCollapsibleLayout.this;
                headerCollapsibleLayout.lastHeaderHeight = headerCollapsibleLayout.mTopView.getHeight();
                int i11 = layoutParams3.height;
                layoutParams5.height = (int) (i11 + ((layoutParams4.height - i11) * f));
                return layoutParams5;
            }
        }, layoutParams, layoutParams2);
        valueAnimatorOfObject.setDuration(j6);
        valueAnimatorOfObject.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) valueAnimator.getAnimatedValue();
                if (HeaderCollapsibleLayout.this.mTopView != null) {
                    HeaderCollapsibleLayout.this.mTopView.setLayoutParams(layoutParams3);
                }
                if (HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners != null) {
                    Iterator it = HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners.iterator();
                    while (it.hasNext()) {
                        ((OnHeaderStatusChangedListener) it.next()).onHeaderOffsetChanged(HeaderCollapsibleLayout.this.mOrgHeaderHeight - layoutParams3.height, HeaderCollapsibleLayout.this.mOrgHeaderHeight, ((HeaderCollapsibleLayout.this.mOrgHeaderHeight - layoutParams3.height) * 1.0f) / (HeaderCollapsibleLayout.this.mOrgHeaderHeight - HeaderCollapsibleLayout.this.mStickyFooterHeight), HeaderCollapsibleLayout.this.mIsScrollingDown);
                    }
                }
            }
        });
        if (animatorListener != null) {
            valueAnimatorOfObject.addListener(animatorListener);
        }
        valueAnimatorOfObject.start();
        this.headerHeightAnimator = valueAnimatorOfObject;
        return valueAnimatorOfObject;
    }

    private Animator smoothScrollTo(int i10, long j6, Animator.AnimatorListener animatorListener) {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "scrollY", i10);
        objectAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfInt.setDuration(j6);
        if (animatorListener != null) {
            objectAnimatorOfInt.addListener(animatorListener);
        }
        objectAnimatorOfInt.start();
        return objectAnimatorOfInt;
    }

    public void addOnHeaderStatusChangedListener(OnHeaderStatusChangedListener onHeaderStatusChangedListener) {
        if (this.mHeaderStatusChangedListeners == null) {
            this.mHeaderStatusChangedListeners = new ArrayList();
        }
        if (this.mHeaderStatusChangedListeners.contains(onHeaderStatusChangedListener)) {
            return;
        }
        this.mHeaderStatusChangedListeners.add(onHeaderStatusChangedListener);
    }

    public void collapse() {
        changeHeaderHeightTo(this.mStickyFooterHeight);
        onHeaderStatusChanged(2);
        List<OnHeaderStatusChangedListener> list = this.mHeaderStatusChangedListeners;
        if (list != null) {
            Iterator<OnHeaderStatusChangedListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onHeaderCollapsed();
            }
        }
        this.lastVelocityY = 0.1f;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f6, boolean z6) {
        return this.mChildHelper.a(f, f6, z6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f6) {
        return this.mChildHelper.b(f, f6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.mChildHelper.c(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.mChildHelper.f(i10, i11, i12, i13, iArr);
    }

    public void expand() {
        changeHeaderHeightTo(this.mOrgHeaderHeight);
        onHeaderStatusChanged(4);
        List<OnHeaderStatusChangedListener> list = this.mHeaderStatusChangedListeners;
        if (list != null) {
            Iterator<OnHeaderStatusChangedListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onHeaderExpanded();
            }
        }
        this.lastVelocityY = -0.1f;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.mParentHelper.a();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.k();
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.m();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ViewGroup viewGroup;
        View viewFindViewById;
        if (this.mOrgHeaderHeight > 0 || (viewGroup = this.mTopView) == null) {
            return;
        }
        this.mOrgHeaderHeight = viewGroup.getMeasuredHeight();
        int i10 = this.mOvershootDistance;
        if (i10 < 0) {
            this.mOvershootDistance = 0;
        } else if (i10 > Integer.MAX_VALUE - getHeight()) {
            getHeight();
        }
        int i11 = this.mStickyFooterLayoutId;
        if (i11 != -1 && (viewFindViewById = this.mTopView.findViewById(i11)) != null) {
            int measuredHeight = viewFindViewById.getMeasuredHeight();
            this.mStickyFooterHeight = measuredHeight;
            this.mStickyFooterHeight = Math.min(this.mOrgHeaderHeight, measuredHeight);
        }
        this.lastHeaderHeight = this.mStickyFooterHeight;
        int i12 = this.mOrgHeaderHeight;
        this.mOrgHeaderHeightBackup = i12;
        boolean z6 = true;
        this.mIsEnabled = i12 > 0;
        if (this.skipLayout) {
            collapse();
            this.skipLayout = false;
        } else {
            z6 = false;
        }
        if (this.isFirstLayout) {
            OnViewFinishInflateListener onViewFinishInflateListener = this.mViewFinishInflateListener;
            if (onViewFinishInflateListener != null) {
                onViewFinishInflateListener.onViewFinishInflate();
            }
            onFirstLayout();
            requestLayout();
            if (!this.mDefaultExpand) {
                collapse();
            }
            this.isFirstLayout = false;
            return;
        }
        if (z6) {
            return;
        }
        if (this.mOrgHeaderHeight > 0) {
            this.mCurHeaderStatus = 4;
        } else {
            this.mCurHeaderStatus = 2;
        }
        List<OnHeaderStatusChangedListener> list = this.mHeaderStatusChangedListeners;
        if (list != null) {
            for (OnHeaderStatusChangedListener onHeaderStatusChangedListener : list) {
                if (this.mOrgHeaderHeight > 0) {
                    onHeaderStatusChangedListener.onHeaderExpanded();
                } else {
                    onHeaderStatusChangedListener.onHeaderCollapsed();
                }
            }
        }
    }

    protected void onHeaderStatusChanged(int i10) {
        this.mCurHeaderStatus = i10;
        if (i10 == 4 || i10 == 2) {
            runPendingHeaderInvalidate();
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        if (this.skipLayout) {
            return;
        }
        super.onLayout(z6, i10, i11, i12, i13);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f6) {
        int i10;
        if (this.mSupportFlingAction) {
            if (f6 > 0.0f && this.lastVelocityY < 0.0f) {
                if (this.mCurHeaderStatus != 2) {
                    smoothChangeHeaderHeightTo(this.mStickyFooterHeight, new Animator.AnimatorListener() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.10
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners != null) {
                                HeaderCollapsibleLayout headerCollapsibleLayout = HeaderCollapsibleLayout.this;
                                if (headerCollapsibleLayout.mIsEnabled) {
                                    Iterator it = headerCollapsibleLayout.mHeaderStatusChangedListeners.iterator();
                                    while (it.hasNext()) {
                                        ((OnHeaderStatusChangedListener) it.next()).onHeaderCollapsed();
                                    }
                                }
                            }
                            HeaderCollapsibleLayout.this.onHeaderStatusChanged(2);
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            HeaderCollapsibleLayout.this.onHeaderStatusChanged(1);
                        }
                    });
                }
                this.lastVelocityY = f6;
                return dispatchNestedPreFling(f, f6);
            }
            if (f6 < 0.0f && ((this.unconsumedDy < 0 || this.needAutoExpand) && (i10 = this.mCurHeaderStatus) != 4 && i10 != 3)) {
                smoothChangeHeaderHeightTo(this.mOrgHeaderHeight, new Animator.AnimatorListener() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.11
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners != null) {
                            HeaderCollapsibleLayout headerCollapsibleLayout = HeaderCollapsibleLayout.this;
                            if (headerCollapsibleLayout.mIsEnabled) {
                                Iterator it = headerCollapsibleLayout.mHeaderStatusChangedListeners.iterator();
                                while (it.hasNext()) {
                                    ((OnHeaderStatusChangedListener) it.next()).onHeaderExpanded();
                                }
                            }
                        }
                        HeaderCollapsibleLayout.this.onHeaderStatusChanged(4);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        HeaderCollapsibleLayout.this.onHeaderStatusChanged(3);
                    }
                });
            }
        }
        this.lastVelocityY = f6;
        return dispatchNestedPreFling(f, f6);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001d  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        int i12;
        int iAbs;
        if (this.mIsBeingDragged) {
            if (this.mIsScrollingDown) {
                if (i11 < 0) {
                    iAbs = i11;
                } else {
                    iAbs = i11 - Math.abs(this.mTopView.getHeight() - this.lastHeaderHeight);
                }
            } else if (i11 > 0) {
                iAbs = i11;
            } else {
                iAbs = Math.abs(this.mTopView.getHeight() - this.lastHeaderHeight) + i11;
            }
            i12 = iAbs;
        } else {
            i12 = i11;
        }
        if (Math.abs(i12) > 3) {
            this.mIsScrollingDown = i12 < 0;
            this.mIsBeingDragged = true;
        }
        if (dispatchNestedPreScroll(i10, i11, iArr, null) || !shouldConsumeNestedScroll(i12)) {
            return;
        }
        if (i12 < 0) {
            if (i12 != i11) {
                onNestedScroll(this, 0, 0, 0, i12);
                return;
            }
            return;
        }
        int height = this.mTopView.getHeight();
        if (this.mCurHeaderStatus != 1 && height > this.mStickyFooterHeight && height < this.mOrgHeaderHeight + this.mOvershootDistance && this.mIsEnabled) {
            List<OnHeaderStatusChangedListener> list = this.mHeaderStatusChangedListeners;
            if (list != null) {
                Iterator<OnHeaderStatusChangedListener> it = list.iterator();
                while (it.hasNext()) {
                    it.next().onHeaderStartCollapsing();
                }
            }
            onHeaderStatusChanged(1);
        }
        if (isReachedEdge(i12)) {
            int i13 = this.mStickyFooterHeight;
            i12 = height > i13 ? height - i13 : 0;
        }
        if (i12 != 0 && this.mIsBeingDragged) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mTopView.getLayoutParams();
            this.lastHeaderHeight = this.mTopView.getHeight();
            layoutParams.height = this.mTopView.getHeight() - i12;
            this.mTopView.setLayoutParams(layoutParams);
        }
        List<OnHeaderStatusChangedListener> list2 = this.mHeaderStatusChangedListeners;
        if (list2 != null && this.mIsEnabled) {
            for (OnHeaderStatusChangedListener onHeaderStatusChangedListener : list2) {
                int i14 = this.mOrgHeaderHeight;
                onHeaderStatusChangedListener.onHeaderOffsetChanged(i14 - height, i14, ((i14 - height) * 1.0f) / (i14 - this.mStickyFooterHeight), this.mIsScrollingDown);
            }
        }
        if (this.mTopView.getHeight() == this.mStickyFooterHeight && this.mIsEnabled && this.mCurHeaderStatus != 2) {
            List<OnHeaderStatusChangedListener> list3 = this.mHeaderStatusChangedListeners;
            if (list3 != null) {
                Iterator<OnHeaderStatusChangedListener> it2 = list3.iterator();
                while (it2.hasNext()) {
                    it2.next().onHeaderCollapsed();
                }
            }
            onHeaderStatusChanged(2);
        }
        iArr[0] = 0;
        iArr[1] = i11;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        this.unconsumedDy = i13;
        int iAbs = (!this.mIsBeingDragged || i13 < 0) ? i13 : i13 - Math.abs(this.mTopView.getHeight() - this.lastHeaderHeight);
        if (iAbs >= 0) {
            dispatchNestedScroll(0, i11, 0, i13, null);
            return;
        }
        int height = this.mTopView.getHeight();
        if (height >= this.mOrgHeaderHeight && this.mIsEnabled && this.mCurHeaderStatus != 4) {
            List<OnHeaderStatusChangedListener> list = this.mHeaderStatusChangedListeners;
            if (list != null) {
                Iterator<OnHeaderStatusChangedListener> it = list.iterator();
                while (it.hasNext()) {
                    it.next().onHeaderExpanded();
                }
            }
            onHeaderStatusChanged(4);
        }
        if (height < this.mStickyFooterHeight || (i14 = this.mOrgHeaderHeight) <= 0 || height >= i14 + this.mOvershootDistance) {
            if (this.mOrgHeaderHeight != 0 || this.mOvershootDistance <= 0 || getScrollY() <= (-this.mOvershootDistance)) {
                return;
            }
            int i17 = iAbs / 3;
            scrollBy(0, i17);
            dispatchNestedScroll(0, i17, 0, i13 - i17, null);
            return;
        }
        boolean zIsReachedEdge = isReachedEdge(iAbs);
        if (zIsReachedEdge) {
            i16 = i13 < 0 ? -((this.mOrgHeaderHeight - height) + this.mOvershootDistance) : height - this.mStickyFooterHeight;
            i15 = i16;
        } else {
            i15 = iAbs;
            i16 = height > this.mOrgHeaderHeight ? iAbs / 3 : iAbs;
        }
        if (i16 != 0 && this.mIsBeingDragged) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mTopView.getLayoutParams();
            this.lastHeaderHeight = height;
            layoutParams.height = height - i16;
            this.mTopView.setLayoutParams(layoutParams);
        }
        if (height >= ((double) (this.mOrgHeaderHeight - this.mStickyFooterHeight)) * 0.12d && this.mIsEnabled) {
            List<OnHeaderStatusChangedListener> list2 = this.mHeaderStatusChangedListeners;
            if (list2 != null) {
                for (OnHeaderStatusChangedListener onHeaderStatusChangedListener : list2) {
                    int i18 = this.mOrgHeaderHeight;
                    onHeaderStatusChangedListener.onHeaderOffsetChanged(i18 - height, i18, ((i18 - height) * 1.0f) / (i18 - this.mStickyFooterHeight), this.mIsScrollingDown);
                }
            }
            int i19 = this.mCurHeaderStatus;
            if (i19 != 3 && i19 == 2) {
                List<OnHeaderStatusChangedListener> list3 = this.mHeaderStatusChangedListeners;
                if (list3 != null) {
                    Iterator<OnHeaderStatusChangedListener> it2 = list3.iterator();
                    while (it2.hasNext()) {
                        it2.next().onHeaderStartExpanding();
                    }
                }
                onHeaderStatusChanged(3);
            }
        }
        int i20 = zIsReachedEdge ? i15 : i16;
        dispatchNestedScroll(0, i20, 0, i13 - i20, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        this.mParentHelper.b(view, view2, i10);
        startNestedScroll(2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        int i10;
        this.lastHeaderHeight = this.mStickyFooterHeight;
        this.mIsBeingDragged = false;
        this.unconsumedDy = 0;
        this.mParentHelper.d(view);
        stopNestedScroll();
        if (this.mOvershootDistance > 0) {
            int height = this.mTopView.getHeight();
            int i11 = this.mOrgHeaderHeight;
            if (height > i11 || (i11 == 0 && getScrollY() < 0)) {
                Animator animator = this.mBounceBackForOvershooting;
                if (animator != null && animator.isStarted()) {
                    this.mBounceBackForOvershooting.cancel();
                }
                if (this.mOrgHeaderHeight > 0) {
                    int height2 = this.mTopView.getHeight();
                    int i12 = this.mOrgHeaderHeight;
                    if (height2 > i12) {
                        this.mBounceBackForOvershooting = smoothChangeHeaderHeightTo(i12, 400L, null);
                        return;
                    }
                }
                if (this.mOrgHeaderHeight != 0 || getScrollY() >= 0) {
                    return;
                }
                this.mBounceBackForOvershooting = smoothScrollTo(this.mOrgHeaderHeight, 400L, null);
                return;
            }
        }
        if (!this.mAutoDrawerModeEnabled || (i10 = this.mCurHeaderStatus) == 4 || i10 == 2) {
            return;
        }
        if (this.mIsScrollingDown && this.mTopView.getHeight() > this.mAbsorbHeaderThreshold) {
            smoothChangeHeaderHeightTo(this.mOrgHeaderHeight, new Animator.AnimatorListener() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.8
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator2) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator2) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    if (HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners != null) {
                        HeaderCollapsibleLayout headerCollapsibleLayout = HeaderCollapsibleLayout.this;
                        if (headerCollapsibleLayout.mIsEnabled) {
                            Iterator it = headerCollapsibleLayout.mHeaderStatusChangedListeners.iterator();
                            while (it.hasNext()) {
                                ((OnHeaderStatusChangedListener) it.next()).onHeaderExpanded();
                            }
                        }
                    }
                    HeaderCollapsibleLayout.this.onHeaderStatusChanged(4);
                }
            });
        } else {
            if (this.mIsScrollingDown || this.mTopView.getHeight() >= this.mOrgHeaderHeight - this.mAbsorbHeaderThreshold) {
                return;
            }
            smoothChangeHeaderHeightTo(this.mStickyFooterHeight, new Animator.AnimatorListener() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.9
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator2) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator2) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    if (HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners != null) {
                        HeaderCollapsibleLayout headerCollapsibleLayout = HeaderCollapsibleLayout.this;
                        if (headerCollapsibleLayout.mIsEnabled) {
                            Iterator it = headerCollapsibleLayout.mHeaderStatusChangedListeners.iterator();
                            while (it.hasNext()) {
                                ((OnHeaderStatusChangedListener) it.next()).onHeaderCollapsed();
                            }
                        }
                    }
                    HeaderCollapsibleLayout.this.onHeaderStatusChanged(2);
                }
            });
        }
    }

    public void removeOnHeaderStatusChangedListener(OnHeaderStatusChangedListener onHeaderStatusChangedListener) {
        List<OnHeaderStatusChangedListener> list = this.mHeaderStatusChangedListeners;
        if (list == null) {
            return;
        }
        list.remove(onHeaderStatusChangedListener);
    }

    public void setBottomLayout(@IdRes int i10) {
        ViewGroup viewGroup = this.mBottomView;
        if (viewGroup != null) {
            removeView(viewGroup);
            this.mBottomView = null;
        }
        initBottomView(i10, this);
        ViewGroup viewGroup2 = this.mBottomView;
        if (viewGroup2 != null) {
            addView(viewGroup2);
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z6) {
        this.mChildHelper.n(z6);
    }

    public void setStickyFooterLayoutId(@IdRes int i10) {
        this.mStickyFooterLayoutId = i10;
        requestLayout();
    }

    public void setTopLayout(@IdRes int i10) {
        ViewGroup viewGroup = this.mTopView;
        if (viewGroup != null) {
            removeView(viewGroup);
            this.mTopView = null;
        }
        initTopView(i10, this);
        ViewGroup viewGroup2 = this.mTopView;
        if (viewGroup2 != null) {
            addView(viewGroup2);
        }
    }

    public void smoothCollapse() {
        smoothChangeHeaderHeightTo(this.mStickyFooterHeight, new Animator.AnimatorListener() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HeaderCollapsibleLayout.this.onHeaderStatusChanged(2);
                if (HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners != null) {
                    Iterator it = HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners.iterator();
                    while (it.hasNext()) {
                        ((OnHeaderStatusChangedListener) it.next()).onHeaderCollapsed();
                    }
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                HeaderCollapsibleLayout.this.onHeaderStatusChanged(1);
                if (HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners != null) {
                    Iterator it = HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners.iterator();
                    while (it.hasNext()) {
                        ((OnHeaderStatusChangedListener) it.next()).onHeaderStartCollapsing();
                    }
                }
            }
        });
        this.lastVelocityY = 0.1f;
    }

    public void smoothExpand() {
        if (this.mOrgHeaderHeight < 0) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.4
                @Override // java.lang.Runnable
                public void run() {
                    HeaderCollapsibleLayout.this.innerSmoothExpand();
                }
            }, 100L);
        }
        innerSmoothExpand();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return this.mChildHelper.p(i10);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        this.mChildHelper.r();
    }

    public HeaderCollapsibleLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOrgHeaderHeight = -1;
        this.mOrgHeaderHeightBackup = -1;
        this.mStickyFooterLayoutId = -1;
        this.mStickyFooterHeight = 0;
        this.mAutoDrawerModeEnabled = true;
        this.mDefaultExpand = true;
        this.mIsEnabled = true;
        this.isFirstLayout = true;
        this.needAutoExpand = true;
        this.lastVelocityY = -0.1f;
        init(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getViewTreeObserver().isAlive()) {
            getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (getViewTreeObserver().isAlive()) {
            getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    public HeaderCollapsibleLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mOrgHeaderHeight = -1;
        this.mOrgHeaderHeightBackup = -1;
        this.mStickyFooterLayoutId = -1;
        this.mStickyFooterHeight = 0;
        this.mAutoDrawerModeEnabled = true;
        this.mDefaultExpand = true;
        this.mIsEnabled = true;
        this.isFirstLayout = true;
        this.needAutoExpand = true;
        this.lastVelocityY = -0.1f;
        init(context, attributeSet);
    }

    public void invalidateHeader(final HashMap<View, Boolean> map, final boolean z6) {
        Animator animator;
        if (map == null || map.isEmpty()) {
            return;
        }
        int i10 = this.mCurHeaderStatus;
        if ((i10 != 4 && i10 != 2) || ((animator = this.mBounceBackForOvershooting) != null && animator.isRunning())) {
            this.pendingHeaderInvalidateAction = new Runnable() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.1
                @Override // java.lang.Runnable
                public void run() {
                    HeaderCollapsibleLayout.this.skipLayout = z6;
                    for (View view : map.keySet()) {
                        view.setVisibility(((Boolean) map.get(view)).booleanValue() ? 0 : 8);
                    }
                    HeaderCollapsibleLayout.this.innerInvalidateHeader();
                    HeaderCollapsibleLayout.this.pendingHeaderInvalidateAction = null;
                }
            };
            Animator animator2 = this.mBounceBackForOvershooting;
            if (animator2 == null || !animator2.isRunning()) {
                return;
            }
            this.mBounceBackForOvershooting.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator3) {
                    super.onAnimationCancel(animator3);
                    HeaderCollapsibleLayout.this.runPendingHeaderInvalidate();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator3) {
                    super.onAnimationEnd(animator3);
                    HeaderCollapsibleLayout.this.runPendingHeaderInvalidate();
                }
            });
            return;
        }
        this.skipLayout = z6;
        for (View view : map.keySet()) {
            view.setVisibility(map.get(view).booleanValue() ? 0 : 8);
        }
        innerInvalidateHeader();
    }
}
