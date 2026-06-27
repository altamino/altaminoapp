package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class ShrinkLayout extends FrameLayout {
    View shrinkView;

    public ShrinkLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        for (int i = 0; i < getChildCount(); i++) {
            if (Utils.isEquals("shrink", getChildAt(i).getTag())) {
                this.shrinkView = getChildAt(i);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft;
        View childAt;
        int width = getWidth();
        if (isRtl()) {
            int measuredWidth = 0;
            for (int i5 = 0; i5 < getChildCount(); i5++) {
                View childAt2 = getChildAt(i5);
                if (childAt2.getVisibility() != 8) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt2.getLayoutParams();
                    measuredWidth += childAt2.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                }
            }
            paddingLeft = (width - measuredWidth) - getPaddingLeft();
        } else {
            paddingLeft = getPaddingLeft();
        }
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            if (isRtl()) {
                childAt = getChildAt((getChildCount() - i6) - 1);
            } else {
                childAt = getChildAt(i6);
            }
            if (childAt.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int i7 = marginLayoutParams2.leftMargin + paddingLeft;
                int paddingTop = getPaddingTop() + ((((getHeight() - getPaddingTop()) - getPaddingBottom()) - childAt.getMeasuredHeight()) / 2);
                int measuredWidth2 = childAt.getMeasuredWidth() + i7;
                if (measuredWidth2 > (width - getPaddingRight()) - marginLayoutParams2.rightMargin) {
                    measuredWidth2 = (width - getPaddingRight()) - marginLayoutParams2.rightMargin;
                }
                childAt.layout(i7, paddingTop, measuredWidth2, childAt.getMeasuredHeight() + paddingTop);
                paddingLeft += childAt.getMeasuredWidth() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin;
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.shrinkView == null) {
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = 0;
        int measuredHeight = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
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
        int i4 = marginLayoutParams2.rightMargin;
        int i5 = marginLayoutParams2.leftMargin;
        if (measuredWidth2 + i4 + i5 + measuredWidth > size) {
            this.shrinkView.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, ((size - measuredWidth) - i5) - i4), Integer.MIN_VALUE), i2);
        }
        if (this.shrinkView.getMeasuredHeight() > measuredHeight) {
            measuredHeight = this.shrinkView.getMeasuredHeight();
        }
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            size = measuredWidth + this.shrinkView.getMeasuredWidth() + marginLayoutParams2.rightMargin + marginLayoutParams2.leftMargin;
        }
        setMeasuredDimension(size, measuredHeight);
    }

    private boolean isRtl() {
        return Utils.isRtl();
    }
}
