package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes11.dex */
public class VerticalSeekBarWrapper extends FrameLayout {
    public VerticalSeekBarWrapper(Context context) {
        this(context, null, 0);
    }

    void applyViewRotation() {
        applyViewRotation(getWidth(), getHeight());
    }

    public VerticalSeekBarWrapper(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void applyViewRotation(int i10, int i11) {
        VerticalSeekBar childSeekBar = getChildSeekBar();
        if (childSeekBar != null) {
            boolean z6 = ViewCompat.D(this) == 0;
            int rotationAngle = childSeekBar.getRotationAngle();
            int measuredWidth = childSeekBar.getMeasuredWidth();
            int measuredHeight = childSeekBar.getMeasuredHeight();
            int paddingLeft = getPaddingLeft() + getPaddingRight();
            int paddingTop = getPaddingTop() + getPaddingBottom();
            float fMax = (Math.max(0, i10 - paddingLeft) - measuredHeight) * 0.5f;
            ViewGroup.LayoutParams layoutParams = childSeekBar.getLayoutParams();
            int i12 = i11 - paddingTop;
            layoutParams.width = Math.max(0, i12);
            layoutParams.height = -2;
            childSeekBar.setLayoutParams(layoutParams);
            ViewCompat.N0(childSeekBar, z6 ? 0.0f : Math.max(0, i12));
            ViewCompat.O0(childSeekBar, 0.0f);
            if (rotationAngle == 90) {
                ViewCompat.Q0(childSeekBar, 90.0f);
                if (z6) {
                    ViewCompat.X0(childSeekBar, measuredHeight + fMax);
                    ViewCompat.Y0(childSeekBar, 0.0f);
                    return;
                } else {
                    ViewCompat.X0(childSeekBar, -fMax);
                    ViewCompat.Y0(childSeekBar, measuredWidth);
                    return;
                }
            }
            if (rotationAngle != 270) {
                return;
            }
            ViewCompat.Q0(childSeekBar, 270.0f);
            if (z6) {
                ViewCompat.X0(childSeekBar, fMax);
                ViewCompat.Y0(childSeekBar, measuredWidth);
            } else {
                ViewCompat.X0(childSeekBar, -(measuredHeight + fMax));
                ViewCompat.Y0(childSeekBar, 0.0f);
            }
        }
    }

    public VerticalSeekBarWrapper(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    private VerticalSeekBar getChildSeekBar() {
        View childAt;
        if (getChildCount() > 0) {
            childAt = getChildAt(0);
        } else {
            childAt = null;
        }
        if (!(childAt instanceof VerticalSeekBar)) {
            return null;
        }
        return (VerticalSeekBar) childAt;
    }

    private void onSizeChangedTraditionalRotation(int i10, int i11, int i12, int i13) {
        VerticalSeekBar childSeekBar = getChildSeekBar();
        if (childSeekBar != null) {
            int paddingLeft = getPaddingLeft() + getPaddingRight();
            int paddingTop = getPaddingTop() + getPaddingBottom();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childSeekBar.getLayoutParams();
            layoutParams.width = -2;
            int i14 = i11 - paddingTop;
            layoutParams.height = Math.max(0, i14);
            childSeekBar.setLayoutParams(layoutParams);
            childSeekBar.measure(0, 0);
            int measuredWidth = childSeekBar.getMeasuredWidth();
            int i15 = i10 - paddingLeft;
            childSeekBar.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, i15), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(Math.max(0, i14), 1073741824));
            layoutParams.gravity = 51;
            layoutParams.leftMargin = (Math.max(0, i15) - measuredWidth) / 2;
            childSeekBar.setLayoutParams(layoutParams);
        }
        super.onSizeChanged(i10, i11, i12, i13);
    }

    private void onSizeChangedUseViewRotation(int i10, int i11, int i12, int i13) {
        VerticalSeekBar childSeekBar = getChildSeekBar();
        if (childSeekBar != null) {
            childSeekBar.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, i11 - (getPaddingTop() + getPaddingBottom())), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.max(0, i10 - (getPaddingLeft() + getPaddingRight())), Integer.MIN_VALUE));
        }
        applyViewRotation(i10, i11);
        super.onSizeChanged(i10, i11, i12, i13);
    }

    private boolean useViewRotation() {
        VerticalSeekBar childSeekBar = getChildSeekBar();
        if (childSeekBar != null) {
            return childSeekBar.useViewRotation();
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int measuredWidth;
        int measuredHeight;
        VerticalSeekBar childSeekBar = getChildSeekBar();
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (childSeekBar != null && mode != 1073741824) {
            int paddingLeft = getPaddingLeft() + getPaddingRight();
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingLeft), mode);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, size2 - paddingTop), mode2);
            if (useViewRotation()) {
                childSeekBar.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
                measuredWidth = childSeekBar.getMeasuredHeight();
                measuredHeight = childSeekBar.getMeasuredWidth();
            } else {
                childSeekBar.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                measuredWidth = childSeekBar.getMeasuredWidth();
                measuredHeight = childSeekBar.getMeasuredHeight();
            }
            setMeasuredDimension(ViewCompat.r0(measuredWidth + paddingLeft, i10, 0), ViewCompat.r0(measuredHeight + paddingTop, i11, 0));
            return;
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        if (useViewRotation()) {
            onSizeChangedUseViewRotation(i10, i11, i12, i13);
        } else {
            onSizeChangedTraditionalRotation(i10, i11, i12, i13);
        }
    }
}
