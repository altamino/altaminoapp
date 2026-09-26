package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes8.dex */
class h<V extends View> extends CoordinatorLayout.Behavior<V> {
    private int tempLeftRightOffset;
    private int tempTopBottomOffset;
    private i viewOffsetHelper;

    public h() {
        this.tempTopBottomOffset = 0;
        this.tempLeftRightOffset = 0;
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tempTopBottomOffset = 0;
        this.tempLeftRightOffset = 0;
    }

    public int getTopAndBottomOffset() {
        i iVar = this.viewOffsetHelper;
        if (iVar != null) {
            return iVar.c();
        }
        return 0;
    }

    public boolean setTopAndBottomOffset(int i10) {
        i iVar = this.viewOffsetHelper;
        if (iVar != null) {
            return iVar.f(i10);
        }
        this.tempTopBottomOffset = i10;
        return false;
    }

    protected void layoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, int i10) {
        coordinatorLayout.onLayoutChild(v5, i10);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v5, int i10) {
        layoutChild(coordinatorLayout, v5, i10);
        if (this.viewOffsetHelper == null) {
            this.viewOffsetHelper = new i(v5);
        }
        this.viewOffsetHelper.d();
        this.viewOffsetHelper.a();
        int i11 = this.tempTopBottomOffset;
        if (i11 != 0) {
            this.viewOffsetHelper.f(i11);
            this.tempTopBottomOffset = 0;
        }
        int i12 = this.tempLeftRightOffset;
        if (i12 != 0) {
            this.viewOffsetHelper.e(i12);
            this.tempLeftRightOffset = 0;
            return true;
        }
        return true;
    }
}
