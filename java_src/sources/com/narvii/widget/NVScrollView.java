package com.narvii.widget;

import android.content.Context;
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
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes4.dex */
public class NVScrollView extends ScrollView {
    public static final int OVERSCROLL_STRETCH_TAG = NVListView.OVERSCROLL_STRETCH_TAG;
    private static final String TAG = "NVScrollView";
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
        void onScroll(int i10, int i11, int i12, int i13);
    }

    public NVScrollView(Context context) {
        this(context, null);
    }

    private void onSwipeRefreshOverscroll(int i10) {
        if (this.swipeRefreshLayout == null) {
            return;
        }
        this.swipeRefreshOverscrollY = i10;
        if (this.swipeRefreshStatus != 1 || i10 >= 0) {
            return;
        }
        this.swipeRefreshStatus = 2;
        this.swipeRefreshStartY = this.swipeRefreshY;
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.scrollListener = onScrollListener;
    }

    public NVScrollView(Context context, AttributeSet attributeSet) {
        super(NVListView.getNoEdgeGlowEffectContext(context), attributeSet);
        if (initOverscroll()) {
            removeEdgeGlowEffect(this);
        }
    }

    private boolean initOverscroll() {
        if (!inited) {
            try {
                Field declaredField = ScrollView.class.getDeclaredField("mOverflingDistance");
                fOverflingDistance = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = ScrollView.class.getDeclaredField("mOverscrollDistance");
                fOverscrollDistance = declaredField2;
                declaredField2.setAccessible(true);
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

    private Boolean isScrollerFinished() {
        if (fScrollerInited) {
            Field field = fScroller;
            if (field == null) {
                return null;
            }
            try {
                return Boolean.valueOf(((OverScroller) field.get(this)).isFinished());
            } catch (Exception unused) {
                Log.e("overscroll unknown scroller");
                return null;
            }
        }
        fScrollerInited = true;
        try {
            Field declaredField = ScrollView.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            fScroller = declaredField;
            return Boolean.valueOf(((OverScroller) declaredField.get(this)).isFinished());
        } catch (Exception unused2) {
            Log.e("overscroll unknown scroller");
            return null;
        }
    }

    private void onSwipeRefreshTouch(MotionEvent motionEvent) {
        int iFindPointerIndex;
        int y6;
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
            int y10 = (int) motionEvent.getY(0);
            this.swipeRefreshY = y10;
            if (this.swipeRefreshStatus == 2) {
                this.swipeRefreshStartY = y10;
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
                int y11 = ((int) motionEvent.getY(iFindPointerIndex2)) - this.swipeRefreshStartY;
                SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
                swipeRefreshLayout.mIsBeingDragged = true;
                if (y11 > 0) {
                    swipeRefreshLayout.moveSpinner(y11);
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
        if (this.swipeRefreshStatus >= 2 && (iFindPointerIndex = motionEvent.findPointerIndex(this.swipeRefreshActivePointerId)) >= 0 && (y6 = ((int) motionEvent.getY(iFindPointerIndex)) - this.swipeRefreshStartY) > 0) {
            SwipeRefreshLayout swipeRefreshLayout2 = this.swipeRefreshLayout;
            swipeRefreshLayout2.mIsBeingDragged = true;
            swipeRefreshLayout2.finishSpinner(y6);
        }
        this.swipeRefreshStatus = 0;
    }

    static void removeEdgeGlowEffect(ScrollView scrollView) {
        if (!removeEdgeGlowInited) {
            fEdgeGlowTop = NVListView.searchDeclaredField(ScrollView.class, "mEdgeGlowTop");
            fEdgeGlowBottom = NVListView.searchDeclaredField(ScrollView.class, "mEdgeGlowBottom");
            removeEdgeGlowInited = true;
        }
        try {
            if (Build.VERSION.SDK_INT <= 30) {
                Field field = fEdgeGlowTop;
                if (field != null) {
                    field.set(scrollView, new NVListView.NoEdgeEffect(scrollView.getContext()));
                }
                Field field2 = fEdgeGlowBottom;
                if (field2 != null) {
                    field2.set(scrollView, new NVListView.NoEdgeEffect(scrollView.getContext()));
                }
            }
        } catch (IllegalAccessException unused) {
            Log.e("Removing edge glow effect failed");
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        View overscrollStretchView;
        if (this.overscrollY < 0 && getVerticalLayout() == view && (overscrollStretchView = getOverscrollStretchView()) != null) {
            int width = overscrollStretchView.getWidth();
            int i10 = overscrollStretchView.getLayoutParams().height;
            if (i10 < 0) {
                Log.e("overscroll stretch view must have a specific height");
            } else {
                int i11 = i10 + (-this.overscrollY);
                overscrollStretchView.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(i11, 1073741824));
                overscrollStretchView.layout(overscrollStretchView.getLeft(), this.overscrollY, overscrollStretchView.getRight(), this.overscrollY + i11);
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
        try {
            return super.drawChild(canvas, view, j6);
        } catch (ArrayIndexOutOfBoundsException e) {
            Log.e(TAG, "drawChild: unable to draw in scroll view", e);
            return false;
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    protected void onOverScrolled(int i10, int i11, boolean z6, boolean z10) {
        this.overscrollY = i11;
        onSwipeRefreshOverscroll(i11);
        this.blockLayout = getOverscrollStretchView() != null && i11 < 0;
        super.onOverScrolled(i10, i11, z6, z10);
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

    public void setBottomOverScrollColor(int i10) {
        this.bottomDrawable = new ColorDrawable(i10);
    }

    public void setTopOverScrollColor(int i10) {
        this.topDrawable = new ColorDrawable(i10);
    }

    private int getContHeight() {
        if (getChildCount() <= 0) {
            return 0;
        }
        return getChildAt(0).getHeight();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        onSwipeRefreshTouch(motionEvent);
        return zDispatchTouchEvent;
    }

    protected View getOverscrollStretchView() {
        ViewGroup verticalLayout = getVerticalLayout();
        if (verticalLayout != null) {
            int childCount = verticalLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = verticalLayout.getChildAt(i10);
                if (childAt.getTag(OVERSCROLL_STRETCH_TAG) == Boolean.TRUE) {
                    return childAt;
                }
            }
            return null;
        }
        return null;
    }

    protected ViewGroup getVerticalLayout() {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt instanceof LinearLayout) {
                return (ViewGroup) childAt;
            }
            return null;
        }
        return null;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
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

    @Override // android.view.View
    protected void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        OnScrollListener onScrollListener = this.scrollListener;
        if (onScrollListener != null) {
            onScrollListener.onScroll(i10, i11, i12, i13);
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int scrollY;
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        if ((motionEvent.getAction() == 1 || motionEvent.getAction() == 3) && (((scrollY = getScrollY()) < -1 || scrollY > getContHeight() - getHeight()) && isScrollerFinished() == Boolean.TRUE)) {
            smoothScrollBy(0, getScrollY());
        }
        return zOnTouchEvent;
    }
}
