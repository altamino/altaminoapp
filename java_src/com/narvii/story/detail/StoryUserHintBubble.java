package com.narvii.story.detail;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import com.narvii.amino.R;
import com.narvii.util.ToolTipHelper;
import com.narvii.util.Utils;
import com.narvii.widget.PopupBubble;

/* loaded from: classes3.dex */
public class StoryUserHintBubble extends PopupBubble implements ToolTipHelper.CustomTooltipBubble {
    private static final int LEFT = 1;
    private static final int RIGHT = 2;
    private int paddingHightLight;
    private int radius2;
    private int strokeColor2;
    private int strokeWidth2;

    public StoryUserHintBubble(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.StoryUserHintBubble);
        this.radius2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 60);
        this.strokeWidth2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, this.strokeWidth);
        this.strokeColor2 = typedArrayObtainStyledAttributes.getColor(1, this.strokeColor);
        this.paddingHightLight = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 15);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // com.narvii.widget.PopupBubble
    public void setIndicator(boolean z, int i) {
        super.setIndicator(z, i);
    }

    @Override // com.narvii.widget.PopupBubble, android.view.View
    protected void onDraw(Canvas canvas) {
        int iMin;
        char c;
        float f;
        Canvas canvas2;
        LinearGradient linearGradient;
        if (this.autoRtl && Utils.isRtl()) {
            iMin = Math.max(getWidth() - this.indicatorX, this.shadowSize);
        } else {
            iMin = Math.min(Math.max(this.indicatorX, this.shadowSize), getWidth() - this.shadowSize);
        }
        if (iMin < this.shadowSize + this.radius + this.indicatorSize) {
            c = 1;
        } else {
            if (iMin <= ((getWidth() - this.shadowSize) - this.radius) - this.indicatorSize) {
                super.onDraw(canvas);
                return;
            }
            c = 2;
        }
        int width = getWidth() - (this.shadowSize * 2);
        int height = getHeight();
        int i = this.shadowSize;
        int i2 = this.indicatorSize;
        int i3 = (height - (i * 2)) - i2;
        if (!this.indicatorTop) {
            i2 = 0;
        }
        int i4 = i + i2;
        int i5 = i4 + i3;
        int i6 = this.shadowSize;
        int i7 = i6 + width;
        int iMin2 = Math.min(this.radius, Math.min(width, i3) / 2);
        int iMin3 = Math.min(this.radius2, Math.min(width, i3) / 2);
        RectF rectF = new RectF();
        Path path = new Path();
        RectF rectF2 = new RectF();
        Path path2 = new Path();
        float f2 = i6;
        path.moveTo(f2, this.radius + i4);
        if (c == 1) {
            float f3 = i7 - iMin2;
            float f4 = i5;
            path.moveTo(f3, f4);
            if (this.indicatorTop) {
                path.lineTo(i6 + iMin3, f4);
                rectF.left = f2;
                int i8 = iMin3 * 2;
                rectF.top = i5 - i8;
                rectF.right = i8 + i6;
                rectF.bottom = f4;
                path.arcTo(rectF, 90.0f, 90.0f);
                float f5 = rectF.left;
                int i9 = this.paddingHightLight;
                rectF2.left = f5 + i9;
                rectF2.top = rectF.top + i9;
                rectF2.right = rectF.right - i9;
                rectF2.bottom = rectF.bottom - i9;
                path2.addArc(rectF2, 180.0f, 90.0f);
                path2.moveTo(rectF2.left, rectF2.centerY() - (this.strokeWidth2 * 2));
                path2.lineTo(rectF2.left, rectF2.centerY() - (this.strokeWidth2 * 2));
                path.lineTo(f2, i4 - this.indicatorSize);
                path.lineTo(i6 + this.indicatorSize, i4);
            } else {
                path.lineTo(this.indicatorSize + i6, f4);
                path.lineTo(f2, this.indicatorSize + i5);
                path.lineTo(f2, i4 + iMin3);
                rectF.left = f2;
                rectF.top = i4;
                int i10 = iMin3 * 2;
                rectF.right = i6 + i10;
                rectF.bottom = i10 + i4;
                path.arcTo(rectF, 180.0f, 90.0f);
                float f6 = rectF.left;
                int i11 = this.paddingHightLight;
                rectF2.left = f6 + i11;
                rectF2.top = rectF.top + i11;
                rectF2.right = rectF.right - i11;
                rectF2.bottom = rectF.bottom - i11;
                path2.addArc(rectF2, 180.0f, 90.0f);
                path2.moveTo(rectF2.left, rectF2.centerY() + (this.strokeWidth2 * 2));
                path2.lineTo(rectF2.left, rectF2.centerY() + (this.strokeWidth2 * 2));
            }
            float f7 = i4;
            path.lineTo(f3, f7);
            float f8 = i7 - (iMin2 * 2);
            rectF.left = f8;
            rectF.top = f7;
            float f9 = i7;
            rectF.right = f9;
            rectF.bottom = i4 + r2;
            path.arcTo(rectF, 270.0f, 90.0f);
            path.lineTo(f9, i5 - iMin2);
            rectF.left = f8;
            rectF.top = i5 - r2;
            rectF.right = f9;
            rectF.bottom = f4;
            path.arcTo(rectF, 0.0f, 90.0f);
        } else {
            float f10 = i6 + iMin2;
            float f11 = i4;
            path.moveTo(f10, f11);
            if (this.indicatorTop) {
                path.lineTo(i7 - this.indicatorSize, f11);
                float f12 = i7;
                path.lineTo(f12, i4 - this.indicatorSize);
                path.lineTo(f12, i5 - iMin3);
                int i12 = iMin3 * 2;
                rectF.left = i7 - i12;
                rectF.top = i5 - i12;
                rectF.right = f12;
                rectF.bottom = i5;
                path.arcTo(rectF, 0.0f, 90.0f);
                float f13 = rectF.left;
                int i13 = this.paddingHightLight;
                rectF2.left = f13 + i13;
                rectF2.top = rectF.top + i13;
                rectF2.right = rectF.right - i13;
                rectF2.bottom = rectF.bottom - i13;
                path2.addArc(rectF2, 0.0f, 90.0f);
                path2.moveTo(rectF2.right, rectF2.centerY() - (this.strokeWidth2 * 2));
                path2.lineTo(rectF2.right, rectF2.centerY() - (this.strokeWidth2 * 2));
                f = f11;
            } else {
                path.lineTo(i7 - iMin3, f11);
                int i14 = iMin3 * 2;
                rectF.left = i7 - i14;
                rectF.top = f11;
                float f14 = i7;
                rectF.right = f14;
                rectF.bottom = i14 + i4;
                path.arcTo(rectF, 270.0f, 90.0f);
                float f15 = rectF.left;
                int i15 = this.paddingHightLight;
                f = f11;
                rectF2.left = f15 + i15;
                rectF2.top = rectF.top + i15;
                rectF2.right = rectF.right - i15;
                rectF2.bottom = rectF.bottom - i15;
                path2.addArc(rectF2, 270.0f, 90.0f);
                path2.moveTo(rectF2.right, rectF2.centerY() + (this.strokeWidth2 * 2));
                path2.lineTo(rectF2.right, rectF2.centerY() + (this.strokeWidth2 * 2));
                path.lineTo(f14, this.indicatorSize + i5);
                path.lineTo(i7 - this.indicatorSize, i5);
            }
            float f16 = i5;
            path.lineTo(f10, f16);
            rectF.left = f2;
            rectF.top = i5 - r1;
            float f17 = i6 + (iMin2 * 2);
            rectF.right = f17;
            rectF.bottom = f16;
            path.arcTo(rectF, 90.0f, 90.0f);
            path.lineTo(f2, iMin2 + i4);
            rectF.left = f2;
            rectF.top = f;
            rectF.right = f17;
            rectF.bottom = i4 + r1;
            path.arcTo(rectF, 180.0f, 90.0f);
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        int i16 = this.shadowSize;
        if (i16 != 0) {
            paint.setMaskFilter(new BlurMaskFilter(i16, BlurMaskFilter.Blur.NORMAL));
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
        if (Utils.isRtl()) {
            linearGradient = new LinearGradient(getMeasuredWidth(), 0.0f, 0.0f, getMeasuredHeight(), new int[]{-15872, -20736}, (float[]) null, Shader.TileMode.REPEAT);
        } else {
            linearGradient = new LinearGradient(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), new int[]{-15872, -20736}, (float[]) null, Shader.TileMode.REPEAT);
        }
        paint.setShader(linearGradient);
        canvas2.drawPath(path, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.strokeWidth);
        paint.setColor(this.strokeColor);
        paint.setShader(null);
        canvas2.drawPath(path, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.strokeWidth2);
        paint.setColor(this.strokeColor2);
        paint.setStrokeCap(Paint.Cap.ROUND);
        canvas2.drawPath(path2, paint);
    }

    @Override // com.narvii.util.ToolTipHelper.CustomTooltipBubble
    public int getLayoutMarginLeft(Rect rect, int i) {
        int measuredWidth = getMeasuredWidth();
        int iCenterX = rect.centerX() - this.shadowSize;
        int i2 = iCenterX + measuredWidth;
        int iCenterX2 = (rect.centerX() + this.shadowSize) - measuredWidth;
        if (iCenterX2 >= 0 || i2 <= i) {
            return iCenterX2 < 0 ? iCenterX : (i2 <= i && rect.centerX() >= i / 2) ? iCenterX : iCenterX2;
        }
        int iCenterX3 = rect.centerX() - (measuredWidth / 2);
        int i3 = i / 2;
        if (rect.centerX() < i3) {
            iCenterX3 = Math.max(iCenterX3, 0);
        }
        return rect.centerX() > i3 ? Math.min(iCenterX3, i - measuredWidth) : iCenterX3;
    }
}
