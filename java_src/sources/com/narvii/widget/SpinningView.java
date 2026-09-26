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

/* JADX INFO: loaded from: classes8.dex */
public class SpinningView extends View {
    int color;
    Paint paint;
    RectF rectf;
    int size;
    int style;
    int time;

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i10 = this.style;
        if (i10 == 0 || i10 == 1) {
            int i11 = this.size;
            int i12 = i11 == 0 ? width / 9 : i11 / 9;
            this.paint.setStyle(Paint.Style.FILL);
            this.paint.setColor(this.color);
            canvas.save();
            canvas.translate(width / 2, height / 2);
            double d = jCurrentAnimationTimeMillis;
            float f = (-i12) * 3.0f;
            float f6 = i12;
            canvas.drawCircle(f, 0.0f, ((float) Math.sin(((d / ((double) this.time)) + com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE) * 3.141592653589793d)) * f6, this.paint);
            canvas.drawCircle(0.0f, 0.0f, ((float) Math.sin(((d / ((double) this.time)) - 0.3d) * 3.141592653589793d)) * f6, this.paint);
            canvas.drawCircle(3.0f * f6, 0.0f, f6 * ((float) Math.sin(((d / ((double) this.time)) - 0.6d) * 3.141592653589793d)), this.paint);
            canvas.restore();
        } else if (i10 == 2) {
            int i13 = this.size;
            int iMin = i13 == 0 ? Math.min(width, height) / 2 : i13 / 2;
            this.paint.setStyle(Paint.Style.STROKE);
            this.paint.setStrokeWidth((iMin * 15) / 100);
            this.paint.setStrokeCap(Paint.Cap.ROUND);
            this.paint.setColor(this.color);
            canvas.save();
            canvas.translate(width / 2, height / 2);
            int i14 = (iMin * 85) / 100;
            RectF rectF = this.rectf;
            float f7 = -i14;
            rectF.left = f7;
            float f10 = i14;
            rectF.right = f10;
            rectF.top = f7;
            rectF.bottom = f10;
            double d2 = jCurrentAnimationTimeMillis;
            double d6 = d2 * 180.0d;
            canvas.drawArc(rectF, (float) ((d6 / ((double) this.time)) % 360.0d), 60.0f, false, this.paint);
            canvas.drawArc(this.rectf, (float) (((d6 / ((double) this.time)) + 180.0d) % 360.0d), 60.0f, false, this.paint);
            int i15 = (iMin * 60) / 100;
            RectF rectF2 = this.rectf;
            float f11 = -i15;
            rectF2.left = f11;
            float f12 = i15;
            rectF2.right = f12;
            rectF2.top = f11;
            rectF2.bottom = f12;
            double d7 = d2 * 210.0d;
            canvas.drawArc(rectF2, (float) ((d7 / ((double) this.time)) % 360.0d), 60.0f, false, this.paint);
            canvas.drawArc(this.rectf, (float) (((d7 / ((double) this.time)) + 180.0d) % 360.0d), 60.0f, false, this.paint);
            canvas.restore();
        }
        invalidate();
    }

    public void setSpinColor(int i10) {
        this.color = i10;
        invalidate();
    }

    public SpinningView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int[] iArr = R.styleable.SpinningView;
        int i10 = R.style.SpinningView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, i10);
        this.style = typedArrayObtainStyledAttributes.getInteger(R.styleable.SpinningView_spinStyle, 0);
        this.size = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SpinningView_spinSize, 0);
        this.color = typedArrayObtainStyledAttributes.getColor(R.styleable.SpinningView_spinColor, -7829368);
        this.time = typedArrayObtainStyledAttributes.getInteger(R.styleable.SpinningView_spinTime, 600);
        typedArrayObtainStyledAttributes.recycle();
        this.rectf = new RectF();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
    }
}
