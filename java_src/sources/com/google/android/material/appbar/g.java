package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
abstract class g extends h<View> {
    private int overlayTop;
    final Rect tempRect1;
    final Rect tempRect2;
    private int verticalLayoutGap;

    public g() {
        this.tempRect1 = new Rect();
        this.tempRect2 = new Rect();
        this.verticalLayoutGap = 0;
    }

    private static int resolveGravity(int i10) {
        if (i10 == 0) {
            return 8388659;
        }
        return i10;
    }

    protected boolean a() {
        return false;
    }

    @Nullable
    abstract View findFirstDependency(List<View> list);

    float getOverlapRatioForOffset(View view) {
        return 1.0f;
    }

    public final int getOverlayTop() {
        return this.overlayTop;
    }

    final int getVerticalLayoutGap() {
        return this.verticalLayoutGap;
    }

    public final void setOverlayTop(int i10) {
        this.overlayTop = i10;
    }

    final int getOverlapPixelsForOffset(View view) {
        if (this.overlayTop == 0) {
            return 0;
        }
        float overlapRatioForOffset = getOverlapRatioForOffset(view);
        int i10 = this.overlayTop;
        return MathUtils.b((int) (overlapRatioForOffset * i10), 0, i10);
    }

    int getScrollRange(@NonNull View view) {
        return view.getMeasuredHeight();
    }

    @Override // com.google.android.material.appbar.h
    protected void layoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10) {
        View viewFindFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
        if (viewFindFirstDependency != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
            Rect rect = this.tempRect1;
            rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, viewFindFirstDependency.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((coordinatorLayout.getHeight() + viewFindFirstDependency.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.A(coordinatorLayout) && !ViewCompat.A(view)) {
                rect.left += lastWindowInsets.k();
                rect.right -= lastWindowInsets.l();
            }
            Rect rect2 = this.tempRect2;
            GravityCompat.a(resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i10);
            int overlapPixelsForOffset = getOverlapPixelsForOffset(viewFindFirstDependency);
            view.layout(rect2.left, rect2.top - overlapPixelsForOffset, rect2.right, rect2.bottom - overlapPixelsForOffset);
            this.verticalLayoutGap = rect2.top - viewFindFirstDependency.getBottom();
            return;
        }
        super.layoutChild(coordinatorLayout, view, i10);
        this.verticalLayoutGap = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i10, int i11, int i12, int i13) {
        View viewFindFirstDependency;
        int i14;
        WindowInsetsCompat lastWindowInsets;
        int i15 = view.getLayoutParams().height;
        if ((i15 == -1 || i15 == -2) && (viewFindFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view))) != null) {
            int size = View.MeasureSpec.getSize(i12);
            if (size > 0) {
                if (ViewCompat.A(viewFindFirstDependency) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
                    size += lastWindowInsets.m() + lastWindowInsets.j();
                }
            } else {
                size = coordinatorLayout.getHeight();
            }
            int scrollRange = size + getScrollRange(viewFindFirstDependency);
            int measuredHeight = viewFindFirstDependency.getMeasuredHeight();
            if (a()) {
                view.setTranslationY(-measuredHeight);
            } else {
                scrollRange -= measuredHeight;
            }
            if (i15 == -1) {
                i14 = 1073741824;
            } else {
                i14 = Integer.MIN_VALUE;
            }
            coordinatorLayout.onMeasureChild(view, i10, i11, View.MeasureSpec.makeMeasureSpec(scrollRange, i14), i13);
            return true;
        }
        return false;
    }

    public g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tempRect1 = new Rect();
        this.tempRect2 = new Rect();
        this.verticalLayoutGap = 0;
    }
}
