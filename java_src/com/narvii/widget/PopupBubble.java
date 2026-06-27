package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class PopupBubble extends FrameLayout {
    protected boolean autoRtl;
    protected int backgroundColor;
    protected int indicatorSize;
    protected boolean indicatorTop;
    protected int indicatorX;
    private boolean paddingIncludeRadius;
    protected int radius;
    protected int shadowColor;
    protected int shadowSize;
    protected int strokeColor;
    protected int strokeWidth;

    public PopupBubble(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.autoRtl = true;
        setLayerType(1, new Paint());
        setWillNotDraw(false);
        int[] iArr = R.styleable.PopupBubble;
        int i = R.style.PopupBubble;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i);
        this.radius = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PopupBubble_popupBubbleRadius, 20);
        this.shadowSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PopupBubble_popupBubbleShadowSize, 18);
        this.shadowColor = typedArrayObtainStyledAttributes.getColor(R.styleable.PopupBubble_popupBubbleShadowColor, ViewCompat.MEASURED_STATE_MASK);
        this.indicatorSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PopupBubble_popupBubbleIndicatorSize, ViewCompat.MEASURED_STATE_MASK);
        this.backgroundColor = typedArrayObtainStyledAttributes.getColor(R.styleable.PopupBubble_popupBubbleColor, -1);
        this.strokeWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.PopupBubble_popupBubbleStrokeWidth, 3);
        this.strokeColor = typedArrayObtainStyledAttributes.getColor(R.styleable.PopupBubble_popupBubbleStrokeColor, ViewCompat.MEASURED_STATE_MASK);
        this.paddingIncludeRadius = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PopupBubble_popupBubblePaddingIncludeRadius, true);
        updatePadding();
    }

    private void updatePadding() {
        int i = this.paddingIncludeRadius ? this.radius : 0;
        int i2 = this.shadowSize;
        setPadding(i2 + i, i2 + i + (this.indicatorTop ? this.indicatorSize : 0), i2 + i, this.shadowSize + i + (this.indicatorTop ? 0 : this.indicatorSize));
    }

    public void setIndicator(boolean z, int i) {
        this.indicatorTop = z;
        this.indicatorX = i;
        updatePadding();
        invalidate();
    }

    public void setAutoRtl(boolean z) {
        this.autoRtl = z;
        invalidate();
    }

    public void setBubbleBackgroundColor(int i) {
        this.backgroundColor = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int iMin;
        Canvas canvas2;
        super.onDraw(canvas);
        boolean z = this.indicatorTop;
        int i = this.radius;
        int i2 = this.shadowSize;
        int i3 = (z ? this.indicatorSize : 0) + i2;
        int i4 = this.indicatorSize;
        if (this.autoRtl) {
            if (Utils.isRtl()) {
                iMin = Math.max(getWidth() - this.indicatorX, this.radius + this.shadowSize);
            } else {
                iMin = Math.min(Math.max(this.indicatorX, this.radius + this.shadowSize + this.indicatorSize), ((getWidth() - this.radius) - this.shadowSize) - this.indicatorSize);
            }
        } else {
            iMin = Math.min(Math.max(this.indicatorX, this.radius + this.shadowSize + i4), ((getWidth() - this.radius) - this.shadowSize) - this.indicatorSize);
        }
        int i5 = i2 * 2;
        int width = getWidth() - i5;
        int height = (getHeight() - i5) - this.indicatorSize;
        RectF rectF = new RectF();
        Path path = new Path();
        float f = i2 + i;
        float f2 = i3;
        path.moveTo(f, f2);
        if (z) {
            path.lineTo(iMin - i4, f2);
            path.lineTo(iMin, i3 - i4);
            path.lineTo(iMin + i4, f2);
            path.lineTo((i2 + width) - i, f2);
        } else {
            path.lineTo((i2 + width) - i, f2);
        }
        int i6 = width + i2;
        int i7 = i * 2;
        float f3 = i6 - i7;
        rectF.left = f3;
        rectF.top = f2;
        float f4 = i6;
        rectF.right = f4;
        float f5 = i3 + i7;
        rectF.bottom = f5;
        path.arcTo(rectF, -90.0f, 90.0f);
        int i8 = height + i3;
        path.lineTo(f4, i8 - i);
        rectF.left = f3;
        float f6 = i8 - i7;
        rectF.top = f6;
        rectF.right = f4;
        float f7 = i8;
        rectF.bottom = f7;
        path.arcTo(rectF, 0.0f, 90.0f);
        if (z) {
            path.lineTo(f, f7);
        } else {
            path.lineTo(iMin + i4, f7);
            path.lineTo(iMin, i8 + i4);
            path.lineTo(iMin - i4, f7);
            path.lineTo(f, f7);
        }
        float f8 = i2;
        rectF.left = f8;
        rectF.top = f6;
        float f9 = i2 + i7;
        rectF.right = f9;
        rectF.bottom = f7;
        path.arcTo(rectF, 90.0f, 90.0f);
        path.lineTo(f8, i3 + i);
        rectF.left = f8;
        rectF.top = f2;
        rectF.right = f9;
        rectF.bottom = f5;
        path.arcTo(rectF, 180.0f, 90.0f);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        int i9 = this.shadowSize;
        if (i9 != 0) {
            paint.setMaskFilter(new BlurMaskFilter(i9, BlurMaskFilter.Blur.NORMAL));
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(this.shadowColor);
            canvas2 = canvas;
            canvas2.drawPath(path, paint);
        } else {
            canvas2 = canvas;
        }
        paint.setMaskFilter(null);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.backgroundColor);
        canvas2.drawPath(path, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.strokeWidth);
        paint.setColor(this.strokeColor);
        canvas2.drawPath(path, paint);
    }
}
