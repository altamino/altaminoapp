package com.narvii.widget.headercollapse;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import com.narvii.lib.R;
import com.narvii.util.Utils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
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
    /* loaded from: classes.dex */
    public @interface HeaderStatus {
    }

    public interface OnViewFinishInflateListener {
        void onViewFinishInflate();
    }

    protected void onFirstLayout() {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return !z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (i & 2) != 0;
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

    public HeaderCollapsibleLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
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

    public void invalidateHeader(View view, boolean z) {
        if (this.viewVisibleMap == null) {
            this.viewVisibleMap = new HashMap<>(1);
        }
        this.viewVisibleMap.clear();
        this.viewVisibleMap.put(view, Boolean.valueOf(z));
        invalidateHeader(this.viewVisibleMap, false);
    }

    public void invalidateHeader(final HashMap<View, Boolean> map, final boolean z) {
        Animator animator;
        if (map == null || map.isEmpty()) {
            return;
        }
        int i = this.mCurHeaderStatus;
        if ((i == 4 || i == 2) && ((animator = this.mBounceBackForOvershooting) == null || !animator.isRunning())) {
            this.skipLayout = z;
            for (View view : map.keySet()) {
                view.setVisibility(map.get(view).booleanValue() ? 0 : 8);
            }
            innerInvalidateHeader();
            return;
        }
        this.pendingHeaderInvalidateAction = new Runnable() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.1
            @Override // java.lang.Runnable
            public void run() {
                HeaderCollapsibleLayout.this.skipLayout = z;
                for (View view2 : map.keySet()) {
                    view2.setVisibility(((Boolean) map.get(view2)).booleanValue() ? 0 : 8);
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
            public void onAnimationEnd(Animator animator3) {
                super.onAnimationEnd(animator3);
                HeaderCollapsibleLayout.this.runPendingHeaderInvalidate();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator3) {
                super.onAnimationCancel(animator3);
                HeaderCollapsibleLayout.this.runPendingHeaderInvalidate();
            }
        });
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
    public void runPendingHeaderInvalidate() {
        Runnable runnable = this.pendingHeaderInvalidateAction;
        if (runnable != null) {
            Utils.post(runnable);
        }
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

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ViewGroup viewGroup;
        View viewFindViewById;
        if (this.mOrgHeaderHeight > 0 || (viewGroup = this.mTopView) == null) {
            return;
        }
        this.mOrgHeaderHeight = viewGroup.getMeasuredHeight();
        int i = this.mOvershootDistance;
        if (i < 0) {
            this.mOvershootDistance = 0;
        } else if (i > Integer.MAX_VALUE - getHeight()) {
            getHeight();
        }
        int i2 = this.mStickyFooterLayoutId;
        if (i2 != -1 && (viewFindViewById = this.mTopView.findViewById(i2)) != null) {
            this.mStickyFooterHeight = viewFindViewById.getMeasuredHeight();
            this.mStickyFooterHeight = Math.min(this.mOrgHeaderHeight, this.mStickyFooterHeight);
        }
        this.lastHeaderHeight = this.mStickyFooterHeight;
        int i3 = this.mOrgHeaderHeight;
        this.mOrgHeaderHeightBackup = i3;
        boolean z = true;
        this.mIsEnabled = i3 > 0;
        if (this.skipLayout) {
            collapse();
            this.skipLayout = false;
        } else {
            z = false;
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
        if (z) {
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

    protected void onHeaderStatusChanged(int i) {
        this.mCurHeaderStatus = i;
        int i2 = this.mCurHeaderStatus;
        if (i2 == 4 || i2 == 2) {
            runPendingHeaderInvalidate();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.skipLayout) {
            return;
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    private void initStyleable(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.HeaderCollapsibleLayout, 0, 0);
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.HeaderCollapsibleLayout_topPanelLayoutId)) {
            initTopView(typedArrayObtainStyledAttributes.getResourceId(R.styleable.HeaderCollapsibleLayout_topPanelLayoutId, -1), this);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.HeaderCollapsibleLayout_bottomPanelLayoutId)) {
            initBottomView(typedArrayObtainStyledAttributes.getResourceId(R.styleable.HeaderCollapsibleLayout_bottomPanelLayoutId, -1), this);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.HeaderCollapsibleLayout_stickyFooterLayoutId)) {
            this.mStickyFooterLayoutId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.HeaderCollapsibleLayout_stickyFooterLayoutId, -1);
        }
        this.mSupportFlingAction = typedArrayObtainStyledAttributes.getBoolean(R.styleable.HeaderCollapsibleLayout_supportFlingAction, true);
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.HeaderCollapsibleLayout_autoDrawerModeEnabled)) {
            this.mAutoDrawerModeEnabled = typedArrayObtainStyledAttributes.getBoolean(R.styleable.HeaderCollapsibleLayout_autoDrawerModeEnabled, true);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.HeaderCollapsibleLayout_defaultExpand)) {
            this.mDefaultExpand = typedArrayObtainStyledAttributes.getBoolean(R.styleable.HeaderCollapsibleLayout_defaultExpand, true);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.HeaderCollapsibleLayout_overshootDistance)) {
            this.mOvershootDistance = typedArrayObtainStyledAttributes.getInteger(R.styleable.HeaderCollapsibleLayout_overshootDistance, 0);
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

    public void setTopLayout(int i) {
        ViewGroup viewGroup = this.mTopView;
        if (viewGroup != null) {
            removeView(viewGroup);
            this.mTopView = null;
        }
        initTopView(i, this);
        ViewGroup viewGroup2 = this.mTopView;
        if (viewGroup2 != null) {
            addView(viewGroup2);
        }
    }

    public void setBottomLayout(int i) {
        ViewGroup viewGroup = this.mBottomView;
        if (viewGroup != null) {
            removeView(viewGroup);
            this.mBottomView = null;
        }
        initBottomView(i, this);
        ViewGroup viewGroup2 = this.mBottomView;
        if (viewGroup2 != null) {
            addView(viewGroup2);
        }
    }

    public void setStickyFooterLayoutId(int i) {
        this.mStickyFooterLayoutId = i;
        requestLayout();
    }

    private void initTopView(int i, ViewGroup viewGroup) {
        if (i == -1) {
            return;
        }
        this.mTopView = (ViewGroup) LayoutInflater.from(this.mContext).inflate(i, viewGroup, false);
    }

    private void initBottomView(int i, ViewGroup viewGroup) {
        if (i == -1) {
            return;
        }
        this.mBottomView = (ViewGroup) LayoutInflater.from(this.mContext).inflate(i, viewGroup, false);
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

    public void removeOnHeaderStatusChangedListener(OnHeaderStatusChangedListener onHeaderStatusChangedListener) {
        List<OnHeaderStatusChangedListener> list = this.mHeaderStatusChangedListeners;
        if (list == null) {
            return;
        }
        list.remove(onHeaderStatusChangedListener);
    }

    public void setOnViewFinishInflateListener(OnViewFinishInflateListener onViewFinishInflateListener) {
        this.mViewFinishInflateListener = onViewFinishInflateListener;
    }

    public void removeOnViewFinishInflateListener() {
        this.mViewFinishInflateListener = null;
    }

    public void reset() {
        onHeaderStatusChanged(2);
    }

    public int getCurrentHeaderStatus() {
        return this.mCurHeaderStatus;
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

    public void smoothCollapse() {
        smoothChangeHeaderHeightTo(this.mStickyFooterHeight, new Animator.AnimatorListener() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
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
        });
        this.lastVelocityY = 0.1f;
    }

    public View getTopView() {
        return this.mTopView;
    }

    public ViewGroup getBottomView() {
        return this.mBottomView;
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
            public void onAnimationStart(Animator animator) {
                HeaderCollapsibleLayout.this.onHeaderStatusChanged(3);
                if (HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners != null) {
                    Iterator it = HeaderCollapsibleLayout.this.mHeaderStatusChangedListeners.iterator();
                    while (it.hasNext()) {
                        ((OnHeaderStatusChangedListener) it.next()).onHeaderStartExpanding();
                    }
                }
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
        });
        this.lastVelocityY = -0.1f;
    }

    public void disableCollapsing() {
        int i = this.mOrgHeaderHeight;
        if (i != 0) {
            this.mOrgHeaderHeightBackup = i;
            this.mOrgHeaderHeight = 0;
        }
        this.mIsEnabled = false;
    }

    public void enableCollapsing() {
        this.mOrgHeaderHeight = this.mOrgHeaderHeightBackup;
        this.mIsEnabled = true;
    }

    @Override // android.view.View
    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.mChildHelper.setNestedScrollingEnabled(z);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.isNestedScrollingEnabled();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.mChildHelper.startNestedScroll(i);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.mChildHelper.stopNestedScroll();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.hasNestedScrollingParent();
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.mChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.mChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.mChildHelper.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.mChildHelper.dispatchNestedPreFling(f, f2);
    }

    private boolean shouldConsumeNestedScroll(int i) {
        return i > 0 ? this.mTopView.getHeight() > this.mStickyFooterHeight : this.mTopView.getHeight() < this.mOrgHeaderHeight + this.mOvershootDistance;
    }

    private boolean isReachedEdge(int i) {
        return i > 0 ? i > this.mTopView.getHeight() - this.mStickyFooterHeight : Math.abs(i) > (this.mOrgHeaderHeight + this.mOvershootDistance) - this.mTopView.getHeight();
    }

    private void changeHeaderHeightTo(int i) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mTopView.getLayoutParams();
        layoutParams.height = i;
        this.mTopView.setLayoutParams(layoutParams);
    }

    private Animator smoothScrollTo(int i, long j, Animator.AnimatorListener animatorListener) {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, "scrollY", i);
        objectAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfInt.setDuration(j);
        if (animatorListener != null) {
            objectAnimatorOfInt.addListener(animatorListener);
        }
        objectAnimatorOfInt.start();
        return objectAnimatorOfInt;
    }

    private Animator smoothChangeHeaderHeightTo(int i, Animator.AnimatorListener animatorListener) {
        return smoothChangeHeaderHeightTo(i, 300L, animatorListener);
    }

    private Animator smoothChangeHeaderHeightTo(int i, long j, Animator.AnimatorListener animatorListener) {
        if (i < 0) {
            return null;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.mTopView.getLayoutParams());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.mTopView.getLayoutParams());
        layoutParams2.height = i;
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new TypeEvaluator<LinearLayout.LayoutParams>() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.6
            @Override // android.animation.TypeEvaluator
            public LinearLayout.LayoutParams evaluate(float f, LinearLayout.LayoutParams layoutParams3, LinearLayout.LayoutParams layoutParams4) {
                LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) HeaderCollapsibleLayout.this.mTopView.getLayoutParams();
                HeaderCollapsibleLayout headerCollapsibleLayout = HeaderCollapsibleLayout.this;
                headerCollapsibleLayout.lastHeaderHeight = headerCollapsibleLayout.mTopView.getHeight();
                layoutParams5.height = (int) (layoutParams3.height + ((layoutParams4.height - layoutParams3.height) * f));
                return layoutParams5;
            }
        }, layoutParams, layoutParams2);
        valueAnimatorOfObject.setDuration(j);
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

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.mParentHelper.onNestedScrollAccepted(view, view2, i);
        startNestedScroll(2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        int i;
        this.lastHeaderHeight = this.mStickyFooterHeight;
        this.mIsBeingDragged = false;
        this.unconsumedDy = 0;
        this.mParentHelper.onStopNestedScroll(view);
        stopNestedScroll();
        if (this.mOvershootDistance > 0) {
            int height = this.mTopView.getHeight();
            int i2 = this.mOrgHeaderHeight;
            if (height > i2 || (i2 == 0 && getScrollY() < 0)) {
                Animator animator = this.mBounceBackForOvershooting;
                if (animator != null && animator.isStarted()) {
                    this.mBounceBackForOvershooting.cancel();
                }
                if (this.mOrgHeaderHeight > 0) {
                    int height2 = this.mTopView.getHeight();
                    int i3 = this.mOrgHeaderHeight;
                    if (height2 > i3) {
                        this.mBounceBackForOvershooting = smoothChangeHeaderHeightTo(i3, 400L, null);
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
        if (!this.mAutoDrawerModeEnabled || (i = this.mCurHeaderStatus) == 4 || i == 2) {
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

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        this.unconsumedDy = i4;
        int iAbs = (!this.mIsBeingDragged || i4 < 0) ? i4 : i4 - Math.abs(this.mTopView.getHeight() - this.lastHeaderHeight);
        if (iAbs >= 0) {
            dispatchNestedScroll(0, i2, 0, i4, null);
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
        if (height >= this.mStickyFooterHeight && (i5 = this.mOrgHeaderHeight) > 0 && height < i5 + this.mOvershootDistance) {
            boolean zIsReachedEdge = isReachedEdge(iAbs);
            if (zIsReachedEdge) {
                if (i4 < 0) {
                    i7 = -((this.mOrgHeaderHeight - height) + this.mOvershootDistance);
                } else {
                    i7 = height - this.mStickyFooterHeight;
                }
                i6 = i7;
            } else {
                i6 = iAbs;
                i7 = height > this.mOrgHeaderHeight ? iAbs / 3 : iAbs;
            }
            if (i7 != 0 && this.mIsBeingDragged) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mTopView.getLayoutParams();
                this.lastHeaderHeight = height;
                layoutParams.height = height - i7;
                this.mTopView.setLayoutParams(layoutParams);
            }
            double d = height;
            double d2 = this.mOrgHeaderHeight - this.mStickyFooterHeight;
            Double.isNaN(d2);
            if (d >= d2 * 0.12d && this.mIsEnabled) {
                List<OnHeaderStatusChangedListener> list2 = this.mHeaderStatusChangedListeners;
                if (list2 != null) {
                    for (OnHeaderStatusChangedListener onHeaderStatusChangedListener : list2) {
                        int i8 = this.mOrgHeaderHeight;
                        onHeaderStatusChangedListener.onHeaderOffsetChanged(i8 - height, i8, ((i8 - height) * 1.0f) / (i8 - this.mStickyFooterHeight), this.mIsScrollingDown);
                    }
                }
                int i9 = this.mCurHeaderStatus;
                if (i9 != 3 && i9 == 2) {
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
            int i10 = zIsReachedEdge ? i6 : i7;
            dispatchNestedScroll(0, i10, 0, i4 - i10, null);
            return;
        }
        if (this.mOrgHeaderHeight != 0 || this.mOvershootDistance <= 0 || getScrollY() <= (-this.mOvershootDistance)) {
            return;
        }
        int i11 = iAbs / 3;
        scrollBy(0, i11);
        dispatchNestedScroll(0, i11, 0, i4 - i11, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onNestedPreScroll(android.view.View r8, int r9, int r10, int[] r11) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.onNestedPreScroll(android.view.View, int, int, int[]):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        int i;
        if (this.mSupportFlingAction) {
            if (f2 > 0.0f && this.lastVelocityY < 0.0f) {
                if (this.mCurHeaderStatus != 2) {
                    smoothChangeHeaderHeightTo(this.mStickyFooterHeight, new Animator.AnimatorListener() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.10
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            HeaderCollapsibleLayout.this.onHeaderStatusChanged(1);
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
                    });
                }
                this.lastVelocityY = f2;
                return dispatchNestedPreFling(f, f2);
            }
            if (f2 < 0.0f && ((this.unconsumedDy < 0 || this.needAutoExpand) && (i = this.mCurHeaderStatus) != 4 && i != 3)) {
                smoothChangeHeaderHeightTo(this.mOrgHeaderHeight, new Animator.AnimatorListener() { // from class: com.narvii.widget.headercollapse.HeaderCollapsibleLayout.11
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        HeaderCollapsibleLayout.this.onHeaderStatusChanged(3);
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
                });
            }
        }
        this.lastVelocityY = f2;
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.mParentHelper.getNestedScrollAxes();
    }
}
