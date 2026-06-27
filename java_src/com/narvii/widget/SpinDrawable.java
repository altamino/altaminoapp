package com.narvii.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class SpinDrawable extends Drawable implements Animatable {
    public static final int COUNT_CIRCLE = 8;
    public static final int DEFAULT_COLOR = -16591751;
    public static final int DURATION = 1000;
    public static final float RATIO_CIRCLE = 0.2f;
    private int alpha;
    List<Animator> animators;
    float boudsWidth;
    float boundsHeight;
    private boolean isRunning;
    Paint mPaint;
    Rect drawBounds = new Rect();
    float[] scales = new float[8];
    int[] alphas = new int[8];

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public SpinDrawable() {
        for (int i = 0; i < 8; i++) {
            this.scales[i] = (i * 1.0f) / 8.0f;
            this.alphas[i] = 255;
        }
        this.mPaint = new Paint();
        this.mPaint.setColor(DEFAULT_COLOR);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setFlags(1);
    }

    public void setLoadingColor(int i) {
        Paint paint = this.mPaint;
        if (paint != null) {
            paint.setColor(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.drawBounds = new Rect(rect.left, rect.top, rect.right, rect.bottom);
        Rect rect2 = this.drawBounds;
        this.boudsWidth = rect2.right - rect2.left;
        this.boundsHeight = rect2.bottom - rect2.top;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        for (int i = 0; i < 8; i++) {
            float f = this.boudsWidth;
            double d = f / 2.0f;
            double d2 = f * 0.4f;
            double d3 = i;
            Double.isNaN(d3);
            double d4 = (d3 * 6.283185307179586d) / 8.0d;
            double dCos = Math.cos(d4);
            Double.isNaN(d2);
            Double.isNaN(d);
            float f2 = (float) (d + (d2 * dCos));
            float f3 = this.boundsHeight;
            double d5 = f3 / 2.0f;
            double d6 = f3 * 0.4f;
            double dSin = Math.sin(d4);
            Double.isNaN(d6);
            Double.isNaN(d5);
            canvas.save();
            canvas.translate(f2, (float) (d5 + (d6 * dSin)));
            float[] fArr = this.scales;
            canvas.scale(fArr[i], fArr[i]);
            this.mPaint.setAlpha(this.alphas[i]);
            canvas.drawCircle(0.0f, 0.0f, this.boudsWidth * 0.2f * 0.5f, this.mPaint);
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.animators == null) {
            this.animators = getAnimations();
        }
        for (int i = 0; i < this.animators.size(); i++) {
            this.animators.get(i).start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.animators == null) {
            return;
        }
        for (int i = 0; i < this.animators.size(); i++) {
            this.animators.get(i).end();
            this.animators.get(i).removeAllListeners();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        List<Animator> list = this.animators;
        if (list == null) {
            return false;
        }
        Iterator<Animator> it = list.iterator();
        if (it.hasNext()) {
            return it.next().isRunning();
        }
        return false;
    }

    public List<Animator> getAnimations() {
        ArrayList arrayList = new ArrayList();
        for (final int i = 0; i < 8; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.3f);
            long j = 125 * i;
            valueAnimatorOfFloat.setStartDelay(j);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setDuration(1000L);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.SpinDrawable.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SpinDrawable.this.scales[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    SpinDrawable.this.invalidateSelf();
                }
            });
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 180);
            valueAnimatorOfInt.setDuration(1000L);
            valueAnimatorOfInt.setStartDelay(j);
            valueAnimatorOfInt.setRepeatCount(-1);
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.SpinDrawable.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SpinDrawable.this.alphas[i] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    SpinDrawable.this.invalidateSelf();
                }
            });
            arrayList.add(valueAnimatorOfFloat);
            arrayList.add(valueAnimatorOfInt);
        }
        return arrayList;
    }
}
