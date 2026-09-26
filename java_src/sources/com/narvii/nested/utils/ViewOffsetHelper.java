package com.narvii.nested.utils;

import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes11.dex */
public class ViewOffsetHelper {
    private int mLayoutLeft;
    private int mLayoutTop;
    private int mOffsetLeft;
    private int mOffsetTop;
    private final View mView;

    public int getLayoutLeft() {
        return this.mLayoutLeft;
    }

    public int getLayoutTop() {
        return this.mLayoutTop;
    }

    public int getLeftAndRightOffset() {
        return this.mOffsetLeft;
    }

    public int getTopAndBottomOffset() {
        return this.mOffsetTop;
    }

    private void updateOffsets() {
        View view = this.mView;
        ViewCompat.e0(view, this.mOffsetTop - (view.getTop() - this.mLayoutTop));
        View view2 = this.mView;
        ViewCompat.d0(view2, this.mOffsetLeft - (view2.getLeft() - this.mLayoutLeft));
    }

    public void onViewLayout() {
        this.mLayoutTop = this.mView.getTop();
        this.mLayoutLeft = this.mView.getLeft();
        updateOffsets();
    }

    public boolean setLeftAndRightOffset(int i10) {
        if (this.mOffsetLeft == i10) {
            return false;
        }
        this.mOffsetLeft = i10;
        updateOffsets();
        return true;
    }

    public boolean setTopAndBottomOffset(int i10) {
        if (this.mOffsetTop == i10) {
            return false;
        }
        this.mOffsetTop = i10;
        updateOffsets();
        return true;
    }

    public ViewOffsetHelper(View view) {
        this.mView = view;
    }
}
