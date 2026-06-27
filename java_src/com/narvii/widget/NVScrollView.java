package com.narvii.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import com.narvii.lib.R;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.util.Log;
import com.narvii.widget.NVListView;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public class NVScrollView extends ScrollView {
    public static final int OVERSCROLL_STRETCH_TAG = NVListView.OVERSCROLL_STRETCH_TAG;
    private static Field fEdgeGlowBottom;
    private static Field fEdgeGlowTop;
    private static Field fOverflingDistance;
    private static Field fOverscrollDistance;
    private static Field fScroller;
    private static boolean fScrollerInited;
    private static boolean inited;
    private static boolean removeEdgeGlowInited;
    private boolean blockLayout;
    Drawable bottomDrawable;
    private int overscrollY;
    private boolean pendingLayout;
    private OnScrollListener scrollListener;
    private int swipeRefreshActivePointerId;
    public SwipeRefreshLayout swipeRefreshLayout;
    private int swipeRefreshOverscrollY;
    private int swipeRefreshStartY;
    private int swipeRefreshStatus;
    private int swipeRefreshY;
    Drawable topDrawable;

    public interface OnScrollListener {
        void onScroll(int i, int i2, int i3, int i4);
    }

    public NVScrollView(Context context) {
        this(context, null);
    }

    public NVScrollView(Context context, AttributeSet attributeSet) throws IllegalAccessException, IllegalArgumentException {
        super(NVListView.getNoEdgeGlowEffectContext(context), attributeSet);
        if (initOverscroll()) {
            removeEdgeGlowEffect(this);
        }
    }

    private boolean initOverscroll() throws IllegalAccessException, Resources.NotFoundException, IllegalArgumentException {
        if (!inited) {
            try {
                fOverflingDistance = ScrollView.class.getDeclaredField("mOverflingDistance");
                fOverflingDistance.setAccessible(true);
                fOverscrollDistance = ScrollView.class.getDeclaredField("mOverscrollDistance");
                fOverscrollDistance.setAccessible(true);
                inited = true;
            } catch (Exception e) {
                Log.e("fail to init overscroll", e);
            }
        }
        if (fOverscrollDistance != null && fOverflingDistance != null) {
            try {
                int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.overscroll_height);
                fOverflingDistance.set(this, Integer.valueOf(dimensionPixelSize));
                fOverscrollDistance.set(this, Integer.valueOf(dimensionPixelSize));
                setOverScrollMode(0);
                setClipChildren(false);
                setClipToPadding(false);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public void setBottomOverScrollColor(int i) {
        this.bottomDrawable = new ColorDrawable(i);
    }

    public void setTopOverScrollColor(int i) {
        this.topDrawable = new ColorDrawable(i);
    }

    static void removeEdgeGlowEffect(ScrollView scrollView) throws IllegalAccessException, IllegalArgumentException {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (!removeEdgeGlowInited) {
            fEdgeGlowTop = NVListView.searchDeclaredField(ScrollView.class, "mEdgeGlowTop");
            fEdgeGlowBottom = NVListView.searchDeclaredField(ScrollView.class, "mEdgeGlowBottom");
            removeEdgeGlowInited = true;
        }
        try {
            if (fEdgeGlowTop != null) {
                fEdgeGlowTop.set(scrollView, new NVListView.NoEdgeEffect(scrollView.getContext()));
            }
            if (fEdgeGlowBottom != null) {
                fEdgeGlowBottom.set(scrollView, new NVListView.NoEdgeEffect(scrollView.getContext()));
            }
        } catch (IllegalAccessException unused) {
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ViewGroup verticalLayout = getVerticalLayout();
        if (verticalLayout != null) {
            verticalLayout.setClipChildren(false);
            verticalLayout.setClipToPadding(false);
        }
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.scrollListener = onScrollListener;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        OnScrollListener onScrollListener = this.scrollListener;
        if (onScrollListener != null) {
            onScrollListener.onScroll(i, i2, i3, i4);
        }
    }

    protected ViewGroup getVerticalLayout() {
        if (getChildCount() <= 0) {
            return null;
        }
        View childAt = getChildAt(0);
        if (childAt instanceof LinearLayout) {
            return (ViewGroup) childAt;
        }
        return null;
    }

    protected View getOverscrollStretchView() {
        ViewGroup verticalLayout = getVerticalLayout();
        if (verticalLayout == null) {
            return null;
        }
        int childCount = verticalLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = verticalLayout.getChildAt(i);
            if (childAt.getTag(OVERSCROLL_STRETCH_TAG) == Boolean.TRUE) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.widget.ScrollView, android.view.View
    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        this.overscrollY = i2;
        onSwipeRefreshOverscroll(i2);
        this.blockLayout = getOverscrollStretchView() != null && i2 < 0;
        super.onOverScrolled(i, i2, z, z2);
        if (this.blockLayout || !this.pendingLayout) {
            return;
        }
        this.pendingLayout = false;
        requestLayout();
    }

    @Override // android.widget.ScrollView, android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.blockLayout) {
            this.pendingLayout = true;
        } else {
            super.requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        View overscrollStretchView;
        if (this.overscrollY < 0 && getVerticalLayout() == view && (overscrollStretchView = getOverscrollStretchView()) != null) {
            int width = overscrollStretchView.getWidth();
            int i = overscrollStretchView.getLayoutParams().height;
            if (i < 0) {
                Log.e("overscroll stretch view must have a specific height");
            } else {
                int i2 = i + (-this.overscrollY);
                overscrollStretchView.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
                overscrollStretchView.layout(overscrollStretchView.getLeft(), this.overscrollY, overscrollStretchView.getRight(), this.overscrollY + i2);
                this.overscrollY = 0;
            }
        } else if (this.overscrollY < 0 && getChildCount() > 0 && this.topDrawable != null && view == getChildAt(0) && view.getTop() >= 0) {
            this.topDrawable.setBounds(0, this.overscrollY, getWidth(), view.getTop());
            this.topDrawable.draw(canvas);
        }
        if (getChildCount() > 0 && this.bottomDrawable != null && view == getChildAt(getChildCount() - 1)) {
            int iSave = canvas.save();
            this.bottomDrawable.setBounds(0, view.getBottom(), getWidth(), getHeight() + this.overscrollY);
            this.bottomDrawable.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    private void onSwipeRefreshOverscroll(int i) {
        if (this.swipeRefreshLayout == null) {
            return;
        }
        this.swipeRefreshOverscrollY = i;
        if (this.swipeRefreshStatus != 1 || i >= 0) {
            return;
        }
        this.swipeRefreshStatus = 2;
        this.swipeRefreshStartY = this.swipeRefreshY;
    }

    private void onSwipeRefreshTouch(MotionEvent motionEvent) {
        int iFindPointerIndex;
        int y;
        int pointerId;
        if (this.swipeRefreshLayout == null) {
            return;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            if (this.swipeRefreshLayout.isRefreshing()) {
                this.swipeRefreshStatus = 0;
                return;
            }
            this.swipeRefreshActivePointerId = motionEvent.getPointerId(0);
            this.swipeRefreshStatus = this.swipeRefreshOverscrollY < 0 ? 2 : 1;
            this.swipeRefreshY = (int) motionEvent.getY(0);
            if (this.swipeRefreshStatus == 2) {
                this.swipeRefreshStartY = this.swipeRefreshY;
                return;
            }
            return;
        }
        if (action != 1) {
            if (action == 2) {
                int iFindPointerIndex2 = motionEvent.findPointerIndex(this.swipeRefreshActivePointerId);
                if (iFindPointerIndex2 < 0 || this.swipeRefreshStatus < 2) {
                    return;
                }
                int y2 = ((int) motionEvent.getY(iFindPointerIndex2)) - this.swipeRefreshStartY;
                SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
                swipeRefreshLayout.mIsBeingDragged = true;
                if (y2 > 0) {
                    swipeRefreshLayout.moveSpinner(y2);
                    return;
                } else {
                    swipeRefreshLayout.finishSpinner(0.0f);
                    return;
                }
            }
            if (action != 3) {
                if (action == 5) {
                    this.swipeRefreshActivePointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
                    return;
                } else {
                    if (action == 6 && (pointerId = motionEvent.getPointerId(motionEvent.getActionIndex())) == this.swipeRefreshActivePointerId) {
                        this.swipeRefreshActivePointerId = motionEvent.getPointerId(pointerId == 0 ? 1 : 0);
                        return;
                    }
                    return;
                }
            }
        }
        if (this.swipeRefreshStatus >= 2 && (iFindPointerIndex = motionEvent.findPointerIndex(this.swipeRefreshActivePointerId)) >= 0 && (y = ((int) motionEvent.getY(iFindPointerIndex)) - this.swipeRefreshStartY) > 0) {
            SwipeRefreshLayout swipeRefreshLayout2 = this.swipeRefreshLayout;
            swipeRefreshLayout2.mIsBeingDragged = true;
            swipeRefreshLayout2.finishSpinner(y);
        }
        this.swipeRefreshStatus = 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        onSwipeRefreshTouch(motionEvent);
        return zDispatchTouchEvent;
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        boolean z = true;
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            int scrollY = getScrollY();
            if (scrollY >= -1 && scrollY <= getContHeight() - getHeight()) {
                z = false;
            }
            if (z && isScrollerFinished() == Boolean.TRUE) {
                smoothScrollBy(0, getScrollY());
            }
        }
        return zOnTouchEvent;
    }

    private int getContHeight() {
        if (getChildCount() > 0) {
            return getChildAt(0).getHeight();
        }
        return 0;
    }

    private Boolean isScrollerFinished() throws NoSuchFieldException {
        if (!fScrollerInited) {
            fScrollerInited = true;
            try {
                Field declaredField = ScrollView.class.getDeclaredField("mScroller");
                declaredField.setAccessible(true);
                fScroller = declaredField;
                return Boolean.valueOf(((OverScroller) declaredField.get(this)).isFinished());
            } catch (Exception unused) {
                Log.e("overscroll unknown scroller");
                return null;
            }
        }
        Field field = fScroller;
        if (field == null) {
            return null;
        }
        try {
            return Boolean.valueOf(((OverScroller) field.get(this)).isFinished());
        } catch (Exception unused2) {
            return null;
        }
    }
}
