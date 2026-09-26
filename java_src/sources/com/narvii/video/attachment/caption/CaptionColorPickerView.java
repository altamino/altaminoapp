package com.narvii.video.attachment.caption;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.mediaeditor.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes11.dex */
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

    @Override // android.view.View
    public boolean isSelected() {
        return this.selected;
    }

    public void setDisabled(boolean z6) {
        this.disabled = z6;
    }

    public CaptionColorPickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public void setColor(int i10) {
        this.mInnerPaint.setColor(i10);
        invalidate();
    }

    @Override // android.view.View
    public void setSelected(boolean z6) {
        this.selected = z6;
        invalidate();
    }

    public CaptionColorPickerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mInnerRadius = Utils.dpToPx(getContext(), 4.0f);
        this.mOuterRadius = Utils.dpToPx(getContext(), 4.0f);
        this.mInnerRectF = new RectF();
        this.mSelectedRectF = new RectF();
        this.mSelectedRadius = Utils.dpToPx(getContext(), 6.0f);
        this.disabled = false;
        this.strokeWidth = Utils.dpToPxInt(getContext(), 2.0f);
        Paint paint = new Paint();
        this.mOuterPaint = paint;
        paint.setAntiAlias(true);
        Paint paint2 = this.mOuterPaint;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.mOuterPaint.setStrokeWidth(this.strokeWidth);
        this.mOuterPaint.setColor(-1);
        Paint paint3 = new Paint();
        this.mInnerPaint = paint3;
        paint3.setAntiAlias(true);
        Paint paint4 = new Paint();
        this.mSelectedPaint = paint4;
        paint4.setAntiAlias(true);
        this.mSelectedPaint.setStyle(style);
        this.mSelectedPaint.setColor(-13183823);
        float f = this.strokeWidth;
        this.halfStroke = f / 2.0f;
        this.mSelectedPaint.setStrokeWidth(f);
        if (bitmap == null) {
            bitmap = ((BitmapDrawable) ContextCompat.getDrawable(getContext(), R.drawable.ic_color_disabled)).getBitmap();
            Rect rect = new Rect();
            this.src = rect;
            rect.left = 0;
            rect.top = 0;
            rect.right = bitmap.getWidth();
            this.src.bottom = bitmap.getHeight();
            Paint paint5 = new Paint(1);
            bitmapPaint = paint5;
            paint5.setFilterBitmap(true);
        }
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
            float f6 = this.mInnerRadius;
            canvas.drawRoundRect(rectF, f6, f6, this.mInnerPaint);
        } else {
            Bitmap bitmap2 = bitmap;
            if (bitmap2 != null) {
                canvas.drawBitmap(bitmap2, this.src, this.mInnerRectF, bitmapPaint);
            }
        }
        if (this.selected) {
            RectF rectF2 = this.mSelectedRectF;
            float f7 = this.halfStroke;
            rectF2.set(f7, f7, getWidth() - this.halfStroke, getHeight() - this.halfStroke);
            RectF rectF3 = this.mSelectedRectF;
            float f10 = this.mSelectedRadius;
            canvas.drawRoundRect(rectF3, f10, f10, this.mSelectedPaint);
            return;
        }
        if (!this.disabled) {
            RectF rectF4 = this.mInnerRectF;
            float f11 = this.halfStroke;
            rectF4.set(f + f11, f11 + f, (getWidth() - f) - this.halfStroke, (getHeight() - f) - this.halfStroke);
            RectF rectF5 = this.mInnerRectF;
            float f12 = this.mOuterRadius;
            canvas.drawRoundRect(rectF5, f12, f12, this.mOuterPaint);
        }
    }
}
