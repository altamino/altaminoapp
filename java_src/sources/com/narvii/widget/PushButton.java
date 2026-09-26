package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public class PushButton extends FrameLayout {
    int color;
    int color2;
    protected float cornerRadius;
    private boolean isForcePressed;
    int liftDistance;
    int liftWider;
    Paint paint;
    Rect rect;
    RectF rectf;
    Drawable shadow;
    Rect shadowPadding;
    boolean showShadow;

    public void setColor(int i10) {
        float[] fArr = new float[3];
        Color.colorToHSV(i10, fArr);
        fArr[2] = fArr[2] * 0.8f;
        setColor(i10, Color.HSVToColor(fArr));
    }

    public void setForcePressed(boolean z6) {
        this.isForcePressed = z6;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        Rect rect = this.shadowPadding;
        super.onLayout(z6, i10, i11, Math.max(i10, (i12 - rect.left) - rect.right), Math.max(i11, (i13 - this.shadowPadding.bottom) - this.liftDistance));
        int childCount = getChildCount();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                childAt.layout(childAt.getLeft() + this.shadowPadding.left, childAt.getTop(), childAt.getRight() + this.shadowPadding.left, childAt.getBottom());
            }
        }
    }

    protected void setContentPaintStyle(Paint paint) {
        paint.setColor(this.color);
    }

    protected void setShadowPaintStyle(Paint paint) {
        paint.setColor(this.color2);
    }

    public PushButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClipToPadding(false);
        setWillNotDraw(false);
        this.shadow = context.getResources().getDrawable(R.drawable.push_button_shadow);
        Rect rect = new Rect();
        this.shadowPadding = rect;
        this.shadow.getPadding(rect);
        this.cornerRadius = context.getResources().getDimension(R.dimen.push_button_corner_radius);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PushButton);
        this.liftDistance = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.PushButton_pushButtonLift, context.getResources().getDimensionPixelOffset(R.dimen.push_button_lift_distance));
        this.liftWider = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.PushButton_pushButtonWider, 0);
        this.showShadow = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PushButton_showShadow, true);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.PushButton_pushButtonColor, 0);
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.PushButton_pushButtonColorDark, 0);
        float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.PushButton_pushShadowAlpha, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        if (f < 1.0f) {
            this.shadow.setAlpha((int) (f * 255.0f));
        }
        this.rect = new Rect();
        this.rectf = new RectF();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        if (color != 0) {
            if (color2 != 0) {
                setColor(color, color2);
            } else {
                setColor(color);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z6) {
        super.dispatchSetPressed(z6);
        invalidate();
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j6) {
        int iSave;
        if (isPressed()) {
            iSave = canvas.save();
            canvas.translate(0.0f, this.liftDistance);
        } else {
            iSave = -1;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j6);
        if (iSave != -1) {
            canvas.restoreToCount(iSave);
        }
        return zDrawChild;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        boolean zIsPressed = isPressed();
        if (!zIsPressed && this.showShadow) {
            Rect rect = this.rect;
            rect.left = 0;
            rect.top = this.liftDistance - this.shadowPadding.top;
            rect.right = getWidth();
            this.rect.bottom = getHeight();
            this.shadow.setBounds(this.rect);
            this.shadow.draw(canvas);
        }
        RectF rectF = this.rectf;
        rectF.left = this.shadowPadding.left;
        rectF.top = 0.0f;
        rectF.right = getWidth() - this.shadowPadding.right;
        RectF rectF2 = this.rectf;
        int height = getHeight() - this.shadowPadding.bottom;
        int i10 = this.liftDistance;
        rectF2.bottom = height - i10;
        this.rectf.offset(0.0f, i10);
        if (!zIsPressed && !this.isForcePressed) {
            setShadowPaintStyle(this.paint);
            RectF rectF3 = this.rectf;
            float f = this.cornerRadius;
            canvas.drawRoundRect(rectF3, f, f, this.paint);
            this.rectf.offset(0.0f, -this.liftDistance);
            this.rectf.inset(-this.liftWider, 0.0f);
            setContentPaintStyle(this.paint);
            RectF rectF4 = this.rectf;
            float f6 = this.cornerRadius;
            canvas.drawRoundRect(rectF4, f6, f6, this.paint);
            return;
        }
        setContentPaintStyle(this.paint);
        RectF rectF5 = this.rectf;
        float f7 = this.cornerRadius;
        canvas.drawRoundRect(rectF5, f7, f7, this.paint);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode == 1073741824 || mode == Integer.MIN_VALUE) {
            Rect rect = this.shadowPadding;
            size = Math.max(0, (size - rect.left) - rect.right);
        }
        if (mode2 == 1073741824 || mode2 == Integer.MIN_VALUE) {
            size2 = Math.max(0, (size2 - this.shadowPadding.bottom) - this.liftDistance);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, mode), View.MeasureSpec.makeMeasureSpec(size2, mode2));
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (mode == 1073741824 || mode == Integer.MIN_VALUE) {
            Rect rect2 = this.shadowPadding;
            measuredWidth += rect2.left + rect2.right;
        }
        if (mode2 == 1073741824 || mode2 == Integer.MIN_VALUE) {
            measuredHeight += this.shadowPadding.bottom + this.liftDistance;
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    public void setPressed(boolean z6) {
        super.setPressed(z6);
    }

    public void setColor(int i10, int i11) {
        this.color = i10;
        this.color2 = i11;
        invalidate();
    }
}
