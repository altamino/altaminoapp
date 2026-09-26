package com.narvii.widget.headercollapse;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;

/* JADX INFO: loaded from: classes11.dex */
public class NVNestedScrollingChildHelper implements NestedScrollingChild {
    private NestedScrollingChildHelper mChildHelper;
    private int mLastY;
    private int mNestedOffsetY;
    private final View target;
    private final int[] mScrollOffset = new int[2];
    private final int[] mScrollConsumed = new int[2];

    public boolean dispatchNestedFling(float f, float f6, boolean z6) {
        return this.mChildHelper.a(f, f6, z6);
    }

    public boolean dispatchNestedPreFling(float f, float f6) {
        return this.mChildHelper.b(f, f6);
    }

    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.mChildHelper.c(i10, i11, iArr, iArr2);
    }

    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.mChildHelper.f(i10, i11, i12, i13, iArr);
    }

    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.k();
    }

    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.m();
    }

    public void setNestedScrollingEnabled(boolean z6) {
        this.mChildHelper.n(z6);
    }

    public boolean startNestedScroll(int i10) {
        return this.mChildHelper.p(i10);
    }

    public void stopNestedScroll() {
        this.mChildHelper.r();
    }

    public NVNestedScrollingChildHelper(View view) {
        this.target = view;
        this.mChildHelper = new NestedScrollingChildHelper(view);
        view.setClickable(true);
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int iC = MotionEventCompat.c(motionEvent);
        if (iC == 0) {
            this.mNestedOffsetY = 0;
        }
        int y6 = (int) motionEvent.getY();
        motionEvent.offsetLocation(0.0f, this.mNestedOffsetY);
        if (iC != 0) {
            if (iC != 1) {
                if (iC != 2) {
                    if (iC != 3 && iC != 5) {
                        return;
                    }
                } else {
                    int i10 = this.mLastY - y6;
                    if (dispatchNestedPreScroll(0, i10, this.mScrollConsumed, this.mScrollOffset)) {
                        i10 -= this.mScrollConsumed[1];
                        motionEventObtain.offsetLocation(0.0f, this.mScrollOffset[1]);
                        this.mNestedOffsetY += this.mScrollOffset[1];
                    }
                    this.mLastY = y6 - this.mScrollOffset[1];
                    int scrollY = this.target.getScrollY();
                    int iMax = Math.max(0, scrollY + i10) - scrollY;
                    int i11 = i10 - iMax;
                    if (i10 < 0 && this.target.getScrollY() == 0 && dispatchNestedScroll(0, iMax, 0, i11, this.mScrollOffset)) {
                        motionEventObtain.offsetLocation(0.0f, this.mScrollOffset[1]);
                        int i12 = this.mNestedOffsetY;
                        int i13 = this.mScrollOffset[1];
                        this.mNestedOffsetY = i12 + i13;
                        this.mLastY -= i13;
                    }
                    motionEventObtain.recycle();
                    return;
                }
            }
            stopNestedScroll();
            return;
        }
        this.mLastY = y6;
        startNestedScroll(2);
    }
}
