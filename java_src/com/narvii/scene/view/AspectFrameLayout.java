package com.narvii.scene.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class AspectFrameLayout extends FrameLayout {
    private static final String TAG = AspectFrameLayout.class.getSimpleName();
    private double mTargetAspect;

    public AspectFrameLayout(Context context) {
        super(context);
        this.mTargetAspect = -1.0d;
    }

    public AspectFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTargetAspect = -1.0d;
    }

    public void setAspectRatio(double d) {
        if (d < 0.0d) {
            throw new IllegalArgumentException();
        }
        Log.d(TAG, "Setting aspect ratio to " + d + " (was " + this.mTargetAspect + ")");
        if (this.mTargetAspect != d) {
            this.mTargetAspect = d;
            requestLayout();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        Log.d(TAG, "onMeasure target=" + this.mTargetAspect + " width=[" + View.MeasureSpec.toString(i) + "] height=[" + View.MeasureSpec.toString(i2) + "]");
        if (this.mTargetAspect > 0.0d) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int paddingLeft = getPaddingLeft() + getPaddingRight();
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int i3 = size - paddingLeft;
            int i4 = size2 - paddingTop;
            double d = i3;
            double d2 = i4;
            Double.isNaN(d);
            Double.isNaN(d2);
            double d3 = (this.mTargetAspect / (d / d2)) - 1.0d;
            if (Math.abs(d3) < 0.01d) {
                Log.d(TAG, "aspect ratio is good (target=" + this.mTargetAspect + ", view=" + i3 + "x" + i4 + ")");
                iMakeMeasureSpec = i;
                iMakeMeasureSpec2 = i2;
            } else {
                if (d3 > 0.0d) {
                    double d4 = this.mTargetAspect;
                    Double.isNaN(d);
                    i4 = (int) (d / d4);
                } else {
                    double d5 = this.mTargetAspect;
                    Double.isNaN(d2);
                    i3 = (int) (d2 * d5);
                }
                Log.d(TAG, "new size=" + i3 + "x" + i4 + " + padding " + paddingLeft + "x" + paddingTop);
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3 + paddingLeft, 1073741824);
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4 + paddingTop, 1073741824);
            }
        } else {
            iMakeMeasureSpec = i;
            iMakeMeasureSpec2 = i2;
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }
}
