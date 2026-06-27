package com.narvii.widget.headercollapse;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes3.dex */
public class NVNestedScrollingChildHelper implements NestedScrollingChild {
    private NestedScrollingChildHelper mChildHelper;
    private int mLastY;
    private int mNestedOffsetY;
    private final View target;
    private final int[] mScrollOffset = new int[2];
    private final int[] mScrollConsumed = new int[2];

    public NVNestedScrollingChildHelper(View view) {
        this.target = view;
        this.mChildHelper = new NestedScrollingChildHelper(this.target);
        this.target.setClickable(true);
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            this.mNestedOffsetY = 0;
        }
        int y = (int) motionEvent.getY();
        motionEvent.offsetLocation(0.0f, this.mNestedOffsetY);
        if (actionMasked == 0) {
            this.mLastY = y;
            startNestedScroll(2);
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int i = this.mLastY - y;
                if (dispatchNestedPreScroll(0, i, this.mScrollConsumed, this.mScrollOffset)) {
                    i -= this.mScrollConsumed[1];
                    motionEventObtain.offsetLocation(0.0f, this.mScrollOffset[1]);
                    this.mNestedOffsetY += this.mScrollOffset[1];
                }
                this.mLastY = y - this.mScrollOffset[1];
                int scrollY = this.target.getScrollY();
                int iMax = Math.max(0, scrollY + i) - scrollY;
                int i2 = i - iMax;
                if (i < 0 && this.target.getScrollY() == 0 && dispatchNestedScroll(0, iMax, 0, i2, this.mScrollOffset)) {
                    motionEventObtain.offsetLocation(0.0f, this.mScrollOffset[1]);
                    int i3 = this.mNestedOffsetY;
                    int[] iArr = this.mScrollOffset;
                    this.mNestedOffsetY = i3 + iArr[1];
                    this.mLastY -= iArr[1];
                }
                motionEventObtain.recycle();
                return;
            }
            if (actionMasked != 3 && actionMasked != 5) {
                return;
            }
        }
        stopNestedScroll();
    }

    public void setNestedScrollingEnabled(boolean z) {
        this.mChildHelper.setNestedScrollingEnabled(z);
    }

    @Override // android.support.v4.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.isNestedScrollingEnabled();
    }

    public boolean startNestedScroll(int i) {
        return this.mChildHelper.startNestedScroll(i);
    }

    @Override // android.support.v4.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.mChildHelper.stopNestedScroll();
    }

    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.hasNestedScrollingParent();
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.mChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.mChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.mChildHelper.dispatchNestedFling(f, f2, z);
    }

    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.mChildHelper.dispatchNestedPreFling(f, f2);
    }
}
