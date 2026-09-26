package com.narvii.nested.behavior;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {
    private int mOverlayTop;
    public final Rect mTempRect1;
    public final Rect mTempRect2;
    private int mVerticalLayoutGap;

    public HeaderScrollingViewBehavior() {
        this.mTempRect1 = new Rect();
        this.mTempRect2 = new Rect();
        this.mVerticalLayoutGap = 0;
    }

    private static int resolveGravity(int i10) {
        if (i10 == 0) {
            return 8388659;
        }
        return i10;
    }

    public abstract View findFirstDependency(List<View> list);

    public float getOverlapRatioForOffset(View view) {
        return 1.0f;
    }

    public final int getOverlayTop() {
        return this.mOverlayTop;
    }

    public final int getVerticalLayoutGap() {
        return this.mVerticalLayoutGap;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
        View viewFindFirstDependency;
        int i14 = view.getLayoutParams().height;
        if ((i14 != -1 && i14 != -2) || (viewFindFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        if (ViewCompat.A(viewFindFirstDependency) && !ViewCompat.A(view)) {
            ViewCompat.D0(view, true);
            if (ViewCompat.A(view)) {
                view.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(i12);
        if (size == 0) {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.onMeasureChild(view, i10, i11, View.MeasureSpec.makeMeasureSpec((size - viewFindFirstDependency.getMeasuredHeight()) + getScrollRange(viewFindFirstDependency), i14 == -1 ? 1073741824 : Integer.MIN_VALUE), i13);
        return true;
    }

    public final void setOverlayTop(int i10) {
        this.mOverlayTop = i10;
    }

    public final int getOverlapPixelsForOffset(View view) {
        if (this.mOverlayTop == 0) {
            return 0;
        }
        float overlapRatioForOffset = getOverlapRatioForOffset(view);
        int i10 = this.mOverlayTop;
        return MathUtils.b((int) (overlapRatioForOffset * i10), 0, i10);
    }

    public int getScrollRange(View view) {
        return view.getMeasuredHeight();
    }

    @Override // com.narvii.nested.behavior.ViewOffsetBehavior
    protected void layoutChild(CoordinatorLayout coordinatorLayout, View view, int i10) {
        View viewFindFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
        if (viewFindFirstDependency != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
            Rect rect = this.mTempRect1;
            rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, viewFindFirstDependency.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((coordinatorLayout.getHeight() + viewFindFirstDependency.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.A(coordinatorLayout) && !ViewCompat.A(view)) {
                rect.left += lastWindowInsets.k();
                rect.right -= lastWindowInsets.l();
            }
            Rect rect2 = this.mTempRect2;
            GravityCompat.a(resolveGravity(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i10);
            int overlapPixelsForOffset = getOverlapPixelsForOffset(viewFindFirstDependency);
            view.layout(rect2.left, rect2.top - overlapPixelsForOffset, rect2.right, rect2.bottom - overlapPixelsForOffset);
            this.mVerticalLayoutGap = rect2.top - viewFindFirstDependency.getBottom();
            return;
        }
        super.layoutChild(coordinatorLayout, view, i10);
        this.mVerticalLayoutGap = 0;
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempRect1 = new Rect();
        this.mTempRect2 = new Rect();
        this.mVerticalLayoutGap = 0;
    }
}
