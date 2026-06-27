package com.narvii.video.attachment.caption;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class CaptionColorPickerView extends View {
    private static final int INNER_RADIUS = 4;
    private static final int OUTER_RADIUS = 4;
    private static final int SELECTED_RADIUS = 6;
    static Bitmap bitmap;
    static Paint bitmapPaint;
    boolean disabled;
    float halfStroke;
    private Paint mInnerPaint;
    private float mInnerRadius;
    private RectF mInnerRectF;
    private Paint mOuterPaint;
    private float mOuterRadius;
    private Paint mSelectedPaint;
    private float mSelectedRadius;
    private RectF mSelectedRectF;
    private boolean selected;
    Rect src;
    float strokeWidth;

    public CaptionColorPickerView(Context context) {
        this(context, null);
    }

    public CaptionColorPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public CaptionColorPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInnerRadius = Utils.dpToPx(getContext(), 4.0f);
        this.mOuterRadius = Utils.dpToPx(getContext(), 4.0f);
        this.mInnerRectF = new RectF();
        this.mSelectedRectF = new RectF();
        this.mSelectedRadius = Utils.dpToPx(getContext(), 6.0f);
        this.disabled = false;
        this.strokeWidth = Utils.dpToPxInt(getContext(), 2.0f);
        this.mOuterPaint = new Paint();
        this.mOuterPaint.setAntiAlias(true);
        this.mOuterPaint.setStyle(Paint.Style.STROKE);
        this.mOuterPaint.setStrokeWidth(this.strokeWidth);
        this.mOuterPaint.setColor(-1);
        this.mInnerPaint = new Paint();
        this.mInnerPaint.setAntiAlias(true);
        this.mSelectedPaint = new Paint();
        this.mSelectedPaint.setAntiAlias(true);
        this.mSelectedPaint.setStyle(Paint.Style.STROKE);
        this.mSelectedPaint.setColor(-13183823);
        float f = this.strokeWidth;
        this.halfStroke = f / 2.0f;
        this.mSelectedPaint.setStrokeWidth(f);
        if (bitmap == null) {
            bitmap = ((BitmapDrawable) ContextCompat.getDrawable(getContext(), R.drawable.ic_color_disabled)).getBitmap();
            this.src = new Rect();
            Rect rect = this.src;
            rect.left = 0;
            rect.top = 0;
            rect.right = bitmap.getWidth();
            this.src.bottom = bitmap.getHeight();
            bitmapPaint = new Paint(1);
            bitmapPaint.setFilterBitmap(true);
        }
    }

    public void setDisabled(boolean z) {
        this.disabled = z;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() == 0) {
            return;
        }
        float f = this.strokeWidth * 2.0f;
        this.mInnerRectF.set(f, f, getWidth() - f, getHeight() - f);
        if (!this.disabled) {
            RectF rectF = this.mInnerRectF;
            float f2 = this.mInnerRadius;
            canvas.drawRoundRect(rectF, f2, f2, this.mInnerPaint);
        } else {
            Bitmap bitmap2 = bitmap;
            if (bitmap2 != null) {
                canvas.drawBitmap(bitmap2, this.src, this.mInnerRectF, bitmapPaint);
            }
        }
        if (this.selected) {
            RectF rectF2 = this.mSelectedRectF;
            float f3 = this.halfStroke;
            rectF2.set(f3, f3, getWidth() - this.halfStroke, getHeight() - this.halfStroke);
            RectF rectF3 = this.mSelectedRectF;
            float f4 = this.mSelectedRadius;
            canvas.drawRoundRect(rectF3, f4, f4, this.mSelectedPaint);
            return;
        }
        if (this.disabled) {
            return;
        }
        RectF rectF4 = this.mInnerRectF;
        float f5 = this.halfStroke;
        rectF4.set(f + f5, f5 + f, (getWidth() - f) - this.halfStroke, (getHeight() - f) - this.halfStroke);
        RectF rectF5 = this.mInnerRectF;
        float f6 = this.mOuterRadius;
        canvas.drawRoundRect(rectF5, f6, f6, this.mOuterPaint);
    }

    public void setColor(int i) {
        this.mInnerPaint.setColor(i);
        invalidate();
    }

    @Override // android.view.View
    public boolean isSelected() {
        return this.selected;
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        this.selected = z;
        invalidate();
    }
}
