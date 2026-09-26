package com.narvii.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class SemiProgressDrawable extends Drawable implements Animatable {
    private static final int DURATION = 1000;
    private ValueAnimator animator = new ValueAnimator();
    private int color;
    private Context context;
    private float curProgress;
    private Paint paint;
    private int strokeWidth;

    private void setupAnimator() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setRepeatCount(-1);
        this.animator.setDuration(1000L);
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.SemiProgressDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SemiProgressDrawable.this.curProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SemiProgressDrawable.this.invalidateSelf();
            }
        });
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    private void init() {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.paint.setFlags(1);
        this.paint.setColor(this.color);
        this.paint.setStrokeWidth(this.strokeWidth);
        setupAnimator();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.animator.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.paint.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.animator.cancel();
        this.curProgress = 0.0f;
        invalidateSelf();
    }

    public SemiProgressDrawable(Context context, int i10, int i11) {
        this.context = context;
        this.color = i10;
        this.strokeWidth = i11;
        init();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        canvas.rotate(this.curProgress * 360.0f, getBounds().exactCenterX(), getBounds().exactCenterY());
        int i10 = this.strokeWidth;
        canvas.drawArc(new RectF(i10, i10, getBounds().right - this.strokeWidth, getBounds().bottom - this.strokeWidth), 0.0f, 270.0f, false, this.paint);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (isRunning()) {
            return;
        }
        this.animator.start();
    }
}
