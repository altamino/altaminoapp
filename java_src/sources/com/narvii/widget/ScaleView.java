package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes7.dex */
public class ScaleView extends LinearLayout {
    private float scale;

    public float getScale() {
        return this.scale;
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

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        float f = this.scale;
        if (f != 1.0f) {
            i13 = ((int) ((i13 - i11) / f)) + i11;
            i12 = ((int) ((i12 - i10) / f)) + i10;
        }
        super.onLayout(z6, i10, i11, i12, i13);
    }

    public void setScale(float f) {
        this.scale = f;
        requestLayout();
    }

    public ScaleView(Context context, AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet);
        this.scale = 1.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScaleView);
        this.scale = typedArrayObtainStyledAttributes.getFloat(R.styleable.ScaleView_scalef, 1.0f);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ScaleView_designScreenWidth, 0);
        if (dimensionPixelSize > 0 && (i10 = context.getResources().getDisplayMetrics().widthPixels) < dimensionPixelSize) {
            this.scale = i10 / dimensionPixelSize;
        }
        typedArrayObtainStyledAttributes.recycle();
        setClipToPadding(false);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        float f = this.scale;
        if (f != 1.0f) {
            i10 = View.MeasureSpec.makeMeasureSpec((int) (size / f), mode);
            i11 = View.MeasureSpec.makeMeasureSpec((int) (size2 / this.scale), mode2);
        }
        super.onMeasure(i10, i11);
        if (this.scale != 1.0f) {
            setMeasuredDimension((int) (getMeasuredWidth() * this.scale), (int) (getMeasuredHeight() * this.scale));
        }
    }
}
