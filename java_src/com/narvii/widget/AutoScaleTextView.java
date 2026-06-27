package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class AutoScaleTextView extends TextView {
    private int defaultAtHeight;
    private int defaultAtWidth;
    private int defaultSize;
    private boolean excludePadding;
    private int maxSize;
    private int minSize;
    private int size;

    public AutoScaleTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AutoScaleTextView);
        int iRound = Math.round(getTextSize());
        this.defaultSize = iRound;
        this.size = iRound;
        this.defaultAtWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoScaleTextView_defaultAtWidth, 0);
        this.defaultAtHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoScaleTextView_defaultAtHeight, 0);
        this.maxSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoScaleTextView_maxScaleTextSize, this.defaultSize);
        this.minSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoScaleTextView_minScaleTextSize, this.defaultSize);
        this.excludePadding = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AutoScaleTextView_excludePadding, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setSize(int r5, int r6) {
        /*
            r4 = this;
            int r0 = r4.defaultAtWidth
            r1 = 1065353216(0x3f800000, float:1.0)
            r2 = 65535(0xffff, float:9.1834E-41)
            r3 = 0
            if (r0 <= 0) goto L2d
            if (r5 <= 0) goto L54
            if (r5 >= r2) goto L54
            boolean r6 = r4.excludePadding
            if (r6 == 0) goto L1c
            int r6 = r4.getPaddingLeft()
            int r5 = r5 - r6
            int r6 = r4.getPaddingRight()
            int r5 = r5 - r6
        L1c:
            int r6 = r4.defaultSize
            float r6 = (float) r6
            float r6 = r6 * r1
            float r5 = (float) r5
            float r6 = r6 * r5
            int r5 = r4.defaultAtWidth
            float r5 = (float) r5
            float r6 = r6 / r5
            int r5 = java.lang.Math.round(r6)
            goto L55
        L2d:
            int r5 = r4.defaultAtHeight
            if (r5 <= 0) goto L54
            if (r6 <= 0) goto L54
            if (r6 >= r2) goto L54
            boolean r5 = r4.excludePadding
            if (r5 == 0) goto L43
            int r5 = r4.getPaddingTop()
            int r6 = r6 - r5
            int r5 = r4.getPaddingBottom()
            int r6 = r6 - r5
        L43:
            int r5 = r4.defaultSize
            float r5 = (float) r5
            float r5 = r5 * r1
            float r6 = (float) r6
            float r5 = r5 * r6
            int r6 = r4.defaultAtHeight
            float r6 = (float) r6
            float r5 = r5 / r6
            int r5 = java.lang.Math.round(r5)
            goto L55
        L54:
            r5 = 0
        L55:
            if (r5 <= 0) goto L6b
            int r6 = r4.minSize
            if (r5 >= r6) goto L5c
            r5 = r6
        L5c:
            int r6 = r4.maxSize
            if (r5 <= r6) goto L61
            r5 = r6
        L61:
            int r6 = r4.size
            if (r5 == r6) goto L6b
            float r6 = (float) r5
            r4.setTextSize(r3, r6)
            r4.size = r5
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.AutoScaleTextView.setSize(int, int):void");
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        setSize((mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.getSize(i) : 0, (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? View.MeasureSpec.getSize(i2) : 0);
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setSize(getWidth(), getHeight());
    }
}
