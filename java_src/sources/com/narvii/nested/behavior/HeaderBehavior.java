package com.narvii.nested.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes8.dex */
public abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {
    private static final int INVALID_POINTER = -1;
    private int mActivePointerId;
    private Runnable mFlingRunnable;
    private boolean mIsBeingDragged;
    private int mLastMotionY;
    OverScroller mScroller;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    private class FlingRunnable implements Runnable {
        private final V mLayout;
        private final CoordinatorLayout mParent;

        FlingRunnable(CoordinatorLayout coordinatorLayout, V v5) {
            this.mParent = coordinatorLayout;
            this.mLayout = v5;
        }

        @Override // java.lang.Runnable
        public void run() {
            OverScroller overScroller;
            if (this.mLayout == null || (overScroller = HeaderBehavior.this.mScroller) == null) {
                return;
            }
            if (!overScroller.computeScrollOffset()) {
                HeaderBehavior.this.onFlingFinished(this.mParent, this.mLayout);
                return;
            }
            HeaderBehavior headerBehavior = HeaderBehavior.this;
            headerBehavior.setHeaderTopBottomOffset(this.mParent, this.mLayout, headerBehavior.mScroller.getCurrY());
            ViewCompat.l0(this.mLayout, this);
        }
    }

    public HeaderBehavior() {
        this.mActivePointerId = -1;
        this.mTouchSlop = -1;
    }

    public boolean canDragView(V v5) {
        return false;
    }

    public final boolean fling(CoordinatorLayout coordinatorLayout, V v5, int i10, int i11, float f) {
        Runnable runnable = this.mFlingRunnable;
        if (runnable != null) {
            v5.removeCallbacks(runnable);
            this.mFlingRunnable = null;
        }
        if (this.mScroller == null) {
            this.mScroller = new OverScroller(v5.getContext());
        }
        this.mScroller.fling(0, getTopAndBottomOffset(), 0, Math.round(f), 0, 0, i10, i11);
        if (!this.mScroller.computeScrollOffset()) {
            onFlingFinished(coordinatorLayout, v5);
            return false;
        }
        FlingRunnable flingRunnable = new FlingRunnable(coordinatorLayout, v5);
        this.mFlingRunnable = flingRunnable;
        ViewCompat.l0(v5, flingRunnable);
        return true;
    }

    public void onFlingFinished(CoordinatorLayout coordinatorLayout, V v5) {
    }

    public int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, V v5, int i10) {
        return setHeaderTopBottomOffset(coordinatorLayout, v5, i10, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mActivePointerId = -1;
        this.mTouchSlop = -1;
    }

    private void ensureVelocityTracker() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0051  */
    /* JADX WARN: Code duplicated, block: B:29:0x0059  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v5, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int iFindPointerIndex;
        if (this.mTouchSlop < 0) {
            this.mTouchSlop = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() == 2 && this.mIsBeingDragged) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mIsBeingDragged = false;
            int x6 = (int) motionEvent.getX();
            int y6 = (int) motionEvent.getY();
            if (canDragView(v5) && coordinatorLayout.isPointInChildBounds(v5, x6, y6)) {
                this.mLastMotionY = y6;
                this.mActivePointerId = motionEvent.getPointerId(0);
                ensureVelocityTracker();
            }
        } else if (actionMasked == 1) {
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
            velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
            }
        } else if (actionMasked == 2) {
            int i10 = this.mActivePointerId;
            if (i10 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i10)) != -1) {
                int y10 = (int) motionEvent.getY(iFindPointerIndex);
                if (Math.abs(y10 - this.mLastMotionY) > this.mTouchSlop) {
                    this.mIsBeingDragged = true;
                    this.mLastMotionY = y10;
                }
            }
        } else if (actionMasked == 3) {
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
            velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
            }
        }
        VelocityTracker velocityTracker2 = this.mVelocityTracker;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return this.mIsBeingDragged;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v5, MotionEvent motionEvent) {
        if (this.mTouchSlop < 0) {
            this.mTouchSlop = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.mVelocityTracker.computeCurrentVelocity(1000);
                    fling(coordinatorLayout, v5, -getScrollRangeForDragFling(v5), 0, this.mVelocityTracker.getYVelocity(this.mActivePointerId));
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y6 = (int) motionEvent.getY(iFindPointerIndex);
                int i10 = this.mLastMotionY - y6;
                if (!this.mIsBeingDragged) {
                    int iAbs = Math.abs(i10);
                    int i11 = this.mTouchSlop;
                    if (iAbs > i11) {
                        this.mIsBeingDragged = true;
                        i10 = i10 > 0 ? i10 - i11 : i10 + i11;
                    }
                }
                int i12 = i10;
                if (this.mIsBeingDragged) {
                    this.mLastMotionY = y6;
                    scroll(coordinatorLayout, v5, i12, getMaxDragOffset(v5), 0);
                }
            } else if (actionMasked == 3) {
            }
            this.mIsBeingDragged = false;
            this.mActivePointerId = -1;
            VelocityTracker velocityTracker2 = this.mVelocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.mVelocityTracker = null;
            }
        } else {
            int x6 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            if (!coordinatorLayout.isPointInChildBounds(v5, x6, y10) || !canDragView(v5)) {
                return false;
            }
            this.mLastMotionY = y10;
            this.mActivePointerId = motionEvent.getPointerId(0);
            ensureVelocityTracker();
        }
        VelocityTracker velocityTracker3 = this.mVelocityTracker;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return true;
    }

    public int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, V v5, int i10, int i11, int i12) {
        int iB;
        int topAndBottomOffset = getTopAndBottomOffset();
        if (i11 == 0 || topAndBottomOffset < i11 || topAndBottomOffset > i12 || topAndBottomOffset == (iB = MathUtils.b(i10, i11, i12))) {
            return 0;
        }
        setTopAndBottomOffset(iB);
        return topAndBottomOffset - iB;
    }

    public int getMaxDragOffset(V v5) {
        return -v5.getHeight();
    }

    public int getScrollRangeForDragFling(V v5) {
        return v5.getHeight();
    }

    public int getTopBottomOffsetForScrollingSibling() {
        return getTopAndBottomOffset();
    }

    public final int scroll(CoordinatorLayout coordinatorLayout, V v5, int i10, int i11, int i12) {
        return setHeaderTopBottomOffset(coordinatorLayout, v5, getTopBottomOffsetForScrollingSibling() - i10, i11, i12);
    }
}
