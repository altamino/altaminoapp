package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import com.narvii.widget.headercollapse.NVNestedScrollingChildHelper;

/* JADX INFO: loaded from: classes6.dex */
public class ScrollInterceptNestedFrameLayout extends FrameLayout implements NestedScrollingChild, NestedScrollingParent {
    GestureDetector gestureDetector;
    private boolean hasIntercepted;
    private NVNestedScrollingChildHelper nestedChildHelper;
    private NestedScrollingParentHelper nestedParentHelper;
    private float pointerDownDx;
    private float pointerDownDy;
    private boolean shouldInterceptScrollEvent;

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(@NonNull View view, int i10, int i11, @NonNull int[] iArr) {
        dispatchNestedPreScroll(i10, i11, iArr, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(@NonNull View view, int i10, int i11, int i12, int i13) {
        dispatchNestedScroll(i10, i11, i12, i13, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        return this.shouldInterceptScrollEvent;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f6, boolean z6) {
        return this.nestedChildHelper.dispatchNestedFling(f, f6, z6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f6) {
        return this.nestedChildHelper.dispatchNestedPreFling(f, f6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.nestedChildHelper.dispatchNestedPreScroll(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.nestedChildHelper.dispatchNestedScroll(i10, i11, i12, i13, iArr);
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
    public int getNestedScrollAxes() {
        return this.nestedParentHelper.a();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.nestedChildHelper.hasNestedScrollingParent();
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.nestedChildHelper.isNestedScrollingEnabled();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.shouldInterceptScrollEvent) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        this.nestedChildHelper.onTouchEvent(motionEvent);
        if (!this.gestureDetector.onTouchEvent(motionEvent)) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        this.hasIntercepted = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i10) {
        this.nestedParentHelper.b(view, view2, i10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        if (this.hasIntercepted && this.shouldInterceptScrollEvent) {
            return;
        }
        this.nestedParentHelper.d(view);
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
    public void setNestedScrollingEnabled(boolean z6) {
        this.nestedChildHelper.setNestedScrollingEnabled(z6);
    }

    public void setShouldInterceptScrollEvent(boolean z6) {
        this.shouldInterceptScrollEvent = z6;
        setNestedScrollingEnabled(z6);
        setClickable(z6);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return this.nestedChildHelper.startNestedScroll(i10);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        this.nestedChildHelper.stopNestedScroll();
    }

    public ScrollInterceptNestedFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.shouldInterceptScrollEvent = true;
        this.gestureDetector = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: com.narvii.widget.ScrollInterceptNestedFrameLayout.1
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
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
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f6) {
                return ScrollInterceptNestedFrameLayout.this.shouldInterceptScrollEvent;
            }
        });
        setClickable(true);
        this.nestedChildHelper = new NVNestedScrollingChildHelper(this);
        this.nestedParentHelper = new NestedScrollingParentHelper(this);
        setNestedScrollingEnabled(true);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(@NonNull View view, float f, float f6, boolean z6) {
        return dispatchNestedFling(f, f6, z6);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(@NonNull View view, float f, float f6) {
        return dispatchNestedPreFling(f, f6);
    }
}
