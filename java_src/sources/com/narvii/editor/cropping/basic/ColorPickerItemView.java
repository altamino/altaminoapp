package com.narvii.editor.cropping.basic;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes6.dex */
public class ColorPickerItemView extends View {
    private static final int INNER_RADIUS = 2;
    private static final int OUTER_RADIUS = 4;
    private static final int SELECTED_RADIUS = 6;
    private Paint mInnerPaint;
    private float mInnerRadius;
    private RectF mInnerRectF;
    private Paint mOuterPaint;
    private float mOuterRadius;
    private RectF mOuterRectF;
    private Paint mSelectedPaint;
    private float mSelectedRadius;
    private RectF mSelectedRectF;
    private boolean selected;

    public ColorPickerItemView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public boolean isSelected() {
        return this.selected;
    }

    public ColorPickerItemView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public void setColor(String str) {
        this.mInnerPaint.setColor(Color.parseColor(str));
        invalidate();
    }

    @Override // android.view.View
    public void setSelected(boolean z6) {
        this.selected = z6;
        invalidate();
    }

    public ColorPickerItemView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mInnerRadius = Utils.dpToPx(getContext(), 2.0f);
        this.mOuterRadius = Utils.dpToPx(getContext(), 4.0f);
        this.mInnerRectF = new RectF();
        this.mOuterRectF = new RectF();
        this.mSelectedRectF = new RectF();
        this.mSelectedRadius = Utils.dpToPx(getContext(), 6.0f);
        Paint paint = new Paint();
        this.mOuterPaint = paint;
        paint.setAntiAlias(true);
        this.mOuterPaint.setColor(-1);
        Paint paint2 = new Paint();
        this.mInnerPaint = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.mSelectedPaint = paint3;
        paint3.setAntiAlias(true);
        this.mSelectedPaint.setColor(-13183823);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() == 0) {
            return;
        }
        float fDpToPx = Utils.dpToPx(getContext(), 4.0f);
        float f = fDpToPx / 2.0f;
        if (this.selected) {
            this.mOuterPaint.setColor(Color.parseColor("#2A2A2A"));
            this.mSelectedRectF.set(0.0f, 0.0f, getWidth(), getHeight());
            RectF rectF = this.mSelectedRectF;
            float f6 = this.mSelectedRadius;
            canvas.drawRoundRect(rectF, f6, f6, this.mSelectedPaint);
        } else {
            this.mOuterPaint.setColor(-1);
        }
        this.mInnerRectF.set(fDpToPx, fDpToPx, getWidth() - fDpToPx, getHeight() - fDpToPx);
        this.mOuterRectF.set(f, f, getWidth() - f, getHeight() - f);
        RectF rectF2 = this.mOuterRectF;
        float f7 = this.mOuterRadius;
        canvas.drawRoundRect(rectF2, f7, f7, this.mOuterPaint);
        RectF rectF3 = this.mInnerRectF;
        float f10 = this.mInnerRadius;
        canvas.drawRoundRect(rectF3, f10, f10, this.mInnerPaint);
    }
}
