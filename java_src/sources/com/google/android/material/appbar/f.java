package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes6.dex */
abstract class f<V extends View> extends h<V> {
    private static final int INVALID_POINTER = -1;
    private int activePointerId;

    @Nullable
    private Runnable flingRunnable;
    private boolean isBeingDragged;
    private int lastMotionY;
    OverScroller scroller;
    private int touchSlop;

    @Nullable
    private VelocityTracker velocityTracker;

    private class a implements Runnable {
        private final V layout;
        private final CoordinatorLayout parent;

        a(CoordinatorLayout coordinatorLayout, V v5) {
            this.parent = coordinatorLayout;
            this.layout = v5;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.layout == null || (overScroller = f.this.scroller) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                f.this.onFlingFinished(this.parent, this.layout);
                return;
            }
            f fVar = f.this;
            fVar.setHeaderTopBottomOffset(this.parent, this.layout, fVar.scroller.getCurrY());
            ViewCompat.l0(this.layout, this);
        }
    }

    public f() {
        this.activePointerId = -1;
        this.touchSlop = -1;
    }

    boolean canDragView(V v5) {
        return false;
    }

    final boolean fling(CoordinatorLayout coordinatorLayout, @NonNull V v5, int i10, int i11, float f) {
        Runnable runnable = this.flingRunnable;
        if (runnable != null) {
            v5.removeCallbacks(runnable);
            this.flingRunnable = null;
        }
        if (this.scroller == null) {
            this.scroller = new OverScroller(v5.getContext());
        }
        this.scroller.fling(0, getTopAndBottomOffset(), 0, Math.round(f), 0, 0, i10, i11);
        if (!this.scroller.computeScrollOffset()) {
            onFlingFinished(coordinatorLayout, v5);
            return false;
        }
        a aVar = new a(coordinatorLayout, v5);
        this.flingRunnable = aVar;
        ViewCompat.l0(v5, aVar);
        return true;
    }

    void onFlingFinished(CoordinatorLayout coordinatorLayout, V v5) {
    }

    int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, V v5, int i10) {
        return setHeaderTopBottomOffset(coordinatorLayout, v5, i10, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.activePointerId = -1;
        this.touchSlop = -1;
    }

    private void ensureVelocityTracker() {
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.touchSlop < 0) {
            this.touchSlop = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.isBeingDragged) {
            int i10 = this.activePointerId;
            if (i10 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i10)) == -1) {
                return false;
            }
            int y6 = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y6 - this.lastMotionY) > this.touchSlop) {
                this.lastMotionY = y6;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.activePointerId = -1;
            int x6 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            boolean z6 = canDragView(v5) && coordinatorLayout.isPointInChildBounds(v5, x6, y10);
            this.isBeingDragged = z6;
            if (z6) {
                this.lastMotionY = y10;
                this.activePointerId = motionEvent.getPointerId(0);
                ensureVelocityTracker();
                OverScroller overScroller = this.scroller;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.scroller.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, V v5, int i10, int i11, int i12) {
        int iB;
        int topAndBottomOffset = getTopAndBottomOffset();
        if (i11 == 0 || topAndBottomOffset < i11 || topAndBottomOffset > i12 || topAndBottomOffset == (iB = MathUtils.b(i10, i11, i12))) {
            return 0;
        }
        setTopAndBottomOffset(iB);
        return topAndBottomOffset - iB;
    }

    int getMaxDragOffset(@NonNull V v5) {
        return -v5.getHeight();
    }

    int getScrollRangeForDragFling(@NonNull V v5) {
        return v5.getHeight();
    }

    int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0085  */
    /* JADX WARN: Code duplicated, block: B:33:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:37:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, @NonNull MotionEvent motionEvent) {
        boolean z6;
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int i10;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        if (motionEvent.getActionIndex() == 0) {
                            i10 = 1;
                        } else {
                            i10 = 0;
                        }
                        this.activePointerId = motionEvent.getPointerId(i10);
                        this.lastMotionY = (int) (motionEvent.getY(i10) + 0.5f);
                    }
                }
            } else {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.activePointerId);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y6 = (int) motionEvent.getY(iFindPointerIndex);
                int i11 = this.lastMotionY - y6;
                this.lastMotionY = y6;
                scroll(coordinatorLayout, v5, i11, getMaxDragOffset(v5), 0);
            }
            z6 = false;
            velocityTracker2 = this.velocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            if (!this.isBeingDragged || z6) {
                return true;
            }
            return false;
        }
        VelocityTracker velocityTracker3 = this.velocityTracker;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
            this.velocityTracker.computeCurrentVelocity(1000);
            fling(coordinatorLayout, v5, -getScrollRangeForDragFling(v5), 0, this.velocityTracker.getYVelocity(this.activePointerId));
            z6 = true;
        }
        this.isBeingDragged = false;
        this.activePointerId = -1;
        velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
        velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (!this.isBeingDragged) {
            return true;
        }
        return true;
        z6 = false;
        this.isBeingDragged = false;
        this.activePointerId = -1;
        velocityTracker = this.velocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.velocityTracker = null;
        }
        velocityTracker2 = this.velocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        if (!this.isBeingDragged) {
            return true;
        }
        return true;
    }

    final int scroll(CoordinatorLayout coordinatorLayout, V v5, int i10, int i11, int i12) {
        return setHeaderTopBottomOffset(coordinatorLayout, v5, getTopBottomOffsetForScrollingSibling() - i10, i11, i12);
    }
}
