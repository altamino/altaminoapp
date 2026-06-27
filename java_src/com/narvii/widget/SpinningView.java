package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.narvii.lib.R;

/* loaded from: classes3.dex */
public class SpinningView extends View {
    int color;
    Paint paint;
    RectF rectf;
    int size;
    int style;
    int time;

    public SpinningView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int[] iArr = R.styleable.SpinningView;
        int i = R.style.SpinningView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i);
        this.style = typedArrayObtainStyledAttributes.getInteger(R.styleable.SpinningView_spinStyle, 0);
        this.size = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SpinningView_spinSize, 0);
        this.color = typedArrayObtainStyledAttributes.getColor(R.styleable.SpinningView_spinColor, -7829368);
        this.time = typedArrayObtainStyledAttributes.getInteger(R.styleable.SpinningView_spinTime, 600);
        typedArrayObtainStyledAttributes.recycle();
        this.rectf = new RectF();
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
    }

    public void setSpinColor(int i) {
        this.color = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int iMin;
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i = this.style;
        if (i == 0 || i == 1) {
            int i2 = this.size;
            int i3 = i2 == 0 ? width / 9 : i2 / 9;
            this.paint.setStyle(Paint.Style.FILL);
            this.paint.setColor(this.color);
            canvas.save();
            canvas.translate(width / 2, height / 2);
            double d = jCurrentAnimationTimeMillis;
            double d2 = this.time;
            Double.isNaN(d);
            Double.isNaN(d2);
            float fSin = (float) Math.sin(((d / d2) + 0.0d) * 3.141592653589793d);
            float f = (-i3) * 3.0f;
            float f2 = i3;
            canvas.drawCircle(f, 0.0f, fSin * f2, this.paint);
            double d3 = this.time;
            Double.isNaN(d);
            Double.isNaN(d3);
            canvas.drawCircle(0.0f, 0.0f, ((float) Math.sin(((d / d3) - 0.3d) * 3.141592653589793d)) * f2, this.paint);
            double d4 = this.time;
            Double.isNaN(d);
            Double.isNaN(d4);
            canvas.drawCircle(3.0f * f2, 0.0f, f2 * ((float) Math.sin(((d / d4) - 0.6d) * 3.141592653589793d)), this.paint);
            canvas.restore();
        } else if (i == 2) {
            int i4 = this.size;
            if (i4 == 0) {
                iMin = Math.min(width, height) / 2;
            } else {
                iMin = i4 / 2;
            }
            int i5 = iMin;
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth((i5 * 15) / 100);
            this.paint.setStrokeCap(Paint.Cap.ROUND);
            this.paint.setColor(this.color);
            canvas.save();
            canvas.translate(width / 2, height / 2);
            int i6 = (i5 * 85) / 100;
            RectF rectF = this.rectf;
            float f3 = -i6;
            rectF.left = f3;
            float f4 = i6;
            rectF.right = f4;
            rectF.top = f3;
            rectF.bottom = f4;
            double d5 = jCurrentAnimationTimeMillis;
            Double.isNaN(d5);
            double d6 = d5 * 180.0d;
            double d7 = this.time;
            Double.isNaN(d7);
            canvas.drawArc(rectF, (float) ((d6 / d7) % 360.0d), 60.0f, false, this.paint);
            RectF rectF2 = this.rectf;
            double d8 = this.time;
            Double.isNaN(d8);
            canvas.drawArc(rectF2, (float) (((d6 / d8) + 180.0d) % 360.0d), 60.0f, false, this.paint);
            int i7 = (i5 * 60) / 100;
            RectF rectF3 = this.rectf;
            float f5 = -i7;
            rectF3.left = f5;
            float f6 = i7;
            rectF3.right = f6;
            rectF3.top = f5;
            rectF3.bottom = f6;
            Double.isNaN(d5);
            double d9 = d5 * 210.0d;
            double d10 = this.time;
            Double.isNaN(d10);
            canvas.drawArc(rectF3, (float) ((d9 / d10) % 360.0d), 60.0f, false, this.paint);
            RectF rectF4 = this.rectf;
            double d11 = this.time;
            Double.isNaN(d11);
            canvas.drawArc(rectF4, (float) (((d9 / d11) + 180.0d) % 360.0d), 60.0f, false, this.paint);
            canvas.restore();
        }
        invalidate();
    }
}
