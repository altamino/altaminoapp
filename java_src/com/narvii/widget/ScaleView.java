package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class ScaleView extends LinearLayout {
    private float scale;

    public ScaleView(Context context, AttributeSet attributeSet) {
        int i;
        super(context, attributeSet);
        this.scale = 1.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScaleView);
        this.scale = typedArrayObtainStyledAttributes.getFloat(R.styleable.ScaleView_scalef, 1.0f);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ScaleView_designScreenWidth, 0);
        if (dimensionPixelSize > 0 && (i = context.getResources().getDisplayMetrics().widthPixels) < dimensionPixelSize) {
            this.scale = i / dimensionPixelSize;
        }
        typedArrayObtainStyledAttributes.recycle();
        setClipToPadding(false);
    }

    public float getScale() {
        return this.scale;
    }

    public void setScale(float f) {
        this.scale = f;
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        float f = this.scale;
        if (f != 1.0f) {
            i = View.MeasureSpec.makeMeasureSpec((int) (size / f), mode);
            i2 = View.MeasureSpec.makeMeasureSpec((int) (size2 / this.scale), mode2);
        }
        super.onMeasure(i, i2);
        if (this.scale != 1.0f) {
            setMeasuredDimension((int) (getMeasuredWidth() * this.scale), (int) (getMeasuredHeight() * this.scale));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f = this.scale;
        if (f != 1.0f) {
            i4 = ((int) ((i4 - i2) / f)) + i2;
            i3 = ((int) ((i3 - i) / f)) + i;
        }
        int i5 = i3;
        int i6 = i4;
        if (Build.VERSION.SDK_INT >= 18) {
            super.onLayout(z, i, i2, i5, i6);
            return;
        }
        int bottom = getBottom();
        int right = getRight();
        setBottom(i6);
        setRight(i5);
        super.onLayout(z, i, i2, i5, i6);
        setBottom(bottom);
        setRight(right);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.scale != 1.0f) {
            canvas.save();
            float f = this.scale;
            canvas.scale(f, f);
        }
        super.dispatchDraw(canvas);
        if (this.scale != 1.0f) {
            canvas.restore();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEventObtain;
        if (this.scale != 1.0f) {
            motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.setLocation(motionEvent.getX() / this.scale, motionEvent.getY() / this.scale);
        } else {
            motionEventObtain = motionEvent;
        }
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEventObtain);
        if (motionEventObtain != motionEvent) {
            motionEventObtain.recycle();
        }
        return zDispatchTouchEvent;
    }
}
