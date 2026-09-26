package com.narvii.nested.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.narvii.nested.utils.ViewOffsetHelper;

/* JADX INFO: loaded from: classes11.dex */
public class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private int mTempLeftRightOffset;
    private int mTempTopBottomOffset;
    private ViewOffsetHelper mViewOffsetHelper;

    public ViewOffsetBehavior() {
        this.mTempTopBottomOffset = 0;
        this.mTempLeftRightOffset = 0;
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempTopBottomOffset = 0;
        this.mTempLeftRightOffset = 0;
    }

    public int getLeftAndRightOffset() {
        ViewOffsetHelper viewOffsetHelper = this.mViewOffsetHelper;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.getLeftAndRightOffset();
        }
        return 0;
    }

    public int getTopAndBottomOffset() {
        ViewOffsetHelper viewOffsetHelper = this.mViewOffsetHelper;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.getTopAndBottomOffset();
        }
        return 0;
    }

    public boolean setLeftAndRightOffset(int i10) {
        ViewOffsetHelper viewOffsetHelper = this.mViewOffsetHelper;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.setLeftAndRightOffset(i10);
        }
        this.mTempLeftRightOffset = i10;
        return false;
    }

    public boolean setTopAndBottomOffset(int i10) {
        ViewOffsetHelper viewOffsetHelper = this.mViewOffsetHelper;
        if (viewOffsetHelper != null) {
            return viewOffsetHelper.setTopAndBottomOffset(i10);
        }
        this.mTempTopBottomOffset = i10;
        return false;
    }

    protected void layoutChild(CoordinatorLayout coordinatorLayout, V v5, int i10) {
        coordinatorLayout.onLayoutChild(v5, i10);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v5, int i10) {
        layoutChild(coordinatorLayout, v5, i10);
        if (this.mViewOffsetHelper == null) {
            this.mViewOffsetHelper = new ViewOffsetHelper(v5);
        }
        this.mViewOffsetHelper.onViewLayout();
        int i11 = this.mTempTopBottomOffset;
        if (i11 != 0) {
            this.mViewOffsetHelper.setTopAndBottomOffset(i11);
            this.mTempTopBottomOffset = 0;
        }
        int i12 = this.mTempLeftRightOffset;
        if (i12 != 0) {
            this.mViewOffsetHelper.setLeftAndRightOffset(i12);
            this.mTempLeftRightOffset = 0;
            return true;
        }
        return true;
    }
}
