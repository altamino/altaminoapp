package com.narvii.nvplayerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class AspectRatioFrameLayout extends FrameLayout {
    private static final int CENTER_CROP_SCALE_TYPE = 1;
    private static final int FIT_CENTER_SCALE_TYPE = 0;
    private static final float MAX_ASPECT_RATIO_DEFORMATION_FRACTION = 0.01f;
    private static final float VIDEO_ASPECT_RATIO_FLOOR_LIMIT = 0.25f;
    private static final float VIDEO_ASPECT_RATIO_UPPER_LIMIT = 4.0f;
    private float ratio;
    private int scaleType;
    private int videoHeight;
    private int videoWidth;

    public AspectRatioFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    public float getRatio() {
        return this.ratio;
    }

    public int getScaleType() {
        return this.scaleType;
    }

    public void setPredictedRatio(float f) {
        this.ratio = f;
    }

    public AspectRatioFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x007a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0098  */
    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        if ((this.videoWidth <= 0 || this.videoHeight <= 0) && this.ratio <= 0.0f) {
            iMakeMeasureSpec = i10;
            iMakeMeasureSpec2 = i11;
        } else {
            int size = View.MeasureSpec.getSize(i10);
            int size2 = View.MeasureSpec.getSize(i11);
            if (this.videoWidth <= 0 || this.videoHeight <= 0) {
                this.videoWidth = (int) (this.ratio * 100.0f);
                this.videoHeight = 100;
            }
            int paddingLeft = getPaddingLeft() + getPaddingRight();
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int i12 = size - paddingLeft;
            int i13 = size2 - paddingTop;
            double d = i12;
            double d2 = i13;
            double d6 = d / d2;
            double d7 = ((double) this.videoWidth) / ((double) this.videoHeight);
            if (d7 > 4.0d || d7 < 0.25d) {
                this.scaleType = 0;
            }
            double d10 = (d7 / d6) - 1.0d;
            if (Math.abs(d10) > 0.009999999776482582d) {
                int i14 = this.scaleType;
                if (i14 != 0) {
                    if (i14 == 1) {
                        if (d10 > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                            i12 = (int) (d2 * d7);
                        } else {
                            i13 = (int) (d / d7);
                        }
                    }
                    i12 = i12;
                } else if (d10 > com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) {
                    i13 = (int) (d / d7);
                } else {
                    i12 = (int) (d2 * d7);
                }
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12 + paddingLeft, 1073741824);
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i13 + paddingTop, 1073741824);
            } else {
                iMakeMeasureSpec = i10;
                iMakeMeasureSpec2 = i11;
            }
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
    }

    public void setScaleType(int i10) {
        if (i10 != this.scaleType) {
            this.scaleType = i10;
            requestLayout();
        }
    }

    public void setVideoSize(int i10, int i11) {
        if (this.videoWidth == i10 && this.videoHeight == i11) {
            return;
        }
        this.videoWidth = i10;
        this.videoHeight = i11;
        if (i10 != 0 && i11 != 0) {
            this.ratio = (i10 * 1.0f) / i11;
        }
        requestLayout();
    }

    public AspectRatioFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.ratio = -1.0f;
        this.scaleType = 0;
    }
}
