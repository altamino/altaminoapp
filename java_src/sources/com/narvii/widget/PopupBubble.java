package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes9.dex */
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

    private void updatePadding() {
        int i10 = this.paddingIncludeRadius ? this.radius : 0;
        int i11 = this.shadowSize;
        int i12 = i11 + i10;
        int i13 = i11 + i10;
        int i14 = i11 + i10;
        boolean z6 = this.indicatorTop;
        setPadding(i12, i14 + (z6 ? this.indicatorSize : 0), i13, i11 + i10 + (z6 ? 0 : this.indicatorSize));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int iMin;
        Canvas canvas2;
        super.onDraw(canvas);
        boolean z6 = this.indicatorTop;
        int i10 = this.radius;
        int i11 = this.shadowSize;
        int i12 = (z6 ? this.indicatorSize : 0) + i11;
        int i13 = this.indicatorSize;
        if (this.autoRtl) {
            iMin = Utils.isRtl() ? Math.max(getWidth() - this.indicatorX, this.radius + this.shadowSize) : Math.min(Math.max(this.indicatorX, this.radius + this.shadowSize + this.indicatorSize), ((getWidth() - this.radius) - this.shadowSize) - this.indicatorSize);
        } else {
            iMin = Math.min(Math.max(this.indicatorX, i10 + i11 + i13), ((getWidth() - this.radius) - this.shadowSize) - this.indicatorSize);
        }
        int i14 = i11 * 2;
        int width = getWidth() - i14;
        int height = (getHeight() - i14) - this.indicatorSize;
        RectF rectF = new RectF();
        Path path = new Path();
        float f = i11 + i10;
        float f6 = i12;
        path.moveTo(f, f6);
        if (z6) {
            path.lineTo(iMin - i13, f6);
            path.lineTo(iMin, i12 - i13);
            path.lineTo(iMin + i13, f6);
            path.lineTo((i11 + width) - i10, f6);
        } else {
            path.lineTo((i11 + width) - i10, f6);
        }
        int i15 = width + i11;
        int i16 = i10 * 2;
        float f7 = i15 - i16;
        rectF.left = f7;
        rectF.top = f6;
        float f10 = i15;
        rectF.right = f10;
        float f11 = i12 + i16;
        rectF.bottom = f11;
        path.arcTo(rectF, -90.0f, 90.0f);
        int i17 = height + i12;
        path.lineTo(f10, i17 - i10);
        rectF.left = f7;
        float f12 = i17 - i16;
        rectF.top = f12;
        rectF.right = f10;
        float f13 = i17;
        rectF.bottom = f13;
        path.arcTo(rectF, 0.0f, 90.0f);
        if (z6) {
            path.lineTo(f, f13);
        } else {
            path.lineTo(iMin + i13, f13);
            path.lineTo(iMin, i17 + i13);
            path.lineTo(iMin - i13, f13);
            path.lineTo(f, f13);
        }
        float f14 = i11;
        rectF.left = f14;
        rectF.top = f12;
        float f15 = i11 + i16;
        rectF.right = f15;
        rectF.bottom = f13;
        path.arcTo(rectF, 90.0f, 90.0f);
        path.lineTo(f14, i12 + i10);
        rectF.left = f14;
        rectF.top = f6;
        rectF.right = f15;
        rectF.bottom = f11;
        path.arcTo(rectF, 180.0f, 90.0f);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        if (this.shadowSize != 0) {
            paint.setMaskFilter(new BlurMaskFilter(this.shadowSize, BlurMaskFilter.Blur.NORMAL));
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

    public void setAutoRtl(boolean z6) {
        this.autoRtl = z6;
        invalidate();
    }

    public void setBubbleBackgroundColor(int i10) {
        this.backgroundColor = i10;
        invalidate();
    }

    public void setIndicator(boolean z6, int i10) {
        this.indicatorTop = z6;
        this.indicatorX = i10;
        updatePadding();
        invalidate();
    }

    public PopupBubble(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.autoRtl = true;
        setLayerType(1, new Paint());
        setWillNotDraw(false);
        int[] iArr = R.styleable.PopupBubble;
        int i10 = R.style.PopupBubble;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, i10);
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
}
