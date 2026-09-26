package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes10.dex */
public class ShrinkLayout extends FrameLayout {
    View shrinkView;

    public ShrinkLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private boolean isRtl() {
        return Utils.isRtl();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            if (Utils.isEquals("shrink", getChildAt(i10).getTag())) {
                this.shrinkView = getChildAt(i10);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int paddingLeft;
        View childAt;
        int width = getWidth();
        if (isRtl()) {
            int measuredWidth = 0;
            for (int i14 = 0; i14 < getChildCount(); i14++) {
                View childAt2 = getChildAt(i14);
                if (childAt2.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt2.getLayoutParams();
                    measuredWidth += childAt2.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                }
            }
            paddingLeft = (width - measuredWidth) - getPaddingLeft();
        } else {
            paddingLeft = getPaddingLeft();
        }
        for (int i15 = 0; i15 < getChildCount(); i15++) {
            if (isRtl()) {
                childAt = getChildAt((getChildCount() - i15) - 1);
            } else {
                childAt = getChildAt(i15);
            }
            if (childAt.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int i16 = marginLayoutParams2.leftMargin + paddingLeft;
                int paddingTop = getPaddingTop() + ((((getHeight() - getPaddingTop()) - getPaddingBottom()) - childAt.getMeasuredHeight()) / 2);
                int measuredWidth2 = childAt.getMeasuredWidth() + i16;
                if (measuredWidth2 > (width - getPaddingRight()) - marginLayoutParams2.rightMargin) {
                    measuredWidth2 = (width - getPaddingRight()) - marginLayoutParams2.rightMargin;
                }
                childAt.layout(i16, paddingTop, measuredWidth2, childAt.getMeasuredHeight() + paddingTop);
                paddingLeft += childAt.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.shrinkView == null) {
            return;
        }
        int size = View.MeasureSpec.getSize(i10);
        int measuredWidth = 0;
        int measuredHeight = 0;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8 && childAt != this.shrinkView) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                measuredWidth += childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                int measuredHeight2 = childAt.getMeasuredHeight();
                if (measuredHeight2 > measuredHeight) {
                    measuredHeight = measuredHeight2;
                }
            }
        }
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.shrinkView.getLayoutParams();
        int measuredWidth2 = this.shrinkView.getMeasuredWidth();
        int i13 = marginLayoutParams2.rightMargin;
        int i14 = marginLayoutParams2.leftMargin;
        if (measuredWidth2 + i13 + i14 + measuredWidth > size) {
            this.shrinkView.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, ((size - measuredWidth) - i14) - i13), Integer.MIN_VALUE), i11);
        }
        if (this.shrinkView.getMeasuredHeight() > measuredHeight) {
            measuredHeight = this.shrinkView.getMeasuredHeight();
        }
        if (View.MeasureSpec.getMode(i10) != 1073741824) {
            size = measuredWidth + this.shrinkView.getMeasuredWidth() + marginLayoutParams2.rightMargin + marginLayoutParams2.leftMargin;
        }
        setMeasuredDimension(size, measuredHeight);
    }
}
