package com.narvii.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
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
    public void draw(@NonNull Canvas canvas) {
        for (int i10 = 0; i10 < 8; i10++) {
            float f = this.boudsWidth;
            double d = (((double) i10) * 6.283185307179586d) / 8.0d;
            float fCos = (float) (((double) (f / 2.0f)) + (((double) (f * 0.4f)) * Math.cos(d)));
            float f6 = this.boundsHeight;
            float fSin = (float) (((double) (f6 / 2.0f)) + (((double) (f6 * 0.4f)) * Math.sin(d)));
            canvas.save();
            canvas.translate(fCos, fSin);
            float f7 = this.scales[i10];
            canvas.scale(f7, f7);
            this.mPaint.setAlpha(this.alphas[i10]);
            canvas.drawCircle(0.0f, 0.0f, this.boudsWidth * 0.2f * 0.5f, this.mPaint);
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange int i10) {
        this.alpha = i10;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }

    public List<Animator> getAnimations() {
        ArrayList arrayList = new ArrayList();
        for (final int i10 = 0; i10 < 8; i10++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.3f);
            long j6 = 125 * i10;
            valueAnimatorOfFloat.setStartDelay(j6);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setDuration(1000L);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.SpinDrawable.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SpinDrawable.this.scales[i10] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    SpinDrawable.this.invalidateSelf();
                }
            });
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 180);
            valueAnimatorOfInt.setDuration(1000L);
            valueAnimatorOfInt.setStartDelay(j6);
            valueAnimatorOfInt.setRepeatCount(-1);
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.SpinDrawable.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SpinDrawable.this.alphas[i10] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    SpinDrawable.this.invalidateSelf();
                }
            });
            arrayList.add(valueAnimatorOfFloat);
            arrayList.add(valueAnimatorOfInt);
        }
        return arrayList;
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

    public void setLoadingColor(int i10) {
        Paint paint = this.mPaint;
        if (paint != null) {
            paint.setColor(i10);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.animators == null) {
            this.animators = getAnimations();
        }
        for (int i10 = 0; i10 < this.animators.size(); i10++) {
            this.animators.get(i10).start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.animators == null) {
            return;
        }
        for (int i10 = 0; i10 < this.animators.size(); i10++) {
            this.animators.get(i10).end();
            this.animators.get(i10).removeAllListeners();
        }
    }

    public SpinDrawable() {
        for (int i10 = 0; i10 < 8; i10++) {
            this.scales[i10] = (i10 * 1.0f) / 8.0f;
            this.alphas[i10] = 255;
        }
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(DEFAULT_COLOR);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setFlags(1);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Rect rect2 = new Rect(rect.left, rect.top, rect.right, rect.bottom);
        this.drawBounds = rect2;
        this.boudsWidth = rect2.right - rect2.left;
        this.boundsHeight = rect2.bottom - rect2.top;
    }
}
