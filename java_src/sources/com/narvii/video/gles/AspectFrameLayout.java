package com.narvii.video.gles;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.firebase.remoteconfig.a;

/* JADX INFO: loaded from: classes10.dex */
public class AspectFrameLayout extends FrameLayout {
    private static final String TAG = "AspectFrameLayout";
    private double mTargetAspect;

    public AspectFrameLayout(Context context) {
        super(context);
        this.mTargetAspect = -1.0d;
    }

    public AspectFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTargetAspect = -1.0d;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        String str = TAG;
        Log.d(str, "onMeasure target=" + this.mTargetAspect + " width=[" + View.MeasureSpec.toString(i10) + "] height=[" + View.MeasureSpec.toString(i11) + "]");
        if (this.mTargetAspect > a.DEFAULT_VALUE_FOR_DOUBLE) {
            int size = View.MeasureSpec.getSize(i10);
            int size2 = View.MeasureSpec.getSize(i11);
            int paddingLeft = getPaddingLeft() + getPaddingRight();
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int i12 = size - paddingLeft;
            int i13 = size2 - paddingTop;
            double d = i12;
            double d2 = i13;
            double d6 = (this.mTargetAspect / (d / d2)) - 1.0d;
            if (Math.abs(d6) < 0.01d) {
                Log.d(str, "aspect ratio is good (target=" + this.mTargetAspect + ", view=" + i12 + "x" + i13 + ")");
                iMakeMeasureSpec = i10;
                iMakeMeasureSpec2 = i11;
            } else {
                if (d6 > a.DEFAULT_VALUE_FOR_DOUBLE) {
                    i13 = (int) (d / this.mTargetAspect);
                } else {
                    i12 = (int) (d2 * this.mTargetAspect);
                }
                Log.d(str, "new size=" + i12 + "x" + i13 + " + padding " + paddingLeft + "x" + paddingTop);
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12 + paddingLeft, 1073741824);
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i13 + paddingTop, 1073741824);
            }
        } else {
            iMakeMeasureSpec = i10;
            iMakeMeasureSpec2 = i11;
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    public void setAspectRatio(double d) {
        if (d < a.DEFAULT_VALUE_FOR_DOUBLE) {
            throw new IllegalArgumentException();
        }
        Log.d(TAG, "Setting aspect ratio to " + d + " (was " + this.mTargetAspect + ")");
        if (this.mTargetAspect != d) {
            this.mTargetAspect = d;
            requestLayout();
        }
    }
}
