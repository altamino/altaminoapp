package com.narvii.nvplayerview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
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

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ratio = -1.0f;
        this.scaleType = 0;
    }

    public void setScaleType(int i) {
        if (i != this.scaleType) {
            this.scaleType = i;
            requestLayout();
        }
    }

    public void setVideoSize(int i, int i2) {
        if (this.videoWidth == i && this.videoHeight == i2) {
            return;
        }
        this.videoWidth = i;
        this.videoHeight = i2;
        if (i != 0 && i2 != 0) {
            this.ratio = (this.videoWidth * 1.0f) / this.videoHeight;
        }
        requestLayout();
    }

    public void setPredictedRatio(float f) {
        this.ratio = f;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b2  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r19, int r20) {
        /*
            r18 = this;
            r0 = r18
            int r1 = r0.videoWidth
            if (r1 <= 0) goto La
            int r1 = r0.videoHeight
            if (r1 > 0) goto L11
        La:
            float r1 = r0.ratio
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 <= 0) goto Lb2
        L11:
            int r1 = android.view.View.MeasureSpec.getSize(r19)
            int r2 = android.view.View.MeasureSpec.getSize(r20)
            int r3 = r0.videoWidth
            if (r3 <= 0) goto L21
            int r3 = r0.videoHeight
            if (r3 > 0) goto L2e
        L21:
            float r3 = r0.ratio
            r4 = 1120403456(0x42c80000, float:100.0)
            float r3 = r3 * r4
            int r3 = (int) r3
            r0.videoWidth = r3
            r3 = 100
            r0.videoHeight = r3
        L2e:
            int r3 = r18.getPaddingLeft()
            int r4 = r18.getPaddingRight()
            int r3 = r3 + r4
            int r4 = r18.getPaddingTop()
            int r5 = r18.getPaddingBottom()
            int r4 = r4 + r5
            int r1 = r1 - r3
            int r2 = r2 - r4
            double r5 = (double) r1
            double r7 = (double) r2
            java.lang.Double.isNaN(r5)
            java.lang.Double.isNaN(r7)
            double r9 = r5 / r7
            int r11 = r0.videoWidth
            double r11 = (double) r11
            int r13 = r0.videoHeight
            double r13 = (double) r13
            java.lang.Double.isNaN(r11)
            java.lang.Double.isNaN(r13)
            double r11 = r11 / r13
            r13 = 4616189618054758400(0x4010000000000000, double:4.0)
            int r15 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r15 > 0) goto L65
            r13 = 4598175219545276416(0x3fd0000000000000, double:0.25)
            int r15 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r15 >= 0) goto L68
        L65:
            r13 = 0
            r0.scaleType = r13
        L68:
            double r9 = r11 / r9
            r13 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r9 = r9 - r13
            double r13 = java.lang.Math.abs(r9)
            r15 = 4576918229175238656(0x3f847ae140000000, double:0.009999999776482582)
            int r17 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r17 <= 0) goto Lb2
            int r13 = r0.scaleType
            r14 = 0
            if (r13 != 0) goto L91
            int r13 = (r9 > r14 ? 1 : (r9 == r14 ? 0 : -1))
            if (r13 <= 0) goto L8a
            java.lang.Double.isNaN(r5)
            double r5 = r5 / r11
            int r2 = (int) r5
            goto La5
        L8a:
            java.lang.Double.isNaN(r7)
        L8d:
            double r7 = r7 * r11
            int r1 = (int) r7
            goto La5
        L91:
            r16 = r1
            r1 = 1
            if (r13 != r1) goto La3
            int r1 = (r9 > r14 ? 1 : (r9 == r14 ? 0 : -1))
            if (r1 <= 0) goto L9e
            java.lang.Double.isNaN(r7)
            goto L8d
        L9e:
            java.lang.Double.isNaN(r5)
            double r5 = r5 / r11
            int r2 = (int) r5
        La3:
            r1 = r16
        La5:
            int r1 = r1 + r3
            int r2 = r2 + r4
            r3 = 1073741824(0x40000000, float:2.0)
            int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r3)
            int r2 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r3)
            goto Lb6
        Lb2:
            r1 = r19
            r2 = r20
        Lb6:
            super.onMeasure(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.nvplayerview.AspectRatioFrameLayout.onMeasure(int, int):void");
    }

    public float getRatio() {
        return this.ratio;
    }

    public int getScaleType() {
        return this.scaleType;
    }
}
