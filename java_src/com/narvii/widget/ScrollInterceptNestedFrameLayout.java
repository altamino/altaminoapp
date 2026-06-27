package com.narvii.widget;

import android.content.Context;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.widget.headercollapse.NVNestedScrollingChildHelper;

/* loaded from: classes3.dex */
public class ScrollInterceptNestedFrameLayout extends FrameLayout implements NestedScrollingChild, NestedScrollingParent {
    GestureDetector gestureDetector;
    private boolean hasIntercepted;
    private NVNestedScrollingChildHelper nestedChildHelper;
    private NestedScrollingParentHelper nestedParentHelper;
    private float pointerDownDx;
    private float pointerDownDy;
    private boolean shouldInterceptScrollEvent;

    public ScrollInterceptNestedFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.shouldInterceptScrollEvent = true;
        this.gestureDetector = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: com.narvii.widget.ScrollInterceptNestedFrameLayout.1
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return ScrollInterceptNestedFrameLayout.this.shouldInterceptScrollEvent;
            }
        });
        setClickable(true);
        this.nestedChildHelper = new NVNestedScrollingChildHelper(this);
        this.nestedParentHelper = new NestedScrollingParentHelper(this);
        setNestedScrollingEnabled(true);
    }

    public void setShouldInterceptScrollEvent(boolean z) {
        this.shouldInterceptScrollEvent = z;
        setNestedScrollingEnabled(z);
        setClickable(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.shouldInterceptScrollEvent) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() == 0) {
            this.pointerDownDy = motionEvent.getY();
            this.pointerDownDx = motionEvent.getX();
        } else if (motionEvent.getAction() == 2) {
            float fAbs = Math.abs(motionEvent.getY() - this.pointerDownDy);
            float fAbs2 = Math.abs(motionEvent.getX() - this.pointerDownDx);
            if (fAbs2 == 0.0f && fAbs == 0.0f) {
                return super.dispatchTouchEvent(motionEvent);
            }
            if (fAbs2 >= fAbs && fAbs2 > 0.0f) {
                requestDisallowInterceptTouchEvent(false);
            } else if (fAbs <= fAbs2 || fAbs > 0.0f) {
                getParent().requestDisallowInterceptTouchEvent(true);
            } else {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            requestDisallowInterceptTouchEvent(false);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.shouldInterceptScrollEvent) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        this.nestedChildHelper.onTouchEvent(motionEvent);
        if (this.gestureDetector.onTouchEvent(motionEvent)) {
            this.hasIntercepted = true;
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.shouldInterceptScrollEvent) {
            return super.onTouchEvent(motionEvent);
        }
        this.nestedChildHelper.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.nestedChildHelper.setNestedScrollingEnabled(z);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.nestedChildHelper.isNestedScrollingEnabled();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return this.shouldInterceptScrollEvent;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.nestedParentHelper.onNestedScrollAccepted(view, view2, i);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        if (this.hasIntercepted && this.shouldInterceptScrollEvent) {
            return;
        }
        this.nestedParentHelper.onStopNestedScroll(view);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        dispatchNestedPreScroll(i, i2, iArr, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.nestedParentHelper.getNestedScrollAxes();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.nestedChildHelper.startNestedScroll(i);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.nestedChildHelper.stopNestedScroll();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.nestedChildHelper.hasNestedScrollingParent();
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.nestedChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.nestedChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.nestedChildHelper.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.nestedChildHelper.dispatchNestedPreFling(f, f2);
    }
}
