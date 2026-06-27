package com.narvii.editor.cropping.basic;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
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

    public ColorPickerItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public ColorPickerItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInnerRadius = Utils.dpToPx(getContext(), 2.0f);
        this.mOuterRadius = Utils.dpToPx(getContext(), 4.0f);
        this.mInnerRectF = new RectF();
        this.mOuterRectF = new RectF();
        this.mSelectedRectF = new RectF();
        this.mSelectedRadius = Utils.dpToPx(getContext(), 6.0f);
        this.mOuterPaint = new Paint();
        this.mOuterPaint.setAntiAlias(true);
        this.mOuterPaint.setColor(-1);
        this.mInnerPaint = new Paint();
        this.mInnerPaint.setAntiAlias(true);
        this.mSelectedPaint = new Paint();
        this.mSelectedPaint.setAntiAlias(true);
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
            float f2 = this.mSelectedRadius;
            canvas.drawRoundRect(rectF, f2, f2, this.mSelectedPaint);
        } else {
            this.mOuterPaint.setColor(-1);
        }
        this.mInnerRectF.set(fDpToPx, fDpToPx, getWidth() - fDpToPx, getHeight() - fDpToPx);
        this.mOuterRectF.set(f, f, getWidth() - f, getHeight() - f);
        RectF rectF2 = this.mOuterRectF;
        float f3 = this.mOuterRadius;
        canvas.drawRoundRect(rectF2, f3, f3, this.mOuterPaint);
        RectF rectF3 = this.mInnerRectF;
        float f4 = this.mInnerRadius;
        canvas.drawRoundRect(rectF3, f4, f4, this.mInnerPaint);
    }

    public void setColor(String str) {
        this.mInnerPaint.setColor(Color.parseColor(str));
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
